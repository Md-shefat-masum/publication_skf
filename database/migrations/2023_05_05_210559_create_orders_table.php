<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->id();

            $table->bigInteger("user_id")->unsigned()->nullable();
            $table->bigInteger("customer_id")->unsigned()->nullable();
            $table->bigInteger("address_id")->unsigned()->nullable();
            $table->string("invoice_id", 100)->nullable();
            $table->timestamp("invoice_date")->nullable();
            $table->string("order_type", 20)->nullable()->comment("quotation, pos order, ecomerce order");
            $table->string("order_status", 20)->default("pending")->comment("pending, accepted, processing, delevered, canceled");
            $table->bigInteger("order_coupon_id")->unsigned()->nullable();

            $table->float("sub_total")->default(0);
            $table->float("discount")->default(0);
            $table->float("coupon_discount")->default(0);
            $table->float("delivery_charge")->default(0);
            $table->float("variant_price")->default(0);
            $table->float("total_price")->default(0);

            $table->string("payment_status", 20)->default("pending")->comment("pending, partially paid, paid");
            $table->string("delivery_method", 20)->default("pickup");

            $table->bigInteger('creator')->unsigned()->nullable();
            $table->string('slug', 50)->nullable();
            $table->tinyInteger('status')->unsigned()->default(1);

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('orders');
    }
}

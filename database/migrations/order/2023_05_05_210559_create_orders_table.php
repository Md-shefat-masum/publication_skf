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
            $table->bigInteger("sales_id")->unsigned()->nullable();
            $table->bigInteger("backup_sales_id")->unsigned()->nullable();

            $table->timestamp("invoice_date")->nullable();
            $table->enum("order_type", ["quotation", "invoice", "ecommerce"])->nullable()->comment("quotation, invoice, ecomerce order");
            $table->enum("order_status", ["pending", "accepted", "processing", "delivered", "canceled"])->default("pending")->comment("pending, accepted, processing, delivered, canceled");
            $table->bigInteger("order_coupon_id")->unsigned()->nullable();

            $table->double("sub_total")->unsigned()->default(0);
            $table->float("delivery_charge")->unsigned()->default(0);
            $table->float("bank_charge")->unsigned()->default(0);
            $table->float("variant_price")->unsigned()->default(0);

            $table->float("discount")->unsigned()->default(0);
            $table->float("coupon_discount")->unsigned()->default(0);

            $table->double("total_price")->unsigned()->default(0);
            $table->double("total_paid")->unsigned()->default(0);

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

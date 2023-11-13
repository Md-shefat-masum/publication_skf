<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrderDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('order_details', function (Blueprint $table) {
            $table->id();

            $table->bigInteger("order_id")->unsigned()->nullable();
            $table->bigInteger("customer_id")->unsigned()->nullable();
            $table->bigInteger("user_id")->unsigned()->nullable();
            $table->bigInteger("product_id")->unsigned()->nullable();
            $table->string("product_name", 100)->nullable();
            $table->string("product_code", 100)->nullable();

            $table->double("product_price")->nullable();
            $table->float("discount_percent")->nullable();
            $table->double("discount_price")->nullable();
            $table->float("sales_price")->nullable();

            $table->integer("qty")->nullable();

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
        Schema::dropIfExists('order_details');
    }
}

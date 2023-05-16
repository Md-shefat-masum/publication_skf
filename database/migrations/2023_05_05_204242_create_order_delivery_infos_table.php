<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrderDeliveryInfosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('order_delivery_infos', function (Blueprint $table) {
            $table->id();

            $table->bigInteger("order_id")->unsigned()->nullable();
            $table->bigInteger("user_id")->unsigned()->nullable();
            $table->bigInteger("customer_id")->unsigned()->nullable();
            $table->string("delivery_method", 100)->nullable();
            $table->float("delivery_cost")->unsigned()->nullable();
            $table->string("courier_name", 150)->nullable()->comment("courier name: sundarban, ali express");
            $table->float("address_id")->unsigned()->nullable()->comment("address id type billing from address table"); // address billing address
            $table->float("location_id")->unsigned()->nullable()->comment("address id type shipping from addresses"); // address shipping address

            $table->bigInteger('creator')->nullable();
            $table->string('slug', 50)->nullable();
            $table->tinyInteger('status')->default(1);

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
        Schema::dropIfExists('order_delivery_infos');
    }
}

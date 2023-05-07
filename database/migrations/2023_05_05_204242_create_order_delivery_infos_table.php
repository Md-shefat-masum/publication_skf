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
            $table->string("delivery_method", 100)->nullable();
            $table->double("delivery_cost")->nullable();
            $table->string("curieer_name", 255)->nullable();
            $table->text("address")->nullable();
            $table->text("user_location")->nullable();

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

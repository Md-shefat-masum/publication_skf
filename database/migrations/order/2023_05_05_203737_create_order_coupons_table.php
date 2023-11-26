<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrderCouponsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('order_coupons', function (Blueprint $table) {
            $table->id();

            $table->string('title',50)->nullable();
            $table->string('coupon_code',30)->nullable();
            $table->float('discount_amount')->unsigned()->default(0);
            $table->float('flat_amount')->unsigned()->default(0);
            $table->dateTime('expire_date')->nullable();

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
        Schema::dropIfExists('order_coupons');
    }
}

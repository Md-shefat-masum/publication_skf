<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrderPaymentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('order_payments', function (Blueprint $table) {
            $table->id();

            $table->bigInteger("order_id")->unsigned()->nullable();
            $table->bigInteger("user_id")->unsigned()->nullable();
            $table->bigInteger("customer_id")->unsigned()->nullable();
            $table->bigInteger("account_logs_id")->unsigned()->nullable();
            $table->string("payment_method", 40)->nullable();
            $table->string("number", 20)->nullable();
            $table->string("account_no", 100)->nullable();
            $table->string("trx_id", 100)->nullable();
            $table->double("amount")->unsigned()->default(0);
            $table->date('date')->nullable();
            $table->tinyInteger("approved")->unsigned()->default(0);

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
        Schema::dropIfExists('order_payments');
    }
}

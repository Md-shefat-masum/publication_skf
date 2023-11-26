<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrderPaymentAttachmentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('order_payment_attachments', function (Blueprint $table) {
            $table->id();

            $table->bigInteger('order_payment_id')->nullable();
            $table->string('file',100)->nullable();

            $table->bigInteger('creator')->unsigned()->nullable();
            $table->string('slug',50)->nullable();
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
        Schema::dropIfExists('order_payment_attachments');
    }
}

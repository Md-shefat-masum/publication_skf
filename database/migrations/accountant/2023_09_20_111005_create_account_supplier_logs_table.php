<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAccountSupplierLogsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('account_supplier_logs', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('account_log_id')->unsigned()->nullable();
            $table->bigInteger('supplier_id')->unsigned()->nullable();
            $table->enum('supplier_type',['paper','binding','print','designer'])->nullable();
            $table->enum('payment_type',['opening','bill','payment'])->nullable();
            $table->string('bill',100)->nullable()->comment('bill no from supplier invoice.');
            $table->float('amount')->nullable();
            $table->string('name',200)->nullable();
            $table->text('description')->nullable();
            $table->date('date')->nullable();
            $table->string('attachment',100)->nullable();
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
        Schema::dropIfExists('account_supplier_logs');
    }
}

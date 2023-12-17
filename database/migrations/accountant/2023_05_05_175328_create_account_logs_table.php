<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAccountLogsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('account_logs', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('income_id')->nullable();
            $table->bigInteger('expense_id')->nullable();

            $table->timestamp('date')->nullable();
            $table->string('name',200)->nullable();
            $table->bigInteger('customer_id')->nullable();
            $table->string('related_table',40)->nullable()
                ->comment('table name of customers, users or account customer or suppliers');
            $table->float('amount')->nullable();

            $table->bigInteger('category_id')->nullable();
            $table->bigInteger('account_id')->default(1);
            $table->bigInteger('account_number_id')->nullable();
            $table->string('trx_id',100)->nullable();
            $table->string('receipt_no',100)->nullable();

            $table->tinyInteger('is_expense')->default(0);
            $table->tinyInteger('is_income')->default(0);

            $table->text('description')->nullable();
            $table->text('reference')->nullable()
                ->comment('reference for attachment, such as where is office rent receipt. or where is the related vouchers');

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
        Schema::dropIfExists('account_logs');
    }
}

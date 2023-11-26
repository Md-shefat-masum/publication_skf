<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTableUpdateLogsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('table_update_logs', function (Blueprint $table) {
            $table->id();
            $table->string("table_name", 45)->nullable();
            $table->bigInteger("table_col_id")->unsigned()->nullable()->comment("eg: from products table id:100 price is updted");
            $table->string("table_col_name", 45)->nullable()->comment("eg: price collumn");
            $table->string("previous_value", 100)->nullable()->comment("eg: only small values, price prev value: 120. updated value 150");

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
        Schema::dropIfExists('table_update_logs');
    }
}

<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductionStatusesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('production_statuses', function (Blueprint $table) {
            $table->id();
            $table->bigInteger("production_id")->unsigned()->nullable();
            $table->string("status",20)->nullable()->comment("planning, designing, prototyping, printing, binding, complete");
            $table->text("description")->nullable()->comment("status related description");
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
        Schema::dropIfExists('production_statuses');
    }
}

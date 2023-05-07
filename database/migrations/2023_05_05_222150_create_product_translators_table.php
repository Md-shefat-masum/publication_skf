<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductTranslatorsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('product_translators', function (Blueprint $table) {
            $table->id();
            $table->string("name", 100)->nullable();
            $table->string("designation", 45)->nullable();
            $table->string("address", 45)->nullable();
            // phone number will come from phone_numbers table
            $table->string("image", 45)->nullable();
            $table->longText("description")->nullable()->comment("translator bio");

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
        Schema::dropIfExists('product_translators');
    }
}

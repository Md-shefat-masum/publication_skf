<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductOffersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('product_offers', function (Blueprint $table) {
            $table->id();
            $table->string("name", 100)->nullable();
            $table->string("start_date", 100)->nullable();
            $table->string("end_date", 100)->nullable();
            $table->double("subtotal")->default(0.00)->comment("will be calculated dynamically using the prices of linked products");
            $table->integer("parcent_discount")->default(0)->comment("5% discount");
            $table->integer("flat_discount")->default(0)->comment("30 tk discount");
            $table->double("total")->default(0.00)->comment("will be calculated dynamically using the prices of linked products");
            $table->string("image", 100)->nullable()->comment("offer / package image");
            $table->text("description")->nullable()->comment("offer description");
            $table->longText("additional_fields")->nullable()->comment("custom fields and values");

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
        Schema::dropIfExists('product_offers');
    }
}

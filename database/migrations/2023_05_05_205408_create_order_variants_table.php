<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrderVariantsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('order_variants', function (Blueprint $table) {
            $table->id();

            $table->bigInteger("order_id")->unsigned()->nullable();
            $table->bigInteger("product_id")->unsigned()->nullable();
            $table->string("variant_name",30)->nullable()->comment( "color, size, brand etc");
            $table->string("variant_value",45)->nullable()->comment( "red, sm, hp etc");
            $table->bigInteger("order_details_id")->unsigned();

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
        Schema::dropIfExists('order_variants');
    }
}

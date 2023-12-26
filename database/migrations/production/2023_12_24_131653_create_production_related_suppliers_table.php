<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductionRelatedSuppliersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('production_related_suppliers', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('production_id')->unsigned()->nullable();
            $table->bigInteger('product_id')->unsigned()->nullable();
            $table->bigInteger('category_id')->unsigned()->nullable();
            $table->bigInteger('supplier_id')->unsigned()->nullable();

            $table->string('category_name',200)->nullable();
            $table->string('supplier_name',250)->nullable();

            $table->integer('amount')->unsigned()->nullable();
            $table->float('price')->unsigned()->nullable();
            $table->string('unit',100)->nullable();
            $table->float('cost')->unsigned()->nullable();
            $table->float('total_price')->unsigned()->nullable();
            $table->string('order_number',50)->nullable();
            $table->text('comment')->nullable();

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
        Schema::dropIfExists('production_related_suppliers');
    }
}

<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductInBranchesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('product_in_branches', function (Blueprint $table) {
            $table->id();
            $table->bigInteger("product_id")->unsigned()->nullable();
            $table->bigInteger("branch_id")->unsigned()->nullable();
            $table->bigInteger("qty")->nullable();
            $table->timestamp("date")->nullable()->comment("stock transfering date");

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
        Schema::dropIfExists('product_in_branches');
    }
}

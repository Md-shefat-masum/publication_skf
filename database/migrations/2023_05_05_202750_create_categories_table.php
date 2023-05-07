<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCategoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('categories', function (Blueprint $table) {
            $table->id();
            $table->string("name", 100)->nullable();
            $table->string("name_english", 100)->nullable();
            $table->integer("parent_id")->nullable();
            $table->string("url", 100)->nullable();
            $table->tinyInteger("is_top_category")->default("0");
            $table->string("category_image", 100)->nullable();
            $table->text("description")->nullable();

            $table->string("page_title", 100)->nullable();
            $table->string("meta_keywords", 100)->nullable();
            $table->string("meta_description", 100)->nullable();
            $table->string("search_keywords", 100)->nullable();

            $table->bigInteger('creator')->unsigned()->nullable();
            $table->string('slug', 50)->nullable();
            $table->tinyInteger('status')->unsigned()->default(1);

            $table->timestamps();
        });
        Schema::create('category_product', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('category_id')->unsigned()->nullable();
            $table->bigInteger('product_id')->unsigned()->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('categories');
        Schema::dropIfExists('category_product');
    }
}

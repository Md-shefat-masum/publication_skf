<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->text("product_name")->nullable();
            $table->text("product_name_english")->nullable();
            $table->string("product_url",100)->nullable();
            $table->tinyInteger("is_top_product")->default("0");
            $table->string("cost",100)->nullable();
            $table->string("sales_price",100)->nullable();
            $table->integer("stock_alert_qty")->nullable();
            $table->integer("pages")->nullable();
            $table->string("binding",20)->nullable();
            $table->string("isbn",20)->nullable();
            $table->string("sku",20)->nullable();
            $table->string("height",10)->nullable();
            $table->string("width",10)->nullable();
            $table->string("weight",10)->nullable();
            $table->string("depth",10)->nullable();
            $table->longText("description")->nullable();
            $table->longText("specification")->nullable();
            $table->string("thumb_image",50)->nullable();
            $table->text("search_keywords")->nullable();
            $table->string("page_title",100)->nullable();
            $table->string("meta_description",100)->nullable();
            $table->text("custom_fields")->nullable();

            $table->bigInteger('creator')->unsigned()->nullable();
            $table->string('slug',50)->nullable();
            $table->tinyInteger('status')->unsigned()->default(1);

            $table->timestamps();
        });
        Schema::create('product_translator', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('product_id')->unsigned()->nullable();
            $table->bigInteger('translator_id')->unsigned()->nullable();
        });
        Schema::create('product_writer', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('product_id')->unsigned()->nullable();
            $table->bigInteger('writer_id')->unsigned()->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('products');
        Schema::dropIfExists('product_translator');
        Schema::dropIfExists('product_writer');
    }
}

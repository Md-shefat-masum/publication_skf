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
            $table->double("cost")->unsigned()->default(0);
            $table->double("sales_price")->unsigned()->default(0);
            $table->integer("stock_alert_qty")->unsigned()->default(10);

            $table->integer("pages")->unsigned()->default(0);

            $table->string("binding",20)->nullable();
            $table->string("isbn",20)->nullable();
            $table->string("sku",20)->nullable();

            $table->float("height",10)->unsigned()->default(0);
            $table->float("width",10)->unsigned()->default(0);
            $table->float("weight",10)->unsigned()->default(0);
            $table->float("depth",10)->unsigned()->default(0);

            $table->longText("description")->nullable();
            $table->longText("specification")->nullable();

            $table->string("thumb_image",100)->nullable();
            $table->text("thumb_alt")->nullable();

            $table->text("search_keywords")->nullable();
            $table->string("page_title",200)->nullable();
            $table->string("meta_description",200)->nullable();

            $table->text("custom_fields")->nullable();
            $table->tinyInteger('is_public')->unsigned()->default(0);
            $table->tinyInteger('is_branch')->unsigned()->default(0);

            $table->bigInteger('creator')->unsigned()->nullable();
            $table->string('slug',100)->nullable();
            $table->tinyInteger('status')->unsigned()->default(1);

            $table->timestamps();
        });
        Schema::create('product_product_translator', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('product_id')->unsigned()->nullable();
            $table->bigInteger('product_translator_id')->unsigned()->nullable();
        });
        Schema::create('product_product_writer', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('product_id')->unsigned()->nullable();
            $table->bigInteger('product_writer_id')->unsigned()->nullable();
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
        Schema::dropIfExists('product_product_translator');
        Schema::dropIfExists('product_product_writer');
    }
}

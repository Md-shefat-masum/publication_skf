<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('productions', function (Blueprint $table) {
            $table->id();
            $table->bigInteger("product_id")->unsigned()->nullable();
            $table->float("paper_amount")->nullable();

            $table->integer("no")->unsigned()->nullable();
            $table->date("date")->nullable();
            $table->date("order_date")->nullable();
            $table->date("delivery_date")->nullable();

            $table->integer("each_copy_price")->unsigned()->nullable();

            $table->bigInteger("print_qty")->unsigned()->nullable()->comment('ordered print qty');
            $table->bigInteger("final_print_qty")->unsigned()->nullable()->comment('after print qty');

            $table->bigInteger("book_cover_designer")->nullable();
            $table->bigInteger("supplier_prints_id")->unsigned()->nullable();
            $table->bigInteger("supplier_bindings_id")->unsigned()->nullable();
            $table->bigInteger("total_sales")->default(0);
            $table->bigInteger("is_complete")->default(0);

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
        Schema::dropIfExists('productions');
    }
}

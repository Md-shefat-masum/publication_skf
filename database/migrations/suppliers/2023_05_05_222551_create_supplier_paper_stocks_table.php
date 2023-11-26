<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSupplierPaperStocksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('supplier_paper_stocks', function (Blueprint $table) {
            $table->id();
            $table->bigInteger("supplier_paper_id")->unsigned()->nullable();
            $table->string("paper_name", 45)->nullable();
            $table->string("paper_type", 45)->nullable();
            $table->float("cost_per_paper")->nullable();
            $table->float("cost_per_ream")->nullable();
            $table->float("stock")->default(0);
            $table->date("purchase_date")->nullable();
            $table->text("description")->nullable();

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
        Schema::dropIfExists('supplier_paper_stocks');
    }
}

<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSupplierPapersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('supplier_papers', function (Blueprint $table) {
            $table->id();
            $table->string("supplier_name", 45)->nullable();
            $table->string("paper_name", 45)->nullable();
            $table->string("paper_type", 45)->nullable();
            $table->float("cost_per_paper")->nullable();
            $table->float("cost_per_ream")->nullable();
            $table->date("purchase_date")->nullable();
            $table->text("description")->nullable();
            // phone number into phone_numbers table

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
        Schema::dropIfExists('supplier_papers');
    }
}

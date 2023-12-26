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
            $table->float("stock")->default(0); // total stock sum
            $table->date("purchase_date")->nullable(); // latest purchase date
            $table->text("description")->nullable();

            $table->date('last_contact_date')->nullable();
            $table->text('project_name')->nullable();
            $table->text('paper_type')->nullable();
            $table->float('each_ream_price')->nullable();
            $table->float('paper_amount')->nullable();
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

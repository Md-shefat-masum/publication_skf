<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSupplierPrintsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('supplier_prints', function (Blueprint $table) {
            $table->id();
            $table->string("company_name", 45)->nullable();
            $table->float("print_cost")->nullable();
            $table->integer("total_page")->nullable();
            $table->float("per_page_cost")->nullable();
            $table->date("contact_date")->nullable();
            $table->text("description")->nullable();
            // phone numbers into phone_numbers table

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
        Schema::dropIfExists('supplier_prints');
    }
}

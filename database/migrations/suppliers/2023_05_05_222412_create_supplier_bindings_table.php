<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSupplierBindingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('supplier_bindings', function (Blueprint $table) {
            $table->id();
            $table->string("company_name", 45)->nullable();
            $table->float("binding_cost")->default(0);
            $table->integer('total_book')->default(0);
            $table->date("contact_date")->nullable();
            $table->text("address")->nullable();
            $table->text("description")->nullable();
            // phone number into phone_numbers table

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
        Schema::dropIfExists('supplier_bindings');
    }
}

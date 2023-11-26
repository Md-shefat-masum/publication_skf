<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTaskVariantValuesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('task_variant_values', function (Blueprint $table) {
            $table->id();

            $table->bigInteger('task_variant_id')->nullable();
            $table->text('task_variant_title')->nullable();
            $table->string('title',200)->nullable();
            $table->string('color',20)->nullable();

            $table->bigInteger('creator')->unsigned()->nullable();
            $table->string('slug',50)->nullable();
            $table->tinyInteger('status')->unsigned()->default(1);

            $table->timestamps();
        });

        Schema::create('task_task_variant_value', function (Blueprint $table) {
            $table->id();

            $table->bigInteger('task_id')->nullable();
            $table->bigInteger('task_variant_value_id')->nullable();

            $table->timestamps();
        });
    }

    /**
     php artisan migrate:rollback --path="database/migrations/task"
     php artisan migrate --path="database/migrations/task"
     php artisan db:seed --class="\Database\Seeders\Task\TaskSeeder"
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('task_variant_values');
        Schema::dropIfExists('task_task_variant_value');
    }
}

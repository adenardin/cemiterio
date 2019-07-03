<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateJazigosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('jazigos', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('capacidade');
            $table->boolean('disponivel');
            $table->decimal('valor', 10,2);
            $table->integer('moradores_id');
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
        Schema::dropIfExists('jazigos');
    }
}

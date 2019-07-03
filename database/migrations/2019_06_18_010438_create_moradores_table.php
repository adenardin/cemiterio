<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMoradoresTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     * código, nome, data nascimento, número da certidão de óbito, CPF, data de falecimento, observações, sexo
     */
    public function up()
    {
        Schema::create('moradores', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('nome');
            $table->date('data_nascimento');
            $table->integer('num_cert_obito');
            $table->string('cpf');
            $table->date('data_falecimento');
            $table->date('data_sepultamento');
            $table->string('sexo');
            $table->string('nome_resp');
            $table->string('ender_resp');
            $table->string('tel_resp');
            $table->date('data_para_pagamento');
            $table->date('data_ultimo_pagamento');
            $table->string('obs');
            $table->integer('id_jazigo');
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
        Schema::dropIfExists('moradores');
    }
}

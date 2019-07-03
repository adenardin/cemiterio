<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Morador extends Model
{

    protected $table = 'moradores';

    protected $fillable = [
        'id',
        'nome',
        'data_nascimento',
        'num_cert_obito',
        'cpf',
        'data_falecimento',
        'data_sepultamento',
        'sexo',
        'nome_resp',
        'ender_resp',
        'tel_resp',
        'data_para_pagamento',
        'data_ultimo_pagamento',
        'obs',
        'id_jazigo'
    ];
}

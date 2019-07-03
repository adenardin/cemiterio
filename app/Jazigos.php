<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Jazigos extends Model
{
    protected $table = 'jazigos';

    protected $fillable = [
        'id',
        'capacidade',
        'disponivel',
        'valor',
        'moradores_id'
    ];
}
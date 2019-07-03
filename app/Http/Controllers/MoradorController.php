<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Exception;

class MoradorController extends Controller
{
    public function registrar(Request $request)
    {
        try{
            $morador = \App\Morador::create([
                'nome'  => $request->get('nome'),
                'data_nascimento'  =>$request->get('data_nascimento'),
                'num_cert_obito'  => $request->get('num_cert_obito'),
                'cpf'  => $request->get('cpf'),
                'data_falecimento'  => $request->get('data_falecimento'),
                'data_sepultamento'  => $request->get('data_sepultamento'),
                'sexo'  => $request->get('sexo'),
                'nome_resp'  => $request->get('nome_resp'),
                'ender_resp'  => $request->get('ender_resp'),
                'tel_resp'  => $request->get('tel_resp'),
                'data_para_pagamento'  => $request->get('data_para_pagamento'),
                'data_ultimo_pagamento'  => $request->get('data_ultimo_pagamento'),
                'obs'  => $request->get('obs'),
                'id_jazigo'  => $request->get('id_jazigo')
            ]);

            $status = true;
            return response()->json(compact(['status', 'morador']));

        } catch(\Exception $e) {
            $status = false;
            $erro = $e->getMessage();
            return response()->json(compact(['status', 'erro']));
        }
    }

    public function atualizar(Request $request, $idMorador)
    {
        try{
            $morador = \App\Morador::where('id', $idMorador)->first();            
            $morador->nome = $request->get('nome');
            $morador->data_nascimento = $request->get('data_nascimento');
            $morador->num_cert_obito = $request->get('num_cert_obito');
            $morador->cpf = $request->get('cpf');
            $morador->data_falecimento = $request->get('data_falecimento');
            $morador->data_sepultamento = $request->get('data_sepultamento');
            $morador->sexo = $request->get('sexo');
            $morador->nome_resp = $request->get('nome_resp');
            $morador->ender_resp = $request->get('ender_resp');
            $morador->tel_resp = $request->get('tel_resp');
            $morador->data_para_pagamento = $request->get('data_para_pagamento');
            $morador->data_ultimo_pagamento = $request->get('data_ultimo_pagamento');
            $morador->obs = $request->get('obs');
            $morador->id_jazigo = $request->get('id_jazigo');
            $morador->save();

            $status = true;
            return response()->json(compact(['status', 'morador']));

        } catch(\Exception $e) {
            $status = false;
            $erro = $e->getMessage();
            return response()->json(compact(['status', 'erro']));
        }
    }   
    
    public function deletar(Request $request, $idMorador)
    {
        try{            
            $morador = \App\Morador::where('id', $idMorador)->first();
            $morador->delete();

            $status = true;
            return response()->json(compact(['status', 'morador']));

        } catch(\Exception $e) {
            $status = false;
            $erro = $e->getMessage();
            return response()->json(compact(['status', 'erro']));
        }
    }   
    
    public function selecionarTodos()
    {
        try{            
            $moradores = \App\Morador::all();
            $status = true;
            return response()->json(compact(['status', 'moradores']));

        } catch(\Exception $e) {
            $status = false;
            $erro = $e->getMessage();
            return response()->json(compact(['status', 'erro']));
        }
    }     
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Exception;

class JazigosController extends Controller
{
    public function registrar(Request $request)
    {
        try{
            $jazigos = \App\Jazigos::create([
                'capacidade'    => $request->get('capacidade'),
                'disponivel'    => $request->get('disponivel'),
                'valor'         => $request->get('valor'),
                'moradores_id'  => $request->get('moradores_id')
            ]);

            $status = true;
            return response()->json(compact(['status', 'jazigos']));

        } catch(\Exception $e) {
            $status = false;
            $erro = $e->getMessage();
            return response()->json(compact(['status', 'erro']));
        }
    }

    public function atualizar(Request $request, $idJazigos)
    {
        try{            
            $jazigos = \App\Jazigos::where('id', $idJazigos)->first();
            $jazigos->capacidade   = $request->get('capacidade');
            $jazigos->disponivel   = $request->get('disponivel');
            $jazigos->valor        = $request->get('valor');
            $jazigos->moradores_id = $request->get('moradores_id');

            $jazigos->save();

            $status = true;
            return response()->json(compact(['status', 'jazigos']));

        } catch(\Exception $e) {
            $status = false;
            $erro = $e->getMessage();
            return response()->json(compact(['status', 'erro']));
        }
    }    

    public function deletar(Request $request, $idJazigos)
    {
        try{            
            $jazigos = \App\Jazigos::where('id', $idJazigos)->first();
            $jazigos->delete();

            $status = true;
            return response()->json(compact(['status', 'jazigos']));

        } catch(\Exception $e) {
            $status = false;
            $erro = $e->getMessage();
            return response()->json(compact(['status', 'erro']));
        }
    }    
    
    public function selecionarTodos()
    {
        try{            
            $jazigos = \App\Jazigos::all();
            $status = true;
            return response()->json(compact(['status', 'jazigos']));

        } catch(\Exception $e) {
            $status = false;
            $erro = $e->getMessage();
            return response()->json(compact(['status', 'erro']));
        }
    }        
}

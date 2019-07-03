<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('register', 'UserController@register');
Route::get('open', 'DataController@open');
Route::post('login', 'UserController@authenticate');

Route::group(['middleware' => ['jwt.verify']], function() {
    Route::get('user', 'UserController@getAuthenticatedUser');
    Route::get('closed', 'DataController@closed');
    
    Route::post('registrarMorador', 'MoradorController@registrar');
    Route::post('atualizarMorador/{idMorador}', 'MoradorController@atualizar');
    Route::get('deletarMorador/{idMorador}', 'MoradorController@deletar');
    Route::get('selecionarTodosMoradores', 'MoradorController@selecionarTodos');

    Route::post('registrarJazigos', 'JazigosController@registrar');
    Route::post('atualizarJazigos/{idJazigos}', 'JazigosController@atualizar');
    Route::get('deletarJazigos/{idJazigos}', 'JazigosController@deletar');
    Route::get('selecionarTodosJazigos', 'JazigosController@selecionarTodos');
});
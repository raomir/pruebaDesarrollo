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

Route::middleware('auth:apis')->get('/user', function (Request $request) {
    return $request->user();
});

Route::resource('terceros', 'TerceroController');
Route::get('municipios/{id}', 'MunicipioController@index');
Route::resource('departamentos', 'DepartamentoController');
Route::resource('tipoTercero', 'TipoTerceroController');



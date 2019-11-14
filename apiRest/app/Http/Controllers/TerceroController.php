<?php

namespace App\Http\Controllers;

use App\Tercero;
use Illuminate\Http\Request;

class TerceroController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tercero = Tercero::with(['departamento', 'municipio', 'tipotercero'])->get();
        echo json_encode($tercero);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $tercero = new Tercero();
        $tercero->tipo_identificacion = $request->input('tipo_identificacion');
        $tercero->numero_identificacion = $request->input('numero_identificacion');
        $tercero->tipo_tercero_id = $request->input('tipo_tercero_id');
        $tercero->nombre_uno = $request->input('nombre_uno');
        $tercero->nombre_dos = $request->input('nombre_dos');
        $tercero->apellido_uno = $request->input('apellido_uno');
        $tercero->apellido_dos = $request->input('apellido_dos');
        $tercero->departamento_id = $request->input('departamento_id');
        $tercero->municipio_id = $request->input('municipio_id');
        $tercero->save();

        echo json_encode($tercero);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $tercero_id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $tercero_id)
    {
        $tercero = Tercero::find($tercero_id);
        $tercero->tipo_identificacion = $request->input('tipo_identificacion');
        $tercero->numero_identificacion = $request->input('numero_identificacion');
        $tercero->tipo_tercero_id = $request->input('tipo_tercero_id');
        $tercero->nombre_uno = $request->input('nombre_uno');
        $tercero->nombre_dos = $request->input('nombre_dos');
        $tercero->apellido_uno = $request->input('apellido_uno');
        $tercero->apellido_dos = $request->input('apellido_dos');
        $tercero->departamento_id = $request->input('departamento_id');
        $tercero->municipio_id = $request->input('municipio_id');
        $tercero->save();

        echo json_encode($tercero);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($tercero_id)
    {
        $tercero = Tercero::find($tercero_id);
        $tercero->delete();
        echo json_encode(array("status", "ok"));
    }
}

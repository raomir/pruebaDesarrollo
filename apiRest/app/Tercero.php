<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tercero extends Model
{
    // protected $fillable = [
    //     'tipo_identificacion', 
    //     'numero_identificacion',
    //     'tipo_tercero_id',
    //     'nombre_uno',
    //     'apellido_uno',
    //     'apellido_dos',
    //     'departamento_id',
    //     'municipio_id'
    // ];

    public function tipoTercero(){
        return $this->belongsTo('App\TipoTercero');
    }

    public function departamento(){
        return $this->belongsTo('App\Departamento');
    }

    public function municipio(){
        return $this->belongsTo('App\Municipio');
    }
}

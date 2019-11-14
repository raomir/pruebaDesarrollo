<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Departamento extends Model
{
    public function municipios(){
        return $this->hasMany('App\Municipio');
    }

    public function terceros(){
        return $this->hasMany('App\Tercero');
    }
}

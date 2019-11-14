<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Municipio extends Model
{
    public function terceros(){
        return $this->hasMany('App\Tercero');
    }

    public function departamento(){
        return $this->belongsTo('App\Departamento');
    }
}

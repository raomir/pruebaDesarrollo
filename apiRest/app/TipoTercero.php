<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TipoTercero extends Model
{
    public function terceros(){
        return $this->hasMany('App\Tercero');
    }
}

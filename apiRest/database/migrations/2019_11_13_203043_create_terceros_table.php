<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTercerosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('terceros', function (Blueprint $table) {
            $table->increments('id');
            $table->string('tipo_identificacion');
            $table->string('numero_identificacion');
            $table->integer('tipo_tercero_id')->unsigned();
            $table->string('nombre_uno');
            $table->string('nombre_dos')->nullable();
            $table->string('apellido_uno');
            $table->string('apellido_dos');
            $table->integer('departamento_id')->unsigned();
            $table->integer('municipio_id')->unsigned();

            $table->foreign('tipo_tercero_id')->references('id')->on('tipo_terceros');
            $table->foreign('departamento_id')->references('id')->on('departamentos');
            $table->foreign('municipio_id')->references('id')->on('municipios');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('terceros');
    }
}

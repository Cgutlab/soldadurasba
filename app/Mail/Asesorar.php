<?php

namespace App\Mail;

use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;

class Asesorar extends Mailable

{
    use Queueable, SerializesModels;

    public function __construct($nombre, $email, $empresa, $serie, $marca, $modelo, $mensaje)

    {
        $this->nombre = $nombre;
        $this->email = $email;
        $this->empresa = $empresa;
        $this->mensaje = $mensaje;
        $this->serie = $serie;
        $this->marca = $marca;
        $this->modelo = $modelo;
    }

    public function build()

    {
        return $this->view('page.sendasesorar')->with([
                        'nombre' => $this->nombre,
                        'email' => $this->email,
                        'empresa' => $this->empresa,
                        'mensaje' => $this->mensaje,    
                        'serie' => $this->serie,    
                        'marca' => $this->marca,    
                        'modelo' => $this->modelo,    
                        ]);

    }

}


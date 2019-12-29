<?php

namespace App\Http\Controllers\page;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Mail;
use Illuminate\Http\Request;
use App\Mail\Asesorar;
use App\Postventa;
use App\Metadato;
use App\Dato;

class PostventaController extends Controller
{
    public function index()
    {
    	$metadato = Metadato::where('section','postventa')->first();
    	$active = 'postventa';
    	$postventas = Postventa::orderBy('order', 'ASC')->get();
    	return view('page.postventa',compact('sliders', 'metadato', 'active', 'postventas'));
    }

    public function enviarMail(Request $request) {

      $dato = Dato::where('type', 'correo')->first();
      $nombre = $request->input('nombre');
      $email = $request->input('email');
      $empresa = $request->input('empresa');
      $mensaje = $request->input('mensaje');
      $serie = $request->input('serie');
      $marca = $request->input('marca');
      $modelo = $request->input('modelo');

      Mail::to($dato->description)->send(new Asesorar($nombre, $email, $empresa, $serie, $marca, $modelo, $mensaje));

      if (count(Mail::failures()) > 0) {

          $success = 'Ha ocurrido un error al enviar el correo';

      }else{

          $success = 'Correo enviado correctamente';

      }

      return back()->with('success', $success);

    }
}

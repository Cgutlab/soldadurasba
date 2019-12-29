<?php

namespace App\Http\Controllers\page;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Descarga;
use App\Metadato;

class DescargaController extends Controller
{
    public function index()
    {
    	$metadato = Metadato::where('section','descargas')->first();
    	$active = 'descarga';
    	$descargas = Descarga::orderBy('order', 'ASC')->get();
    	return view('page.descarga',compact('metadato', 'active', 'descargas'));
    }
}

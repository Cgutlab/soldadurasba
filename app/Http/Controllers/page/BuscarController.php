<?php

namespace App\Http\Controllers\page;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Producto;
use App\Metadato;

class BuscarController extends Controller
{
    public function index() {
        $busca=0;
    	$active = 'buscar';
        return view('page.buscar', compact('active', 'busca'));
    }

    public function getResults (Request $request) {

        $busqueda = $request->busqueda;
        $busca=1;
        $active = 'buscar';
        $productos = Producto::where('name', 'like', '%' . $busqueda . '%')->orWhere('code', 'like', '%' . $busqueda . '%')->orWhere('descripcion', 'like', '%' . $busqueda . '%')->get();
        return view('page.buscar', compact('productos', 'busqueda', 'busca', 'active'));
    }
}

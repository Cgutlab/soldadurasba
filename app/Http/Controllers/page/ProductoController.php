<?php

namespace App\Http\Controllers\page;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Subfamilia;
use App\Metadato;
use App\Producto;
use App\Familia;
use App\producto_producto;

class ProductoController extends Controller
{
    public function index()
    {
    	$metadato = Metadato::where('section','productos')->first();
    	$active = 'producto';
    	$familias = Familia::orderBy('order', 'ASC')->get();
    	return view('page.familia',compact('metadato', 'active', 'familias'));
    }

    public function subfamilia($id)
    {
    	$metadato = Metadato::where('section','productos')->first();
    	$active = 'producto';
    	$familia = Familia::find($id);
    	$subfamilias = Subfamilia::where('family_id', $id)->orderBy('order', 'ASC')->get();
    	return view('page.subfamilia',compact('metadato', 'active', 'familia', 'subfamilias'));	
    }

    public function productos($id)
    {
    	$metadato = Metadato::where('section','productos')->first();
    	$active = 'producto';
    	$subfamilia = Subfamilia::find($id);
    	$productos = Producto::where('subfamily_id', $id)->orderBy('order', 'ASC')->get();
    	return view('page.productos',compact('metadato', 'active', 'productos', 'subfamilia'));	
    }

    public function producto($id)
    {
        $metadato = Metadato::where('section','productos')->first();
        $active = 'producto';
        $producto = Producto::find($id);
        $ready  = 0;
        return view('page.producto',compact('metadato', 'active', 'producto', 'ready')); 
    }
}

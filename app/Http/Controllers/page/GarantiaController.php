<?php

namespace App\Http\Controllers\page;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Metadato;
use App\Garantia;

class GarantiaController extends Controller
{
    public function index()
    {
    	$metadato = Metadato::where('section','garantia')->first();
    	$active = 'garantia';
    	$garantia = Garantia::find(1);
    	return view('page.garantia',compact('sliders', 'metadato', 'active', 'garantia'));
    }
}

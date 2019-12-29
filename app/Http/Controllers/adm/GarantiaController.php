<?php

namespace App\Http\Controllers\adm;

use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Extensions\Helpers;
use Laracasts\Flash\Flash;
use App\Garantia;
use App\Slider;
use Redirect;

class GarantiaController extends Controller
{
    public function editarContenido(){
        $usuario = Auth::user();
        $garantia = Garantia::find(1);
        $garantia_seccion = 'active';
        $garantia_contenido_edit = 'active';

        return view('adm.garantia.editarContenido',  compact('usuario', 'garantia', 'garantia_contenido_edit', 'garantia_seccion'));
    }

    public function updateContenido(Request $request, $id){
        $datos = $request->all();
        $garantia = Garantia::find($id);

        $file_save = Helpers::saveImage($request->file('image'), 'garantia');
        $file_save ? $datos['image'] = $file_save : false;


        $garantia->fill($datos);
        $garantia->save();
        $success = 'garantia editada correctamente';
        return back()->with('success', $success);
    }
}

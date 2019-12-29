<?php

namespace App\Http\Controllers\adm;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Extensions\Helpers;
use Laracasts\Flash\Flash;
use App\Postventa;
use Redirect;

class PostventaController extends Controller
{
    public function create(){
        $usuario = Auth::user();
        $postventas_seccion = 'active';
        $postventa_create = 'active';
        return view('adm.postventa.crearpostventa',  compact('usuario', 'postventas_seccion', 'postventa_create'));
    }

    public function store(Request $request)
    {
        $datos = $request->all();

       	$file_save = Helpers::saveImage($request->file('image'), 'postventa');
        $file_save ? $datos['image'] = $file_save : false;

        Postventa::create($datos);
        $success = 'Servicio creado correctamente';

        return back()->with('success', $success);
    }

    public function editar(){
        $usuario = Auth::user();
        $postventas = Postventa::orderBy('order', 'ASC')->get();
        $postventas_seccion = 'active';
        $postventa_edit = 'active';

        return view('adm.postventa.editarpostventas',  compact('postventas', 'usuario', 'postventas_seccion', 'postventa_edit'));
    }

    public function edit($id)
    {
        $postventa = Postventa::find($id);
        $usuario = Auth::user();
        $postventas_seccion = 'active';
        $postventas_edit = 'active';
        return view('adm.postventa.editarpostventa', compact('postventa','usuario','postventas_seccion','postventas_edit'));
    }

    public function update(Request $request, $id)
    {
    	$postventa = Postventa::find($id);
        $datos = $request->all();

        $file_save = Helpers::saveImage($request->file('image'), 'postventa');
        $file_save ? $datos['image'] = $file_save : false;
       
        $postventa->fill($datos);
        $postventa->save();
        $success = 'Servicio editado correctamente';
        return back()->with('success', $success);
    }

    public function destroy($id)
    {
        $postventa = Postventa::find($id);
        $postventa->delete();
        $success = 'Servicio eliminado correctamente';
        return back()->with('success', $success);
    }
}

<?php

namespace App\Http\Controllers\adm;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Extensions\Helpers;
use Laracasts\Flash\Flash;
use App\Descarga;
use App\Banner;
use Redirect;

class DescargasController extends Controller
{
    public function create(){
        $usuario = Auth::user();
        $descargas_seccion = 'active';
        $descarga_create = 'active';
        return view('adm.descarga.crearDescarga',  compact('usuario', 'descargas_seccion', 'descarga_create'));
    }

    public function store(Request $request)
    {
        $datos = $request->all();

       	$file_save = Helpers::saveImage($request->file('image'), 'descargas');
        $file_save ? $datos['image'] = $file_save : false;

        $file_save = Helpers::saveImage($request->file('route'), 'descargas');
        $file_save ? $datos['route'] = $file_save : false;

        Descarga::create($datos);
        $success = 'Descarga creada correctamente';

        return back()->with('success', $success);
    }

    public function editar(){
        $usuario = Auth::user();
        $descargas = Descarga::orderBy('order', 'ASC')->get();
        $descargas_seccion = 'active';
        $descarga_edit = 'active';

        return view('adm.descarga.editarDescargas',  compact('descargas', 'usuario', 'descargas_seccion', 'descarga_edit'));
    }

    public function edit($id)
    {
        $descarga = Descarga::find($id);
        $usuario = Auth::user();
        $descargas_seccion = 'active';
        $descargas_edit = 'active';
        return view('adm.descarga.editarDescarga', compact('descarga','usuario','descargas_seccion','descargas_edit'));
    }

    public function update(Request $request, $id)
    {
    	$descarga = Descarga::find($id);
        $datos = $request->all();

        $file_save = Helpers::saveImage($request->file('image'), 'descargas');
        $file_save ? $datos['image'] = $file_save : false;

        $file_save = Helpers::saveImage($request->file('route'), 'descargas');
        $file_save ? $datos['route'] = $file_save : false;
       
        $descarga->fill($datos);
        $descarga->save();
        $success = 'Descarga editada correctamente';
        return back()->with('success', $success);
    }

    public function destroy($id)
    {
        $descarga = Descarga::find($id);
        $descarga->delete();
        $success = 'Descarga eliminada correctamente';
        return back()->with('success', $success);
    }

    public function editarBanner(){
        $usuario = Auth::user();
        $banner = Banner::where('section', 'descarga')->first();
        $banners_seccion = 'active';
        $banner_edit = 'active';

        return view('adm.banner.editarBanner',  compact('usuario', 'banner', 'banners_seccion', 'banner_edit'));
    }

}

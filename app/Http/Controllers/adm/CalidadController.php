<?php

namespace App\Http\Controllers\adm;

use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Extensions\Helpers;
use Laracasts\Flash\Flash;
use App\Calidad;
use App\Banner;
use Redirect;

class CalidadController extends Controller
{
    public function editarContenido(){
        $usuario = Auth::user();
        $calidad = Calidad::find(1);
        $calidad_seccion = 'active';
        $calidad_contenido_edit = 'active';

        return view('adm.calidad.editarContenido',  compact('usuario', 'calidad', 'empresa_contenido_edit', 'empresa_seccion'));
    }

    public function updateContenido(Request $request, $id){
        $datos = $request->all();
        $calidad = Calidad::find($id);

        $file_save = Helpers::saveImage($request->file('politic'), 'calidad');
        $file_save ? $datos['politic'] = $file_save : false;

        $file_save = Helpers::saveImage($request->file('certificate'), 'calidad');
        $file_save ? $datos['certificate'] = $file_save : false;

        $calidad->fill($datos);
        $calidad->save();
        $success = 'Calidad editada correctamente';
        return back()->with('success', $success);
    }



    public function crearBanner(){
        $usuario = Auth::user();
        $banners_seccion = 'active';
        $calidad_banner_create = 'active';
        return view('adm.calidad.crearBanner',  compact('usuario', 'banners_seccion', 'calidad_banner_create'));
    }

    public function editarBanner(){
        $usuario = Auth::user();
        $banner = Banner::where('section', 'calidad')->first();
        $banners_seccion = 'active';
        $calidad_banner_edit = 'active';

        return view('adm.calidad.editarBanner',  compact('usuario', 'banner', 'banners_seccion', 'calidad_banner_edit'));
    }

    public function updateBanner(Request $request, $id)
    {
        $banner = Banner::find($id);
        $datos = $request->all();

        $file_save = Helpers::saveImage($request->file('image'), 'banners');
        $file_save ? $datos['image'] = $file_save : false;
       
        $banner->fill($datos);
        $banner->save();
        $success = 'Banner editado correctamente';
        return back()->with('success', $success);
    }
}
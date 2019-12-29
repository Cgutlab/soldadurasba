<?php

namespace App\Http\Controllers\adm;

use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Extensions\Helpers;
use Laracasts\Flash\Flash;
use App\Producto;
use App\Slider;
use App\Texto;
use Redirect;

class HomeController extends Controller
{
    public function crearSlider(){
        $usuario = Auth::user();
        $sliders_seccion = 'active';
        $empresa_slider_create = 'active';
        return view('adm.home.crearSlider',  compact('usuario', 'sliders_seccion', 'empresa_slider_create'));
    }

    public function editarSliders(){
        $usuario = Auth::user();
        $sliders = Slider::where('section', 'home')->orderBy('order','ASC')->get();
        $sliders_seccion = 'active';
        $empresa_slider_edit = 'active';

        return view('adm.home.editarSliders',  compact('usuario', 'sliders', 'sliders_seccion', 'empresa_slider_edit'));
    }

    public function editarSlider($id){
        $usuario = Auth::user();
        $slider = Slider::find($id);
        $sliders_seccion = 'active';
        $empresa_slider_edit = 'active';

        return view('adm.home.editarSlider',  compact('usuario', 'slider', 'sliders_seccion', 'empresa_slider_edit'));
    }

    public function updateSlider(Request $request, $id)
    {
        $slider = Slider::find($id);
        $datos = $request->all();

        $file_save = Helpers::saveImage($request->file('image'), 'sliders');
        $file_save ? $datos['image'] = $file_save : false;
       
        $slider->fill($datos);
        $slider->save();
        $success = 'Slider editado correctamente';
        return back()->with('success', $success);
    }

    public function editarDestacados()
    {
        $usuario = Auth::user();
        $destacados = Producto::orderBy('order','ASC')->get();
        $destacados_seccion = 'active';
        $empresa_destacado_edit = 'active';

        return view('adm.home.editarDestacados',  compact('usuario', 'destacados', 'destacados_seccion', 'home_destacado_edit'));
    }

    public function editarDestacado(Request $request, $id){
        $usuario = Auth::user();
        $destacado = Producto::find($id);

        $file_save = Helpers::saveImage($request->file('image'), 'destacados');
        $file_save ? $datos['image'] = $file_save : false;

        $destacados_seccion = 'active';
        $home_destacado_edit = 'active';

        return view('adm.home.editarDestacado',  compact('usuario', 'destacado', 'destacados_seccion', 'empresa_destacado_edit'));
    }

    public function updateDestacado(Request $request, $id)
    {
        $destacado = Producto::find($id);
        $datos = $request->all();

        $file_save = Helpers::saveImage($request->file('image'), 'destacados');
        $file_save ? $datos['image'] = $file_save : false;

        $destacado->fill($datos);
        $destacado->save();
        $success = 'Destacado editado correctamente';
        return Redirect::to('adm/home/destacados/show')->with('success', $success);
    }

    public function editarContenido(){
        $usuario = Auth::user();
        $home = Texto::where('section','home')->first();
        $home_seccion = 'active';
        $home_contenido_edit = 'active';

        return view('adm.home.editarContenido',  compact('usuario', 'home', 'home_contenido_edit', 'home_seccion'));
    }

    public function updateContenido(Request $request, $id){
        $datos = $request->all();
        $home = Texto::find($id);

        $file_save = Helpers::saveImage($request->file('image'), 'home');
        $file_save ? $datos['image'] = $file_save : false;

        $home->fill($datos);
        $home->save();
        $success = 'Home editado correctamente';
        return back()->with('success', $success);
    }
}

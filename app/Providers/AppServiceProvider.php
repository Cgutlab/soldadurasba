<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use App\Subfamilia;
use App\Familia;
use App\Dato;
use App\Logo;
use App\Red;

class AppServiceProvider extends ServiceProvider
{
    public function boot()
    {
        Schema::defaultStringLength(191);

        $mapa = Dato::where('type', 'mapa')->first();
        $redesf = Red::where('section', 'footer')->get();
        $correo = Dato::where('type', 'correo')->first();
        $logoh = Logo::where('section','header')->first();
        $logof = Logo::where('section','footer')->first();
        $telefono = Dato::where('type', 'telefono')->first();
        $celular = Dato::where('type', 'celular')->first();
        $ubicacion = Dato::where('type', 'ubicacion')->first();
        $familis = Familia::Orderby('order','ASC')->get();
        $subfamilis = Subfamilia::Orderby('order', 'ASC')->get();

        view()->share(compact('correo', 'ubicacion', 'telefono', 'logof', 'logoh', 'mapa', 'redesf', 'celular', 'familis', 'subfamilis'));
    }

    public function register()
    {
        //
    }
}

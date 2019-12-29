<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/	
	
	Route::post('contacto/enviar', ['uses' => 'page\ContactoController@enviarMail', 'as' => 'contacto.enviar']);
	Route::post('asesorar/enviar', ['uses' => 'page\PostventaController@enviarMail', 'as' => 'asesorar.enviar']);

Route::get('/', function() {
			return view('page.home');
		});

	Route::get('/', ['uses' => 'page\HomeController@index', 'as' => 'home']);
	Route::get('empresa', ['uses' => 'page\EmpresaController@index', 'as' => 'empresa']);
	Route::get('familias', ['uses' => 'page\ProductoController@index', 'as' => 'familia']);
	Route::get('familia/{id}', ['uses' => 'page\ProductoController@subfamilia', 'as' => 'subfamilia']);
	Route::get('subfamilia/{id}', ['uses' => 'page\ProductoController@productos', 'as' => 'productos']);
	Route::get('producto/{id}', ['uses' => 'page\ProductoController@producto', 'as' => 'producto']);
	Route::get('garantia', ['uses' => 'page\GarantiaController@index', 'as' => 'garantia']);
	Route::get('postventa', ['uses' => 'page\PostventaController@index', 'as' => 'postventa']);
	Route::get('descarga', ['uses' => 'page\DescargaController@index', 'as' => 'descarga']);
	Route::get('contacto', ['uses' => 'page\ContactoController@index', 'as' => 'contacto']);
	Route::get('/busca',['uses'=>'page\BuscarController@index',	'as'=>'buscar' ]);
	Route::post('/buscador',['uses'=>'page\BuscarController@getResults', 'as'=>'buscador']);



/* ----------------------------------- Administrador ----------------------------------- */

Route::group(['prefix' => 'adm'], function() {
		Route::resource('login', 'adm\LoginController');
		Route::get('logout', ['uses' => 'adm\LoginController@logout' , 'as' => 'adm.logout']);
	});

	Route::group(['prefix' => 'adm', 'middleware' => 'guest'], function() {

		Route::get('/', function() {
			$usuario = Auth::user();
			return view('adm.index', compact('usuario'));
		});

		Route::resource('metadatos', 'adm\MetadatosController');
		Route::resource('usuarios', 'adm\UserController');
		Route::resource('slider', 'adm\SliderController');
		Route::resource('datos', 'adm\DatosController');
		Route::resource('logos', 'adm\LogosController');
		Route::resource('redes', 'adm\RedesController');


	Route::group(['prefix' => 'home', 'as' => 'home'], function() {		
			Route::group(['prefix' => 'slider'], function() {
				Route::get('create',  ['uses' => 'adm\HomeController@crearSlider', 'as' => '.slider.create']);
				Route::get('show',  ['uses' => 'adm\HomeController@editarSliders', 'as' => '.slider.show']);
				Route::get('edit/{id}', ['uses' => 'adm\HomeController@editarSlider', 'as' => '.slider.edit']);
				Route::put('update/{id}',  ['uses' => 'adm\HomeController@updateSlider', 'as' => '.slider.update']);
			});

			Route::group(['prefix' => 'destacados'], function() {
				Route::get('show',  ['uses' => 'adm\HomeController@editarDestacados', 'as' => '.destacado.show']);
				Route::get('edit/{id}', ['uses' => 'adm\HomeController@editarDestacado', 'as' => '.destacado.edit']);
				Route::put('update/{id}',  ['uses' => 'adm\HomeController@updateDestacado', 'as' => '.destacado.update']);
			});

			Route::group(['prefix' => 'contenido', 'as' => 'contenido'], function() {
				Route::get('edit', ['uses' => 'adm\HomeController@editarContenido', 'as' => '.edit']);
				Route::put('update/{id}', ['uses' => 'adm\HomeController@updateContenido', 'as' => '.update']);
			});
		});

		Route::group(['prefix' => 'empresa', 'as' => 'empresa'], function() {
				Route::get('edit', ['uses' => 'adm\EmpresaController@editarContenido', 'as' => '.edit']);
				Route::put('update/{id}', ['uses' => 'adm\EmpresaController@updateContenido', 'as' => '.contenido.update']);

			Route::group(['prefix' => 'slider'], function() {
				Route::get('create',  ['uses' => 'adm\EmpresaController@crearSlider', 'as' => '.slider.create']);
				Route::get('show',  ['uses' => 'adm\EmpresaController@editarSliders', 'as' => '.slider.show']);
				Route::get('edit/{id}', ['uses' => 'adm\EmpresaController@editarSlider', 'as' => '.slider.edit']);
				Route::put('update/{id}',  ['uses' => 'adm\EmpresaController@updateSlider', 'as' => '.slider.update']);
			});
		});

		Route::group(['prefix' => 'producto', 'as' => 'producto'], function() {	
			Route::get('create',  ['uses' => 'adm\ProductoController@createProducto', 'as' => '.create']);
				Route::post('store',  ['uses' => 'adm\ProductoController@storeProducto', 'as' => '.store']);
				Route::get('select',  ['uses' => 'adm\ProductoController@selectProducto', 'as' => '.select']);
				Route::post('show',  ['uses' => 'adm\ProductoController@showProducto', 'as' => '.show']);
				Route::get('edit/{id}', ['uses' => 'adm\ProductoController@editProducto', 'as' => '.edit']);
				Route::put('update/{id}',  ['uses' => 'adm\ProductoController@updateProducto', 'as' => '.update']);
				Route::delete('destroy/{id}',  ['uses' => 'adm\ProductoController@destroyProducto', 'as' => '.destroy']);

			Route::group(['prefix' => 'galeria', 'as' => 'galeria'], function() {
				Route::get('create',  ['uses' => 'adm\ProductoController@crearGaleria', 'as' => '.create']);
				Route::post('store',  ['uses' => 'adm\ProductoController@storeGaleria', 'as' => '.store']);
				Route::get('show/{id}',  ['uses' => 'adm\ProductoController@Galerias', 'as' => '.show']);
				Route::get('edit/{id}', ['uses' => 'adm\ProductoController@Galeria', 'as' => '.edit']);
				Route::put('update/{id}',  ['uses' => 'adm\ProductoController@updateGaleria', 'as' => '.update']);
				Route::delete('destroy/{id}',  ['uses' => 'adm\ProductoController@destroyGaleria', 'as' => '.destroy']);
			});

			Route::group(['prefix' => 'familia'], function() {
				Route::get('create',  ['uses' => 'adm\ProductoController@createFamilia', 'as' => '.familia.create']);
				Route::post('store',  ['uses' => 'adm\ProductoController@storeFamilia', 'as' => '.familia.store']);
				Route::get('show',  ['uses' => 'adm\ProductoController@showFamilia', 'as' => '.familia.show']);
				Route::get('edit/{id}', ['uses' => 'adm\ProductoController@editFamilia', 'as' => '.familia.edit']);
				Route::put('update/{id}',  ['uses' => 'adm\ProductoController@updateFamilia', 'as' => '.familia.update']);
				Route::delete('destroy/{id}',  ['uses' => 'adm\ProductoController@destroyFamilia', 'as' => '.familia.destroy']);
			});

			Route::group(['prefix' => 'subfamilia'], function() {
				Route::get('create',  ['uses' => 'adm\ProductoController@createSubfamilia', 'as' => '.subfamilia.create']);
				Route::post('store',  ['uses' => 'adm\ProductoController@storeSubfamilia', 'as' => '.subfamilia.store']);
				Route::get('select',  ['uses' => 'adm\ProductoController@selectSubfamilia', 'as' => '.subfamilia.select']);
				Route::post('show',  ['uses' => 'adm\ProductoController@showSubfamilia', 'as' => '.subfamilia.show']);
				Route::get('edit/{id}', ['uses' => 'adm\ProductoController@editSubfamilia', 'as' => '.subfamilia.edit']);
				Route::put('update/{id}',  ['uses' => 'adm\ProductoController@updateSubfamilia', 'as' => '.subfamilia.update']);
				Route::delete('destroy/{id}',  ['uses' => 'adm\ProductoController@destroySubfamilia', 'as' => '.subfamilia.destroy']);
			});		
		});

		Route::group(['prefix' => 'garantia', 'as' => 'garantia'], function() {
			Route::get('edit', ['uses' => 'adm\GarantiaController@editarContenido', 'as' => '.edit']);
			Route::put('update/{id}', ['uses' => 'adm\GarantiaController@updateContenido', 'as' => '.update']);

		});

		Route::group(['prefix' => 'postventa'], function() {
			Route::get('create',  ['uses' => 'adm\PostventaController@create', 'as' => 'postventa.create']);
			Route::post('store',  ['uses' => 'adm\PostventaController@store', 'as' => 'postventa.store']);
			Route::get('show',  ['uses' => 'adm\PostventaController@editar', 'as' => 'postventa.show']);
			Route::get('edit/{id}', ['uses' => 'adm\PostventaController@edit', 'as' => 'postventa.edit']);
			Route::put('update/{id}',  ['uses' => 'adm\PostventaController@update', 'as' => 'postventa.update']);
			Route::delete('destroy/{id}',  ['uses' => 'adm\PostventaController@destroy', 'as' => 'postventa.destroy']);
		});

		Route::group(['prefix' => 'descarga'], function() {
			Route::get('create',  ['uses' => 'adm\DescargasController@create', 'as' => 'descarga.create']);
			Route::post('store',  ['uses' => 'adm\DescargasController@store', 'as' => 'descarga.store']);
			Route::get('show',  ['uses' => 'adm\DescargasController@editar', 'as' => 'descarga.show']);
			Route::get('edit/{id}', ['uses' => 'adm\DescargasController@edit', 'as' => 'descarga.edit']);
			Route::put('update/{id}',  ['uses' => 'adm\DescargasController@update', 'as' => 'descarga.update']);
			Route::delete('destroy/{id}',  ['uses' => 'adm\DescargasController@destroy', 'as' => 'descarga.destroy']);
		});

});
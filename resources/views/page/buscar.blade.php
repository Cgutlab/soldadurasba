<!DOCTYPE html>
<html lang="es">
<head>
	
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Soldaduras Buenos Aires ~ Buscar</title>
	@include('page.template.links')
	<link rel="stylesheet" href="{{ asset('css/producto.css') }}">
</head>
<body>
	@include('page.template.header')
	<main class="familia">
		<div class="container width85">
			<nav class="z-depth-0 mt70 mb50 busqueda">
		    	<div class="nav-wrapper z-depth-0">
		      		{!! Form::open(['route'=>'buscador', 'method' => 'POST']) !!}
	                    <div class="input-field">
	                        <input id="busqueda" name="busqueda" type="search" placeholder="Buscar" required>
	                        <label class="label-icon" for="search"><i class="material-icons">search</i></label>
	                        <i class="material-icons">chevron_right</i>
	                    </div>
		      		{!! Form::close() !!}
		    	</div>
		  	</nav>
			<div class="row">
				@foreach($productos as $producto)
					<a href="{{ route('producto',$producto->id) }}" class="gris">
					<div class="col s12 m3 mb30">
						<div class="card z-depth-0">
					        <div class="card-image">
					        	<div class="efecto">
		                        	<span class="central"><i class="material-icons">add</i></span>
		                    	</div>
					          	<img src="{{ asset('images/productos/'.$producto->image) }}">
					        </div>
					        <div class="card-content centrar">
					          	<div class="fs18 center-align">{!! $producto->name !!}</div>
					        </div>
				      	</div>
					</div>
				</a>
				@endforeach
			</div>
		</div>
	</main>


	@include('page.template.footer')

	@include('page.template.scripts')

</body>
</html>
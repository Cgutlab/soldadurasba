<!DOCTYPE html>
<html lang="es">
<head>
	
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="{{ $metadato->description }}">
    <meta name="keyword" content="{{ $metadato->keyword }}">
	<title>Soldaduras Buenos Aires ~ Home</title>
	@include('page.template.links')
	<link rel="stylesheet" href="{{ asset('css/home.css') }}">
</head>
<body>
	@include('page.template.header')
<main class="home">
	<div class="slider">
	    <ul class="slides">
	        @foreach($sliders as $slider)
	            <li>
	                <img src="{{ asset('images/sliders/'.$slider->image) }}">
	                <div class="caption">
	                    <h2 class="bold blanco no-margin">{!! $slider->title !!}</h2>
	                    <h4 class="lighter blanco gris-oscuro">{!! $slider->subtitle !!}</h4>
	                </div>
	            </li>
	        @endforeach
	    </ul>
	</div>
	<div class="mt50 mb50 destacado">
		<div class="container width85">
			<h1 class="amarillo fs30 no-margin center-align">Productos destacados</h1>
			<div class="row mt20">
				@foreach($destacados as $destacado)
					<a href="{{ route('producto',$destacado->id) }}" class="gris">
						<div class="col s12 m3 mb30">
							<div class="card z-depth-0">
						        <div class="card-image">
						        	<div class="efecto">
			                        	<span class="central"><i class="material-icons">add</i></span>
			                    	</div>
						          	<img src="{{ asset('images/productos/'.$destacado->image) }}">
						        </div>
						        <div class="card-content centrar">
						          	<div class="fs18 center-align">{!! $destacado->name !!}</div>
						        </div>
					      	</div>
						</div>
					</a>
				@endforeach
			</div>
		</div>
	</div>
	<div class="bg-gris-claro center-align" style="border-top: 1px solid #DDD;">
		<div class="container mt50 pb50">
			<div><img src="{{ asset('images/home/'.$texto->image) }}" alt=""></div>
			<div class="gris fs30">{!! $texto->title !!}</div>
			<div class="gris-oscuro fs20">{!! $texto->text !!}</div>
		</div>
	</div>
</main>


	@include('page.template.footer')

	@include('page.template.scripts')

</body>
</html>
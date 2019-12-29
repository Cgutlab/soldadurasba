<!DOCTYPE html>
<html lang="es">
<head>
	
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="{{ $metadato->description }}">
    <meta name="keyword" content="{{ $metadato->keyword }}">
	<title>Soldaduras Buenos Aires ~ Subfamilias</title>
	@include('page.template.links')
	<link rel="stylesheet" href="{{ asset('css/producto.css') }}">
</head>
<body>
	@include('page.template.header')
	<main class="familia">
		<div class="banner valign-wrapper">
			<div class="container width85">
				<div class="titulo bold fs35">productos</div>
			</div>
		</div>
		<div class="container width85 mt10">
			<div class="fs18 gris"><a class="gris" href="{{ route('familia') }}">Productos </a>| {{ $familia->title }}</div>
		</div>
		<div class="container width85 mt50 mb20">
			<div class="row">
				@forelse($subfamilias as $subfamilia)
					<a href="{{ route('productos', $subfamilia->id) }}" class="gris">
						<div class="col s12 m3 mb30">
							<div class="card z-depth-0">
						        <div class="card-image">
						        	<div class="efecto">
			                        	<span class="central"><i class="material-icons">add</i></span>
			                    	</div>
						          	<img src="{{ asset('images/subfamilias/'.$subfamilia->image) }}">
						        </div>
						        <div class="card-content centrar">
						          	<div class="fs22 center-align">{!! $subfamilia->title !!}</div>
						        </div>
					      	</div>
						</div>
					</a>
				@empty
					<div class="center-align">Esta categoría no tiene productos</div>
				@endforelse
			</div>
		</div>
	</main>


	@include('page.template.footer')

	@include('page.template.scripts')

</body>
</html>
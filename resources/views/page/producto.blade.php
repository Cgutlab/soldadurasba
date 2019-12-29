<!DOCTYPE html>
<html lang="es">
<head>
	
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="{{ $metadato->description }}">
    <meta name="keyword" content="{{ $producto->keyword }}">
	<title>Soldaduras Buenos Aires ~ {!! $producto->name !!}</title>
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
			<div class="fs18 gris"><a class="gris" href="{{ route('familia') }}">Productos </a>| <a class="gris" href="{{ route('subfamilia',$producto->subfamilia->familia->id) }}">{{ $producto->subfamilia->familia->title }} |</a> <a class="gris" href="{{ route('productos',$producto->subfamilia->id) }}">{!! $producto->subfamilia->title !!}</a> | {!! $producto->name !!}</div>
		</div>
		<div class="container width85 mt50 mb50">
			<div class="row">
				<div class="col s12 m6">
					<div class="slider">
					    <ul class="slides">
				            <li>
                				<img src="{{ asset('images/productos/'.$producto->image) }}" alt="">
                			</li>
					    </ul>
					</div>					
				</div>
				<div class="col s12 m6">
					<div class="gris-oscuro">
						<div class="gris bold fs30">{!! $producto->name !!}</div>
						@if($producto->code)<div class="fs16 gris-claro">Código {!! $producto->code !!}</div>@endif
						<div class="linea mt10" style="background-color: #ffab00!important;"></div>
						<div>{!! $producto->descripcion !!}</div>
						@if($producto->pdf)<button class="btn">Ficha Técnica</button>@endif
					</div>
				</div>
			</div>
			@if($producto->video)
				<div class="row mt30">
					<div class="col s12 bg-gris-claro" style="padding: 1.50rem;">
						<div class="row valign-wrapper">
							<div class="col s6 bold fs18 gris">
								<div>Para más información mira el video a continuación</div>
							</div>
							<div class="col s6">
								<iframe src="https://www.youtube.com/embed/{!! $producto->video !!}" controls="on" width="100%" height="300"></iframe>
							</div>
						</div>
					</div>
				</div>
			@endif
			<div class="row">
				<div class="amarillo fs25 mt30">Productos Relacionados</div>
				<div class="linea mb30"></div>
				@foreach($producto->productos as $relacionado)
                    <a class="gris-oscuro" href="{{ route('producto', $relacionado->id)}}">
                       <div class="col s12 m3 mb30">
							<div class="card z-depth-0">
						        <div class="card-image">
						        	<div class="efecto">
			                        	<span class="central"><i class="material-icons">add</i></span>
			                    	</div>
						          	<img src="{{ asset('images/productos/'.$relacionado->image) }}">
						        </div>
						        <div class="card-content centrar">
						          	<div class="fs18 center-align">{!! $relacionado->name !!}</div>
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
<!DOCTYPE html>
<html lang="es">
<head>
	
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="{{ $metadato->description }}">
    <meta name="keyword" content="{{ $metadato->keyword }}">
	<title>Soldaduras Buenos Aires ~ Empresa</title>
	@include('page.template.links')
	<link rel="stylesheet" href="{{ asset('css/empresa.css') }}">
</head>
<body>
	@include('page.template.header')
<main class="empresa">
	<div class="slider">
	    <ul class="slides">
	        @foreach($sliders as $slider)
	            <li>
	                <img src="{{ asset('images/sliders/'.$slider->image) }}">
	                <div class="caption">
	                    <h2 class="fs52 bold blanco no-margin" style="line-height: 1;">{!! $slider->title !!}</h2>
	                    <h4 class="fs22 lighter blanco gris-oscuro mt10">{!! $slider->subtitle !!}</h4>
	                </div>
	            </li>
	        @endforeach
	    </ul>
	</div>
	<div class="container mt50 mb50 width85">
		<div class="row">
			<div class="col s12 l4">
				<img class="responsive-img" src="{{ asset('images/empresa/'.$empresa->image) }}">
			</div>
			<div class="col s12 l8">
				<div class="fs32 amarillo">{!! $empresa->title !!}</div>
				<div class="linea"></div>
				<div>{!! $empresa->text !!}</div>
			</div>
		</div>
	</div>
</main>


	@include('page.template.footer')

	@include('page.template.scripts')

</body>
</html>
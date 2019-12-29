<!DOCTYPE html>
<html lang="es">
<head>
	
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="{{ $metadato->description }}">
    <meta name="keyword" content="{{ $metadato->keyword }}">
	<title>Soldaduras Buenos Aires ~ Descargas</title>
	@include('page.template.links')
	<link rel="stylesheet" href="{{ asset('css/descarga.css') }}">
</head>
<body>
	@include('page.template.header')
	<main class="descarga">
		<div class="banner valign-wrapper">
			<div class="container width85">
				<div class="titulo bold fs35">descarga</div>
			</div>
		</div>
		<div class="container width85 mt50 mb50">
			<div class="row">
				@foreach($descargas as $descarga)
					<a class="gris" href="{{ asset('images/descargas/'.$descarga->route) }}" download="">
						<div class="col s12 m6 l4">
							<div class="center">
								<img src="{{ asset('images/descargas/descarga.jpg') }}" alt="">
							</div>
							<div class="center-align">
								<div class="center"><i class="material-icons amarillo">file_download</i>{!! $descarga->title !!}</div>
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
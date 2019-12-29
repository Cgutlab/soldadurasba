<!DOCTYPE html>
<html lang="es">
<head>
	
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="{{ $metadato->description }}">
    <meta name="keyword" content="{{ $metadato->keyword }}">
	<title>Soldaduras Buenos Aires ~ Garantía</title>
	@include('page.template.links')
	<link rel="stylesheet" href="{{ asset('css/garantia.css') }}">
</head>
<body>
	@include('page.template.header')
	<main class="garantia">
		<div class="banner valign-wrapper">
			<div class="container width85">
				<div class="titulo bold fs35">garantía</div>
			</div>
		</div>
		<div class="container width85 mt50 mb50">
			<div class="row">
				<div class="col s12 m7">
					<div class="fs18">{!! $garantia->text !!}</div>
				</div>
				<div class="col s12 m5 center-align">
					<div class="fs28 gris" style="border-top: 3px solid #ffab00; padding-top: 20px;">{{ $garantia->title }}</div>
					<img class="mt40" src="{{ asset('images/garantia/'.$garantia->image) }}" alt="">
				</div>
			</div>
		</div>
	</main>


	@include('page.template.footer')

	@include('page.template.scripts')

</body>
</html>
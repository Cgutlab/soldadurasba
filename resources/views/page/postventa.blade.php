<!DOCTYPE html>
<html lang="es">
<head>
	
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="{{ $metadato->description }}">
    <meta name="keyword" content="{{ $metadato->keyword }}">
	<title>Soldaduras Buenos Aires ~ Postventa</title>
	@include('page.template.links')
	<link rel="stylesheet" href="{{ asset('css/garantia.css') }}">
	<script src='https://www.google.com/recaptcha/api.js'></script>
</head>
<body>
	@include('page.template.header')
	<main class="garantia">
		<div class="banner valign-wrapper">
			<div class="container width85">
				<div class="titulo bold fs35">post-venta</div>
			</div>
		</div>
		<div class="container width85 mt20 mb70">
			<div class="row">
				@foreach($postventas as $postventa)
					<div class="col s12 l6 mt50 mb50" style="height: 150px;">
						<div class="row">
							<div class="col s12 m2 center">
								<img src="{{ asset('images/postventa/'.$postventa->image) }}" alt="">
							</div>
							<div class="col s12 m10">
								<div class="gris bold fs25" style="line-height: 1;">{!! $postventa->title !!}</div>
								<div class="gris-claro fs20">{!! $postventa->subtitle !!}</div>
								<div>{!! $postventa->text !!}</div>
							</div>
						</div>
					</div>
				@endforeach
			</div>
		</div>
		<div class="bg-gris-claro" style="border-top: 1px solid #DDD;">
			<div class="container width85">
				@if(session('error'))
					<div class="col s12 card-panel red lighten-4 red-text text-darken-4">
						{{ session('error') }}
					</div>
				@endif
				@if(session('success'))
					<div class="col s12 card-panel green lighten-4 green-text text-darken-4">
						{{ session('success') }}
					</div>
				@endif 
				<div class="row center-align">
					<div class="fs27 amarillo pt60 mb10">¿Necesitás Asesoramiento?</div>
					<div class="fs17 gris mb10">Completá el siguiente formulario y nos contactaremos a la brevedad</div>
						{!! Form::open(['route' => 'asesorar.enviar', 'method' => 'POST']) !!}
							<div class="container">
								<div class="container">
									<div class="input-field col s12">
										{!!Form::text('nombre',null,['class' => 'validate', 'placeholder' => 'Nombre', 'autocomplete' => 'off'])!!}
									</div>
									<div class="input-field col s12">
										{!!Form::email('email',null,['class' => 'validate', 'placeholder' => 'Email', 'autocomplete' => 'off'])!!}
									</div>
									<div class="input-field col s12">
										{!!Form::text('empresa',null,['class' => 'validate', 'placeholder' => 'Empresa', 'autocomplete' => 'off'])!!}
									</div>
									<div class="input-field col s12">
										{!!Form::text('serie',null,['class' => 'validate', 'placeholder' => 'Número de serie', 'autocomplete' => 'off'])!!}
									</div>
									<div class="input-field col s6">
										{!!Form::text('marca',null,['class' => 'validate', 'placeholder' => 'Marca', 'autocomplete' => 'off'])!!}
									</div>
									<div class="input-field col s6">
										{!!Form::text('modelo',null,['class' => 'validate', 'placeholder' => 'Modelo', 'autocomplete' => 'off'])!!}
									</div>
									<div class="input-field col s12">
										{!!Form::textarea('mensaje', null, ['class'=>'materialize-textarea', 'placeholder'=>'Mensaje', 'required'])!!}
									</div>
									<div class="input-field col s12 m6">
										<div class="g-recaptcha" data-sitekey="6LdWbXcUAAAAADkrqxamREzsxn4k5Ff5ntIbjLzF"></div>
									</div>
									<div class="col s12">
										<button class="btn waves-effect waves-light z-depth-0 mb60 mt20" type="submit" name="action" style="background-color: #757575;">Enviar</button>
									</div>
								</div>
							</div>
						{!! Form::close() !!}
				</div>
			</div>
		</div>
	</main>


	@include('page.template.footer')

	@include('page.template.scripts')

</body>
</html>
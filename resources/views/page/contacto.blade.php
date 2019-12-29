<!DOCTYPE html>
<html lang="es">
<head>
	
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="{{ $metadato->description }}">
    <meta name="keyword" content="{{ $metadato->keyword }}">
	<title>Soldaduras Buenos Aires ~ Contacto</title>
	@include('page.template.links')
	<link rel="stylesheet" href="{{ asset('css/contacto.css') }}">
	<script src='https://www.google.com/recaptcha/api.js'></script>
</head>
<body>
	@include('page.template.header')
	<main class="contacto">
		<div class="banner valign-wrapper">
			<div class="container width85">
				<div class="titulo bold fs35">contacto</div>
			</div>
		</div>
		<iframe src="{{ $mapa->description }}" width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen></iframe>
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
			<div class="fs18 amarillo center-align mt20 mb20">Si desea realizarnos una consulta complete el siguiente formulario y nuestro equipo se contactá a la brevedad</div>
		<div class="row">
			{!!Form::open(['route' => 'contacto.enviar', 'method'=>'POST'])!!}
				<div class="input-field col m6 s12">
					{!!Form::text('nombre',null,['class'=>'validate', 'placeholder'=>'Nombre', 'required'])!!}
				</div>
				<div class="input-field col m6 s12">
					{!!Form::text('telefono',null,['class'=>'validate', 'placeholder'=>'Teléfono', 'required'])!!}
				</div>
				<div class="input-field col m6 s12">
					{!!Form::text('empresa',null,['class'=>'validate', 'placeholder'=>'Empresa', 'required'])!!}
				</div>
				<div class="input-field col m6 s12">
					{!!Form::email('email',null,['class'=>'validate', 'placeholder'=>'E-mail', 'required'])!!}
				</div>
				<div class="input-field col m6 s12">
					{!!Form::textarea('mensaje', null, ['class'=>'materialize-textarea', 'placeholder'=>'Mensaje', 'required'])!!}
				</div>
				<div class="input-field col m2 s12">
					<div class="g-recaptcha" data-sitekey="6LdWbXcUAAAAADkrqxamREzsxn4k5Ff5ntIbjLzF"></div>
				</div>		                  
				<div class="col m2 push-m2 s12" style=" margin-top: 15px;">
					<div>
        				<input type="checkbox" id="terminos" required="">
        				<label for="terminos"><a href="#modal1" class="modal-trigger" style="font-size: 12px; color:#494949; text-decoration: underline;">Acepto los términos y condiciones de privacidad</a></label>
      				</div>
				</div>
				<div class="col m12 center-align">
					<button class="btn waves-effect waves-light z-depth-0 mb50 mt20" type="submit" name="action" style="background-color: #757575;">Enviar</button>
				</div>
			{!!Form::close()!!}
		</div>
		</div>
	</main>


	@include('page.template.footer')

	@include('page.template.scripts')

</body>
</html>
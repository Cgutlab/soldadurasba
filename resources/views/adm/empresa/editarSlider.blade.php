@extends('adm.main')

@section('titulo', 'Editar slider')

@section('cuerpo')
<main>
	<div class="container">
	    @if(count($errors) > 0)
		<div class="col s12 card-panel red lighten-4 red-text text-darken-4">
	  		<ul>
	  			@foreach($errors->all() as $error)
	  				<li>{!!$error!!}</li>
	  			@endforeach
	  		</ul>
	  	</div>
		@endif
		@if(session('success'))
			<div class="col s12 card-panel green lighten-4 green-text text-darken-4">
				{{ session('success') }}
			</div>
		@endif

		<div class="row">
			<div class="col s12">
			{!!Form::model($slider, ['route'=>['empresa.slider.update', $slider->id], 'method'=>'PUT', 'files' => true])!!}
				<div class="row">
			      	<div class="input-field col s12">
			      		{!! Form::label('Titulo') !!}
						{!!Form::text('title', $slider->title, ['class'=>'validate', 'cols'=>'74', 'rows'=>'5'])!!}
				    </div>
				</div>
				<div class="row">
			      	<div class="input-field col s12">
			      		{!! Form::label('Subtitulo') !!}
						{!!Form::text('subtitle', $slider->subtitle, ['class'=>'validate', 'cols'=>'74', 'rows'=>'5'])!!}
				    </div>
				</div>
				<div class="row">
					<div class="file-field input-field col s16">
						<div class="btn">
						    <span>Imagen</span>
						    {!! Form::file('image') !!}
						</div>
						<div class="file-path-wrapper">
						    {!! Form::text('',null, ['class'=>'file-path validate']) !!}
						</div>
						<small>Tamaño recomendado 1474 x 549</small>
					</div>
					<div class="input-field col s6">
						{!!Form::label('Orden')!!}
						{!!Form::text('order',null,['class'=>'validate', 'required'])!!}
					</div>
				</div>
				<div class="col s12 no-padding">
					{!!Form::submit('Guardar', ['class'=>'waves-effect waves-light btn right'])!!}
				</div>
			{!!Form::close()!!} 
			</div>
			</div>
		</div>
	</main>
@endsection
@extends('adm.main')

@section('titulo', 'Editar portada de calidad')

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
			{!!Form::model($banner, ['route'=>['calidad.banner.update', $banner->id], 'method'=>'PUT', 'files' => true])!!}
				<div class="row">
			      	<div class="input-field col s6">
			      		{!! Form::label('title','Título') !!}
						{!!Form::text('title', $banner->title, ['class'=>'validate', 'cols'=>'74', 'rows'=>'5'])!!}
				    </div>
					<div class="file-field input-field col s6">
						<div class="btn">
						    <span>Imagen</span>
						    {!! Form::file('image') !!}
						</div>
						<div class="file-path-wrapper">
						    {!! Form::text('',null, ['class'=>'file-path validate']) !!}
						</div>
						<small>Tamaño recomendado 1400x166</small>
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
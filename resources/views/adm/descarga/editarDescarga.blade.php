@extends('adm.main')

@section('titulo', 'Editar descarga')

@section('cuerpo')

<main>
	<div class="container">
	    @if(count($errors) > 0)
		<div class="col s12 card-panel red lighten-4 red-text text-darken-4">
	  		<ul>
	  			@foreach ($errors->all() as $error)
	  				<li>{!! $error !!}</li>
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
			<div class="col-sm-12">
	            {!! Form::model($descarga, ['route'=>['descarga.update', $descarga->id], 'method'=>'PUT', 'files' => true]) !!}
					<div class="row">
				      	<div class="input-field col s12">
				      		{!! Form::label('title','Título') !!}
							{!! Form::text('title', $descarga->title, ['class'=>'validate']) !!}
					    </div>
						<div class="file-field input-field col s6">
							<div class="btn">
							    <span>Archivo</span>
							    {!! Form::file('route') !!}
							</div>
							<div class="file-path-wrapper">
							    {!! Form::text('',null, ['class'=>'file-path validate']) !!}
							</div>
							<small>.</small>
						</div>
						<div class="input-field col s6">
							{!! Form::label('order','Orden') !!}
							{!! Form::text('order',$descarga->order,['class'=>'validate', 'required']) !!}
						</div>
						<div class="col s12 no-padding">
							{!! Form::submit('Guardar', ['class'=>'waves-effect waves-light btn right']) !!}
						</div>
					</div>
				{!! Form::close() !!} 
			</div>
		</div>
	</div>
@endsection
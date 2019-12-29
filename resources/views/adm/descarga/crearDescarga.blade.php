@extends('adm.main')

@section('titulo', 'Crear descarga')

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
					{!! Form::open(['route'=>'descarga.store', 'method'=>'POST', 'files' => true]) !!}
						<div class="row">
					      	<div class="input-field col s12">
					      		{!! Form::label('title','Título') !!}
								{!! Form::text('title', null, ['class'=>'validate']) !!}
						    </div>
						</div>
						<div class="row">
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
								{!! Form::text('order',null,['class'=>'validate', 'required']) !!}
							</div>
						</div>
						<div class="col s12 no-padding">
							{!! Form::submit('Crear', ['class'=>'waves-effect waves-light btn right']) !!}
						</div>
					{!! Form::close() !!} 
				</div>
			</div>
		</div>
	</main>
@endsection
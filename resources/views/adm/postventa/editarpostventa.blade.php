@extends('adm.main')

@section('titulo', 'Editar servicio')

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
	            {!! Form::model($postventa, ['route'=>['postventa.update', $postventa->id], 'method'=>'PUT', 'files' => true]) !!}
					<div class="row">
					      	<div class="input-field col s12">
					      		{!! Form::label('title','Título') !!}
								{!! Form::text('title', null, ['class'=>'validate']) !!}
						    </div>
						    <div class="input-field col s12">
					      		{!! Form::label('subtitle','Subtítulo') !!}
								{!! Form::text('subtitle', null, ['class'=>'validate']) !!}
						    </div>
						    <label class="col s12" for="text">Texto</label>
					      	<div class="input-field col s12">
								{!!Form::textarea('text', null, ['class'=>'validate'])!!}
						    </div>
							<div class="file-field input-field col s6">
								<div class="btn">
								    <span>Imagen</span>
								    {!! Form::file('image') !!}
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
							{!! Form::submit('Guardar', ['class'=>'waves-effect waves-light btn right']) !!}
						</div>
				{!! Form::close() !!} 
			</div>
		</div>
	</div>
<script src="//cdn.ckeditor.com/4.7.3/full/ckeditor.js"></script>
<script>
	CKEDITOR.replace('text');
	CKEDITOR.config.height = '300px';
	CKEDITOR.config.width = '100%';
</script>
@endsection
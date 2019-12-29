@extends('adm.main')

@section('titulo', 'Crear producto')

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
				{!!Form::open(['route'=>'producto.store', 'method'=>'POST', 'files' => true])!!}
					<div class="row">
						<div class="input-field col s6">
							{!!Form::label('Nombre')!!}
							{!!Form::text('name',null,['class'=>'validate', 'required'])!!}
						</div>
						<div class="input-field col s6">
							{!!Form::label('Código')!!}
							{!!Form::text('code',null,['class'=>'validate', 'required'])!!}
						</div>
						<div class="input-field col s6">
							<select name="subfamily_id">
								<option value=""> -- Selecciona una subfamilia --</option>
								@foreach($familias as $familia)
									<optgroup label="{!! $familia->title !!}">
										@foreach($subfamilias as $subfamilia)
											@if($familia->id == $subfamilia->family_id)
												<option value="{{ $subfamilia->id }}">{{ $subfamilia->title }}</option>
											@endif
										@endforeach
									</optgroup>
								@endforeach
							</select>
						</div>
						<div class="input-field col s6">
							{!!Form::label('Orden')!!}
							{!!Form::text('order',null,['class'=>'validate', 'required'])!!}
						</div>
					</div>
					<div class="row">
				      	<div class="input-field col s12">
				      		<span class="gris">Descripción</span>
							{!!Form::textarea('descripcion',null, ['class'=>'validate'])!!}
					    </div>
					</div>
					<div class="row">			
						<div class="file-field input-field col s6">
					    	<div class="btn">
						        <span>Imagen</span>
						        {!! Form::file('image') !!}
					    	</div>
						    <div class="file-path-wrapper">
						      	{!! Form::text('',null, ['class'=>'file-path validate']) !!}
						    </div>
						</div>
						<div class="file-field input-field col s6">
					    	<div class="btn">
						        <span>Pdf</span>
						        {!! Form::file('pdf') !!}
					    	</div>
						    <div class="file-path-wrapper">
						      	{!! Form::text('',null, ['class'=>'file-path validate']) !!}
						    </div>
						</div>
					</div>
						<div class="row">
							<div class="input-field col s6">
								{!!Form::label('video','Video')!!}
								{!!Form::text('video',null,['class'=>'validate'])!!}
							</div>
							<div class="input-field col s6">
					    		{!!Form::Select('important',[null => 'Destacado...', 1 => 'si', 0 =>'no'])!!}
							</div>
				            <div class="input-field col l6 s12">
				                {!! Form::label('productos relacionados') !!}<br/>
				                {!! Form::select('productos[]', $productos, null, ['class' => 'form-control', 'multiple' => 'multiple']) !!}
				            </div>
				            <div class="input-field col s6">
								{!!Form::label('keyword','Keywords')!!}
								{!!Form::text('keyword',null,['class'=>'validate'])!!}
							</div>
						</div>
				<div class="col s12 no-padding">
					{!!Form::submit('Crear', ['class'=>'waves-effect waves-light btn right'])!!}
				</div>
				{!!Form::close()!!} 
				</div>
			</div>
		</div>
	</div>
</main>
<script src="//cdn.ckeditor.com/4.7.3/full/ckeditor.js"></script>
<script>
	CKEDITOR.replace('descripcion');
	CKEDITOR.config.height = '300px';
	CKEDITOR.config.width = '100%';
</script>
@endsection
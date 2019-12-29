@extends('adm.main')

@section('titulo', 'Selección de subfamilias')

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
				{!!Form::open(['route'=>'producto.show', 'method'=>'POST', 'files' => true])!!}
					<div class="row">
						<div class="input-field col s6">
							<select name="subfamily_id">
								<option value=""> -- Selecciona una subfamilia --</option>
								@foreach($familias as $familia)
									<optgroup label="{!! $familia->title !!}">
										@foreach ($subfamilias as $subfamilia)
											@if($familia->id == $subfamilia->family_id)
												<option value="{{ $subfamilia->id }}">{{ $subfamilia->title }}</option>
											@endif
										@endforeach
									</optgroup>
								@endforeach
							</select>
						</div>
					</div>
					<div class="col s12 no-padding">
						{!!Form::submit('Filtrar', ['class'=>'waves-effect waves-light btn right'])!!}
					</div>
				{!!Form::close()!!} 
			</div>
		</div>
	</div>
</main>

@endsection
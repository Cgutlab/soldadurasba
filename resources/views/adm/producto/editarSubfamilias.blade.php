@extends('adm.main')

@section('titulo', 'Editar subfamilias')

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
				{{ session('success')}}
			</div>
		@endif
		<div class="row">
			<div class="col s12">
				<table class="highlight bordered">
					<legend style="margin-bottom: 30px; font-weight: bold;">{!! $familia->title !!}</legend>
					<thead>
						<td class="capitalize">Nombre</td>
						<td>Orden</td>
						<td class="text-right">Acciones</td>
					</thead>
					<tbody>
						@foreach($subfamilias as $subfamilia)
							<tr>
								<td>{!! $subfamilia->title !!}</td>
								<td>{!! $subfamilia->order !!}</td>
								<td class="text-right flex-action">
									<a href="{{ route('producto.subfamilia.edit', $subfamilia->id) }}"><i title="Editar" class="material-icons">create</i></a>
									{!!Form::open(['class'=>'en-linea', 'route'=>['producto.subfamilia.destroy', $subfamilia->id], 'method' => 'DELETE'])!!}
										<button type="submit" class="submit-button confirmar">
											<i title="Eliminar" class="material-icons red-text">cancel</i>
										</button>
									{!!Form::close()!!}
								</td>
							</tr>
						@endforeach
					</tbody>
			</table>			
			</div>
		</div>
    </div>
</main>


@endsection
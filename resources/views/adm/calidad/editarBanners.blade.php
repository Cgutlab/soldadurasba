@extends('adm.main')

@section('titulo', 'Editar Banners')

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
					<table class="highlight bordered">
						<thead>
							<td>Imagen</td>
							<td>Orden</td>
							<td class="text-right">Acciones</td>
						</thead>
						<tbody>
							@foreach($banners as $banner)
								<tr>
									<td><img class="slider-foto" src="{{ asset("images/banners/".$banner->image) }}" width="300px"></td>
									<td>{!! $banner->order !!}</td>
									<td class="text-right">
										<a href="{{ route('calidad.banner.edit',$banner->id) }}"><i title="Editar" class="material-icons">create</i></a>
										{!!Form::open(['class'=>'en-linea', 'route'=>['banner.destroy', $banner->id], 'method' => 'DELETE'])!!}
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
<header>	
	<div class="z-depth-0 row" style="padding: 30px 0 10px;">
		<div class="container" style="width: 85%;">
			<div class="row centrado">
				<div class="col s12 m12 l6">
		      		<a href="{{ route('home') }}" class="brand-logo"><img src="{{ asset('images/logos/'. $logoh->image) }}"></a>
		      	</div>
		      	<div class="col offset-s4 s2 fs18 centrado hide-on-med-and-down" style="padding-right: 30px;">
		      		<a class="gris-claro" href="mailto:{{ $correo->description }}">
		      			{{ $correo->description }}
		      		</a>
		      	</div>
		      	<div class="col s3 right centrado hide-on-med-and-down" style="justify-content: space-between; border-left: 1px solid #DDD;">
		      		{!! Form::open(['route'=> 'buscador', 'method' => 'post', 'class' => 'buscador']) !!}
	                    <button type="submit" style="margin-left: 10px;"><i class="fas fa-search" style="margin-right: 10px; width: 15px;"></i></button>
			      		<input type="search" name="busqueda" placeholder="Estoy buscando..." autocomplete="off" style="margin-bottom: 15px;">
		      		{!! Form::close() !!}
		      	</div>
	      	</div>
		</div>
	</div>
	<nav class="header z-depth-0 centrar hide-on-med-and-down" style="background:url({{ asset('images/cabecera_metal_3.jpg') }});">
		<div class="container">
		    <div class="nav-wrapper">
		      	<ul id="nav-mobile" class="">
		      		<li class="@if($active === 'empresa') activo @endif"><a class="centrado" href="{{ route('empresa') }}">Quiénes Somos</a></li>
		      		<li class="menu-global relative @if($active === 'producto') activo @endif"><a class="centrado" href="{{ route('familia') }}">Productos</a>
						<ul class="menu-padre">
							@foreach($familis as $item)
								<a class="gris" href="{{ route('subfamilia',$item->id) }}" style="color:#595959;height: initial; font-size: 14px;">
									<li class="gris fs14 left relative" style="border: none; position: relative;">{!! $item->title !!}
								</a>
										{{-- <ul class="menu-hijo">
											@foreach($subfamilis as $subitem)
												@if($item->id == $subitem->family_id)
													<a class="gris" href="{{ route('productos',$subitem->id) }}">
													<li class="gris fs14 left" style="border: none;">{!! $subitem->title !!}</li>
													</a>
												@endif
											@endforeach
										</ul> --}}
									</li>
								@endforeach
							</ul>
					</li>
		      		<li class="@if($active === 'garantia') activo @endif"><a class="centrado" href="{{ route('garantia') }}">Garantía</a></li>
                    <li class="@if($active === 'postventa') activo @endif"><a class="centrado" href="{{ route('postventa') }}">Post-Venta</a></li>
                    <li class="@if($active === 'descarga') activo @endif"><a class="centrado" href="{{ route('descarga') }}">Descargas</a></li>
                    <li class="@if($active === 'contacto') activo @endif"><a class="centrado" href="{{ route('contacto') }}">Contacto</a></li>
                    <li class="no-hover"><a class="centrado"><i class="blanco {{ $celular->image }}" style="margin-right: 10px;color:#FFF; font-size: 16px;"></i>{{ $celular->description }}</a></li>
                </ul>
            </div>
        </div>
    </nav>
</header>


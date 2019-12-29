 <footer style="background:url({{ asset('images/pie_oxireal_2.jpg') }}); ">
    <div class="container">
        <div class="row">
            <div class="col s12 l4">
                <div class="col s12">
                    <img src="{{ asset('images/logos/'. $logof->image) }}" alt="">
                </div>
                <div class="col s12 left blanco fs17">
                    <span style="margin-left: 20px;">Seguinos en @foreach($redesf as $redf) <a class="blanco" href="{{ $redf->route }}" target="__blank" title="{{ $redf->name }}" style="margin-left: 10px;"><i class="blanco no-margin {{$redf->image}}"></i> </a> @endforeach</span>
                </div>
            </div>
    	   	<div class="col s12 l5">
                <div class="col s4">
                    <ul class="sitemap">
                        <li><a href="{{ route('empresa') }}">Quiénes somos</a></li>
                        <li><a href="{{ route('familia') }}">Productos</a></li>
                    </ul>
                </div>  
                <div class="col s4">
                    <ul class="sitemap">
                        <li><a href="{{ route('garantia') }}">Garantía</a></li>
                        <li><a href="{{ route('postventa') }}">Post-venta</a></li>
                    </ul>
                </div>
                <div class="col s4">
                    <ul class="sitemap">
                        <li><a href="{{ route('descarga') }}">Descargas</a></li>
                        <li><a href="{{ route('contacto') }}">Contacto</a></li>
                    </ul>
                </div>
    	    </div>
           
        	<div class="col s12 l3">
                <div class="item-footer row blanco">
                    <div class="col l9 lighter mb15">
                        <div class="row">
                            <a href="" class="blanco">
                                <div class="col s1">    
                                    <i class="{{ $ubicacion->image }}" style="color:#ffab00;"></i>
                                </div>
                                <div class="col s10 blanco">
                                    {{ $ubicacion->description }}
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="item-footer row blanco">
                    <div class="col l9 lighter mb15">
                        <div class="row">
                            <a href="" class="blanco">
                                <div class="col s1">    
                                    <i class="{{ $telefono->image }}" style="color:#ffab00;"></i>
                                </div>
                                <div class="col s10 blanco">
                                    {{ $telefono->description }}
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="item-footer row blanco">
                    <div class="col l9 lighter mb15">
                        <div class="row">
                            <a href="" class="blanco">
                                <div class="col s1">    
                                    <i class="{{ $correo->image }}" style="color:#ffab00;"></i>
                                </div>
                                <div class="col s10 blanco">
                                    {{ $correo->description }}
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="linea" style="opacity: 0.3;"></div>
        <div class="blanco right mt10 mb10" style="opacity: 0.3;">By Osole</div>
    </div>
</footer>
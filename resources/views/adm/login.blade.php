<!DOCTYPE html>

<html lang="es">

<head>

    

    <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="">

    <meta name="author" content="">

    <title>Soldaduras Buenos Aires | Iniciar Sesión</title>


    <link href="{{ asset('css/materialize/materialize.min.css') }}" rel="stylesheet">

    <link href="{{ asset('css/estilos.css') }}" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="{{ asset('css/admin.css')}}">

    <link rel="stylesheet" type="text/css" href="{{ asset('css/login.css')}}">

    

    

    <!--Import Google Icon Font-->

    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Titillium+Web:300,400,600" rel="stylesheet">

    <link rel="shortcut icon" href="{{ asset('images/logos/favicon.png') }}" type="image/png">

    <link rel="icon" href="{{ asset('images/logos/favicon.png') }}" type="image/png">




</head>

<body>

</head>



<body>



    <main class="login">

        <div class="container">

            <div class="row">

                <div class="logo-login">

                    <img class="responsive-img" src="{{ asset('images/logos/adminlogo.png') }}">

                </div>

                {!!Form::open(['route'=>'login.store', 'method'=>'POST', 'class' => 'col s12'])!!}
                @csrf
                    <div class="row">

                        <div class="input-field col s12">

                            <i class="material-icons prefix">face</i>

                            {!!Form::text('user',null,['class'=>'validate'])!!}

                            {!!Form::label('user','Usuario')!!}

                        </div>

                    </div>

                    <div class="row">

                        <div class="input-field col s12">

                            <i class="material-icons prefix">https</i>

                            {!!Form::password('password',['class'=>'validate'])!!}

                            {!!Form::label('password','Contraseña')!!}

                        </div>

                    </div>



                    <a class="waves-effect waves-light btn right z-depth-0" style="padding: 0;"><input type="submit" value="Ingresar" style="width: 100%; height: 100%; padding: 0 2rem;"><a/>

                {!!Form::close()!!}

            </div>

        </div>

    </main>





    <!--Import jQuery before materialize.js-->

    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

    <script type="text/javascript" src="{{ asset('js/materialize/materialize.min.js') }}"></script>



</body>



</html>


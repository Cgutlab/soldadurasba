<!DOCTYPE html>

<html>
<style>
	body {
		font-family: Helvetica, sans-serif;
		color:#494949;
	}

	ul {
		list-style: none;
	}

	div{
		background-color: #F8F8F8;
		width: 85%
		border-radius:20px;
		padding: 1rem 2rem;
	}
</style>
<body>
	<div>
		<h2>Soldaduras Buenos Aires</h2>
		<h3>Asesoramiento</h3>
		<p>Enviado desde la web </p>
		<br>
		<h3>Datos del contacto</h3>
		<ul>
			<li><strong>Nombre:</strong> {{$nombre}}</li>
			<li><strong>Empresa:</strong> {{$empresa}}</li>
			<li><strong>Email:</strong> {{$email}}</li>
			<li><strong>Nº de serie:</strong> {{$serie}}</li>
			<li><strong>Marca:</strong> {{$marca}}</li>
			<li><strong>Modelo:</strong> {{$modelo}}</li>
			<br>
			<br>
			<h4>Mensaje:</h4>
			<p>{{$mensaje}}</p>
		</ul>
	</div>
</body>

</html>
</html>
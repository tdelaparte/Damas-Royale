<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.damasroyale.modelo.pojo.Usuario"%>
<%@ page import="com.damasroyale.modelo.pojo.Rank"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<title>Sala 01 - Damas Royale</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="js/logica/Damas.js"></script>
<script src="js/plugins/TextareaAutoHeight.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="icon" href="media/favicon.png">
<link rel="stylesheet" href="css/Tablero.css">
</head>
<body class="bg-light">
	<nav class="navbar navbar-expand-sm bg-light navbar-dark border-bottom shadow-sm">
		<a class="navbar-brand p-4"> <img class="img-fluid mx-auto d-block" src="media/banner.png" width="400"></a>
	</nav>
	<div class="container-fluid bg-light pt-3 mb-3">
		<div class="row">
			<div class="col-3 border shadow ml-4 rounded">
				<h2 class="p-2 text-dark">Oponente</h2>
				<hr>
				<div class="row mx-auto shadow m-3 p-2 rounded">
					<div class="col-5">
						<img class="img-fluid mx-auto d-block border" src="media/default.jpg" width="150">
					</div>
					<div class="col-7 mt-3">	
						<h1 class="text-center">Tom�s</h1>
						<p class="text-center">1200 PTS</p>
					</div>
				</div>
				
				<h2 class="p-2 text-dark">T�</h2>
				<hr>
				<div class="row mx-auto shadow m-3 p-2 rounded">
					<div class="col-5">
						<img class="img-fluid mx-auto d-block border" src="media/default.jpg" width="150">
					</div>
					<div class="col-7 mt-3">	
						<h1 class="text-center">Tomeu</h1>
						<p class="text-center">750 PTS</p>
					</div>
				</div>
			</div>
			<div class="col-5 border shadow mx-auto m-0 tablero rounded">
				<div class="row fila">
					<div class="col bg-light casilla round-top-left"></div>
					<div id="29" class="col bg-dark casilla"></div>
					<div class="col bg-light casilla"></div>
					<div id="30" class="col bg-dark casilla"></div>
					<div class="col bg-light casilla"></div>
					<div id="31" class="col bg-dark casilla"></div>
					<div class="col bg-light casilla"></div>
					<div id="32"class="col bg-dark casilla round-top-right"></div>
				</div>
				<div class="row fila">
					<div id="25" class="col bg-dark casilla"></div>
					<div class="col bg-light casilla"></div>
					<div id="26" class="col bg-dark casilla"></div>
					<div class="col bg-light casilla"></div>
					<div id="27" class="col bg-dark casilla"></div>
					<div class="col bg-light casilla"></div>
					<div id="28" class="col bg-dark casilla"></div>
					<div class="col bg-light casilla"></div>
				</div>
				<div class="row fila">
					<div class="col bg-light casilla"></div>
					<div id="21" class="col bg-dark casilla"></div>
					<div class="col bg-light casilla"></div>
					<div id="22" class="col bg-dark casilla"></div>
					<div class="col bg-light casilla"></div>
					<div id="23" class="col bg-dark casilla"></div>
					<div class="col bg-light casilla"></div>
					<div id="24" class="col bg-dark casilla"></div>
				</div>
				<div class="row fila">
					<div id="17" class="col bg-dark casilla"></div>
					<div class="col bg-light casilla"></div>
					<div id="18" class="col bg-dark casilla"></div>
					<div class="col bg-light casilla"></div>
					<div id="19" class="col bg-dark casilla"></div>
					<div class="col bg-light casilla"></div>
					<div id="20" class="col bg-dark casilla"></div>
					<div class="col bg-light casilla"></div>
				</div>
				<div class="row fila">
					<div class="col bg-light casilla"></div>
					<div id="13" class="col bg-dark casilla"></div>
					<div class="col bg-light casilla"></div>
					<div id="14" class="col bg-dark casilla"></div>
					<div class="col bg-light casilla"></div>
					<div id="15" class="col bg-dark casilla"></div>
					<div class="col bg-light casilla"></div>
					<div id="16" class="col bg-dark casilla"></div>
				</div>
				<div class="row fila">
					<div id="9" class="col bg-dark casilla"></div>
					<div class="col bg-light casilla"></div>
					<div id="10" class="col bg-dark casilla"></div>
					<div class="col bg-light casilla"></div>
					<div id="11" class="col bg-dark casilla"></div>
					<div class="col bg-light casilla"></div>
					<div id="12" class="col bg-dark casilla"></div>
					<div class="col bg-light casilla"></div>
				</div>
				<div class="row fila">
					<div class="col bg-light casilla"></div>
					<div id="5" class="col bg-dark casilla"></div>
					<div class="col bg-light casilla"></div>
					<div id="6" class="col bg-dark casilla"></div>
					<div class="col bg-light casilla"></div>
					<div id="7" class="col bg-dark casilla"></div>
					<div class="col bg-light casilla"></div>
					<div id="8" class="col bg-dark casilla"></div>
				</div>
				<div class="row fila">
					<div id="1" class="col bg-dark casilla round-bottom-left"></div>
					<div class="col bg-light casilla"></div>
					<div id="2" class="col bg-dark casilla"></div>
					<div class="col bg-light casilla"></div>
					<div id="3" class="col bg-dark casilla"></div>
					<div class="col bg-light casilla"></div>
					<div id="4" class="col bg-dark casilla"></div>
					<div class="col bg-light casilla round-bottom-right"></div>
				</div>
			</div>
			<div class="col-3 border shadow mr-4 rounded">
				<h2 class="p-2 text-dark">Chat</h2>
				<hr>
				<form class="mx-auto">
					<div class="form-group">
					  <textarea id="chat" class="form-control mt-2 mb-2 border-0 bg-light" readonly disabled style="resize: none"></textarea>
					</div>
					<div class="form-group">
					  <input id="message" class="form-control bg-white pl-2 text-bold font-weight-bold" name="mensaje" type="text" placeholder=" Env�a un mensaje a tu oponente.">
					</div>
				</form>
			</div>
		</div>
	</div>
	<footer id="sticky-footer"
		class=" p-3 bg-light text-dark border-top shadow-lg">
		<div class="container text-center">
			<small>Copyright &copy; 2020 Damas Royale by Tomeu de la
				Parte</small>
		</div>
	</footer>
</body>
</html>
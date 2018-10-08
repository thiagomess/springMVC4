<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="resources/css/bootstrap.min.css" rel="stylesheet"> 
<link href="resources/css/style-admin.css" rel="stylesheet"> 
<script src="resources/js/jquery.js"></script>	  
<script src="resources/js/bootstrap.min.js"></script>
<title>Menu</title>
</head>
<body>
<jsp:include page="_template.jsp" />

	<div class="container">

		<h2>Página inicial da Lista de Contas</h2>
		
		<p>Bem vindo, ${usuarioLogado.login}</p>
		<a href="listaContas">Clique aqui</a> para acessar a lista de contas <br/>
		<a href="form">Clique aqui</a> para acessar o cadastro de uma nova conta
		<br/><br/>
	
	</div>
</body>
</html>
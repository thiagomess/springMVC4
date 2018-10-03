<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu</title>
</head>
<body>
	<h2>Página inicial da Lista de Contas</h2>
	<p>Bem vindo, ${usuarioLogado.login}</p>
	<a href="listaContas">Clique aqui</a> para acessar a lista de contas <br/>
	<a href="form">Clique aqui</a> para acessar o cadastro de uma nova conta
	<br/><br/>
	
	<input  type="button"   onclick="location.href='efetuaLogoff'" value="Logoff">
</body>
</html>
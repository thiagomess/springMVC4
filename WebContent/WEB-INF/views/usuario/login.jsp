<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
	<form action="efetuaLogin" method="post">

		Usuario: <input type="text" name="login" placeholder="Digite seu usuário"/><br/>
		Senha: <input type="password" name="senha" placeholder="Digite sua senha"/><br/><br/>
		
		<input type="submit" value="Entrar" />
	</form>
</body>
</html>
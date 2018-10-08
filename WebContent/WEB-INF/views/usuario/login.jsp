<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="resources/css/bootstrap.min.css" rel="stylesheet"> 
<link href="resources/css/login.css" rel="stylesheet"> 
<script src="resources/js/jquery.js"></script>	  
<script src="resources/js/bootstrap.min.js"></script>
<title>Login</title>
</head>
<body>
	<form class="form-signin" action="efetuaLogin" method="post">
		
      <h1 class="h3 mb-3 font-weight-normal titulo">Login</h1>
      <label for="inputEmail" class="sr-only">usuario?</label>
      <input type="text" id="inputEmail" class="form-control"name="login"  placeholder="Digite o Usuario" required="true" autofocus="" autocomplete="off" style=" background-repeat: no-repeat; background-attachment: scroll; background-size: 16px 18px; background-position: 98% 50%; cursor: auto;">
      <label for="inputPassword" class="sr-only">Password</label>
      <input type="password" id="inputPassword" class="form-control" name="senha"  placeholder="Digite o password" required="true" autocomplete="off" style="background-repeat: no-repeat; background-attachment: scroll; background-size: 16px 18px; background-position: 98% 50%; cursor: pointer;">
     
      <button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>
      <p class="mt-5 mb-3 text-muted">© 2017-2018</p>
	</form>
</body>
</html>
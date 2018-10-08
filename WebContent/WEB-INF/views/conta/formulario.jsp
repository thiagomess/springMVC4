<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
	 <link href="resources/css/bootstrap.min.css" rel="stylesheet"> 
	 <link href="resources/css/style-admin.css" rel="stylesheet">
	 <script src="resources/js/jquery.js"></script>	  
	 <script src="resources/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Cadastro de Contas</title>
</head>
<body>

<jsp:include page="_template.jsp" />


	<div class="container">
	    <h3>Adicionar Contas</h3>
	    <form action="adicionaConta" method="post">
	    	<div class="form-group">
		        Descrição: <br/>
		        <textarea  class="form-control" name="descricao" rows="5" cols="100"></textarea> 
		        <form:errors path="conta.descricao"/>
			</div>  
		   	<div class="form-group">
		        Valor: <input class="form-control" type="text" name="valor" />
		        <form:errors path="conta.valor" />
		    </div>    
		    <div class="form-group">
		        Tipo: <br/>
		        <select name="tipo" class="form-control form-control-sm">
		            <option value="ENTRADA">Entrada</option>
		            <option value="SAIDA">Saída</option>
		        </select>
		        <form:errors path="conta.tipo"/>
		      </div>  
		        <button class="btn btn-success mb-2" type="submit" >Adicionar</button>
		        <button class="btn btn-primary mb-2" type="submit" formaction="listaContas" >Voltar</button>
	    </form>
	  </div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro de Contas</title>
</head>
<body>
    <h3>Adicionar Contas</h3>
    <form action="adicionaConta" method="post">
        Descrição: <br/>
        <textarea name="descricao" rows="5" cols="100"></textarea> 
        <form:errors path="conta.descricao"/>
        <br/>
        Valor: <input type="text" name="valor" />
        <form:errors path="conta.valor" />
        <br/>
        Tipo: <br/>
        <select name="tipo">
            <option value="ENTRADA">Entrada</option>
            <option value="SAIDA">Saída</option>
        </select>
        <form:errors path="conta.tipo"/>
        <br/><br/>
        <input type="submit" value="Adicionar"/>
    </form>
</body>
</html>
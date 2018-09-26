<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
        <br/>
        Valor: <input type="text" name="valor" /><br/>
        Tipo: <br/>
        <select name="tipo">
            <option value="ENTRADA">Entrada</option>
            <option value="SAIDA">Saída</option>
        </select>
        <br/><br/>
        <input type="submit" value="Adicionar"/>
    </form>
</body>
</html>
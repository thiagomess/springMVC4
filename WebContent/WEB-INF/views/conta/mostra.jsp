<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
<!DOCTYPE html>
<html>
<script type="text/javascript">

function optionCheck(){
    var option = document.getElementById("options").value;
    if(option == "SAIDA"){
        document.getElementById("divHidden").hidden=false;
    }
    if(option == "ENTRADA"){
    	document.getElementById("paga").checked = '';
    	document.getElementById("dataPagamento").value=""; 
    	document.getElementById("divHidden").hidden=true;
    }
}
</script>
<head>
<meta charset="UTF-8">
<title>Alterar Conta</title>
</head>
<body onload="optionCheck()">
	<h3>Altera Conta</h3>
	
	<form action="alteraConta" method="post">
		Descrição:<br/>
		<textarea name="descricao" rows="5" cols="100">${conta.descricao}</textarea>
		<br/>
		Valor:<input name="valor" type="text" value="${conta.valor}" />	<br/>
		Tipo:<br/>
		<select id="options" name="tipo" onchange="optionCheck()" >
			<option value="ENTRADA" ${conta.tipo=='ENTRADA' ? 'selected':''}>Entrada</option>
            <option value="SAIDA" ${conta.tipo=='SAIDA' ? 'selected':''}>Saída</option>
		</select>
		<br/>
		
		<div id="divHidden" hidden="false"  >
		Pago? <input id="paga" type="checkbox" name="paga" ${conta.paga?'checked':''}>
		<br/>
		Data de Pagamento:<input id="dataPagamento" type="text" name="dataPagamento" value="<fmt:formatDate value="${conta.dataPagamento.time}" pattern="dd/MM/yyyy" />"/>
		</div>
		<br/>
		<input type="hidden" name="id" value="${conta.id}"/>
		<input type="submit" value="Alterar"/>
		
			
	</form>


</body>
</html>


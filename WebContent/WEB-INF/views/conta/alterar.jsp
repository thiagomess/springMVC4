<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
<!DOCTYPE html>
<html>
<script type="text/javascript">
function seleciona(){
    var opcao = document.getElementById("options").value;
    if(opcao == "SAIDA"){
        document.getElementById("divHidden").hidden=false;
    }
    if(opcao == "ENTRADA"){
    	document.getElementById("paga").checked = '';
    	document.getElementById("dataPagamento").value=""; 
    	document.getElementById("divHidden").hidden=true;
    }
}
</script>
<head>
<link href="resources/css/bootstrap.min.css" rel="stylesheet"> 
<meta charset="UTF-8">
<title>Alterar Conta</title>
</head>
<body onload="seleciona()">
<jsp:include page="_template.jsp" />

	<div class="container">
		<h3>Altera Conta</h3>
		
		<form action="alteraConta" method="post">
			<div class="form-group">
				Descrição: <br/>
				<textarea class="form-control" name="descricao" rows="5" cols="100">${conta.descricao}</textarea>
			</div>
			<div class="form-group">
				Valor: <input class="form-control" name="valor" type="text" value="${conta.valor}" />
			</div>
			<div class="form-group">
				Tipo: 
				<select id="options" class="form-control" name="tipo" onchange="seleciona()" >
					<option value="ENTRADA" ${conta.tipo=='ENTRADA' ? 'selected':''}>Entrada</option>
		            <option value="SAIDA" ${conta.tipo=='SAIDA' ? 'selected':''}>Saída</option>
				</select>
			</div>
			<div id="divHidden" class="form-group" hidden="false"  >
				Pago?  <input  id="paga" type="checkbox" name="paga" ${conta.paga?'checked':''}>
				<br/>
				Data de Pagamento: <input class="form-control" id="dataPagamento" type="text" name="dataPagamento" value="<fmt:formatDate value="${conta.dataPagamento.time}" pattern="dd/MM/yyyy" />"/>
			</div>
				<input type="hidden" name="id" value="${conta.id}"/>
				<input class="btn btn-success mb-2" type="submit" value="Alterar"/>
				<button class="btn btn-primary mb-2" type="submit" formaction="listaContas" >Voltar</button>
				
		</form>
	</div>
</body>
</html>


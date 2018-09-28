<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
<!DOCTYPE html>
<html>

<script src="resources/js/jquery.js"></script>
<script type="text/javascript">
	/* manda o pagamento via AJAX de froma assincrona*/
	function pagaAgora(id) {
	    if(confirm("Deseja pagar conta?")){
	    $.post("pagarConta", {'id' : id}, function() {
	    	$("#conta_"+id).html("Paga");
	    	$("#btnPagar_"+id).html("");
	        /* alert("Conta Paga com sucesso"); */
	    });
	    } else {
	        alert("Ok, nada feito")
	    }
	}

</script>



<head>
<meta charset="UTF-8">
<title>Lista de Contas</title>
</head>
<body>
	<h3>Lista de Contas</h3>
	
	<table style="height: 10px; width: 775px;" border="1">
		 <tr>
		 	<th>Código</th>
		 	<th>Descrição</th>
		 	<th>Valor</th>
		 	<th>Tipo</th>
		 	<th>Paga</th>
		 	<th>Data de Pagamento</th>
		 	<th>Ações</th>
		  </tr>
		 
		 <c:forEach items="${todasContas}" var="conta">
		  <tr>
		  	<td>${conta.id}</td>
		  	<td>${conta.descricao}</td>
		  	<td>${conta.valor}</td>
		  	<td>${conta.tipo}</td>
		  	<td id="conta_${conta.id}">
		  		<c:if test="${conta.tipo =='ENTRADA'}">
		  			-------
		  		</c:if>
		  		<c:if test="${conta.tipo=='SAIDA' and conta.paga eq false}">
		  			Não paga
		  		</c:if>
		  		<c:if test="${conta.paga eq true}">
		  			Paga
		  		</c:if>
		  	</td>
		  	<td><fmt:formatDate value="${conta.dataPagamento.time}" pattern="dd/MM/yyyy"/> </td>
			<td>
				<c:if test="${conta.tipo=='SAIDA' and conta.paga eq false}">
					<span id="btnPagar_${conta.id}"> 
						<a href=""	onclick="pagaAgora(${conta.id})">Pagar</a> |
					</span>
				</c:if> 
				<a href="mostraConta?id=${conta.id}">Alterar</a> | 
				<a href="removerConta?id=${conta.id}">Remover</a>
			</td>
			</tr>
		  </c:forEach>
		  
		  
	
	
	
	</table>
	<a href="form">Adicionar nova conta</a>
</body>
</html>
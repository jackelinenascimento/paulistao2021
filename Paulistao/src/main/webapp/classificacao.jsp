<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href='<c:url value="./resources/css/styles.css"/>'>
<title>Paulistão 2021 - Classificação</title>
</head>
<body>
	<div>
		<jsp:include page="menu.jsp" />
	</div>
	<div align="center">
		<br />
		<H1>Paulistão 2021</H1>
	</div>

	<div class="classificacao bordertop">
		<H2>Classificação Geral</H2>
		<form action="classificacao" method="post">
			<input class="button" type="submit" id=class_geral name=class_geral
				value="Classificacao Geral">
		</form>
		<div>
			<table class="times">
				<tr>
					<th class='Resultado'>Time</th>
					<th class='Resultado'>Jogos</th>
					<th class='Resultado'>Vitorias</th>
					<th class='Reultado'>Empates</th>
					<th class='Resultado'>Derrotas</th>
					<th class='Resultado'>Gols Marcados</th>
					<th class='Resultado'>Gols Sofridos</th>
					<th class='Resultado'>Saldo de Gols</th>
					<th class='Resultado'>Pontos</th>
				</tr>
				<c:forEach items="${resultados}" var="r">
					<tr>
						<td align="center"><c:out value="${r.getTime()}"></c:out></td>
						<td align="center"><c:out value="${r.getPartidas()}"></c:out></td>
						<td align="center"><c:out value="${r.getVitorias()}"></c:out></td>
						<td align="center"><c:out value="${r.getEmpates()}"></c:out></td>
						<td align="center"><c:out value="${r.getDerrotas()}"></c:out></td>
						<td align="center"><c:out value="${r.getGolsMarcados()}"></c:out></td>
						<td align="center"><c:out value="${r.getGolsSofridos()}"></c:out></td>
						<td align="center"><c:out value="${r.getSaldoGols()}"></c:out></td>
						<td align="center"><c:out value="${r.getPontos()}"></c:out></td>
					</tr>
				</c:forEach>
			</table>
		</div>
</body>
</html>
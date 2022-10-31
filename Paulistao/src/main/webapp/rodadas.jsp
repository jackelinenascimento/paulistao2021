<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href='<c:url value="./resources/css/styles.css"/>'>
<title>Paulistão 2021 - Rodadas</title>
</head>
<body>
	<div>
		<jsp:include page="menu.jsp" />
	</div>
	<div align="center">
		<br />
		<H1>Paulistão 2021</H1>
	</div>
	
		<div class="jogos bordertop">
		<form action="rodadas" method="post">
			<input type="date" name="data">
			<button class="button">Buscar Rodada</button>
		</form>
		<table class="times">
			<tr>
				<th class='Jogo'>Time A</th>
				<th class='Jogo'>Time B</th>
				<th class='Jogo'>Gols (Time A)</th>
				<th class='Jogo'>Gols(Time B)</th>
				<th class='Jogo'>Data da Rodada</th>
			</tr>
			<c:forEach items="${jogos}" var="j">
				<tr>
					<td align="center"><c:out value="${j.getTimeA()}"></c:out></td>
					<td align="center"><c:out value="${j.getTimeB()}"></c:out></td>
					<td align="center"><c:out value="${j.getGolsTimeA()}"></c:out></td>
					<td align="center"><c:out value="${j.getGolsTimeA()}"></c:out></td>
					<td align="center"><c:out value="${j.getData()}"></c:out></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<div align="center">
		<c:if test="${not empty saida}">
			<h4>
				<c:out value="${saida}"></c:out>
			</h4>
		</c:if>
		<br />
		<div align="center">
			<c:if test="${not empty erro}">
				<h4>
					<c:out value="${erro}"></c:out>
				</h4>
			</c:if>
		</div>
	</div>
</body>
</html>
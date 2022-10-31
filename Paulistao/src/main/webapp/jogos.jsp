<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href='<c:url value="./resources/css/styles.css"/>'>
<title>Paulistão 2021 - Jogos</title>
</head>
<body>
	<div>
		<jsp:include page="menu.jsp" />
	</div>
	<div align="center">
		<br />
		<H1>Paulistão 2021</H1>
	</div>
	
	<div class="jogos bordertop" align="center">
		<form action="jogos" method="post">
			<input type="submit" class="button" id=gerar_jogos name=gerar_jogos
				value="Gerar Jogos">
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
</body>
</html>
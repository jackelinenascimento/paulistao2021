<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href='<c:url value="./resources/css/styles.css"/>'>
<title>Paulistão 2021 - Quartas de Finais</title>
</head>
<body>
	<div>
		<jsp:include page="menu.jsp" />
	</div>
	<div align="center">
		<br />
		<H1>Paulistão 2021</H1>
		<H2>Quartas de Finais</H2>
	</div>
	<div class="quartas-de-finais">
		<form action="finais" method="post">
			<input class="button" type="submit" id=mostrar_quartas name=mostrar_quartas
				value="Gerar Quartas de Finais">
		</form>
		<div>
			<table class="times">
				<tr>
					<th class='Quartas'>Time A</th>
					<th class='Quartas'>Time B</th>
				</tr>
				<c:forEach items="${jogos}" var="j">
					<tr>
						<td align="center"><c:out value="${j.getTimeA()}"></c:out></td>
						<td align="center"><c:out value="${j.getTimeB()}"></c:out></td>
						
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>
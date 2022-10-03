<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href='<c:url value="./resources/css/styles.css"/>'>
<title>Paulistão 2021 - Times</title>
</head>
<body>
	<div>
		<jsp:include page="menu.jsp" />
	</div>
	<div align="center">
		<br />
		<H1>Paulistão 2021</H1>
		<H2>Lista de Times Participantes</H2>
	</div>
	<div class="div-times">
		<table class="times">
			<tr>
				<th align="center">Nome</th>
				<th align="center">Cidade</th>
				<th align="center">Estádio</th>
			</tr>
			<c:forEach items="${times}" var="t">
				<tr>
					<td align="center"><c:out value="${t.getNome() }"></c:out></td>
					<td align="center"><c:out value="${t.getCidade() }"></c:out></td>
					<td align="center"><c:out value="${t.getEstadio() }"></c:out></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>
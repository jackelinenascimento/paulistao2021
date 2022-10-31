<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href='<c:url value="./resources/css/styles.css"/>'>
<title>Paulistão 2021 - Grupos</title>
</head>
<body>
	<div>
		<jsp:include page="menu.jsp" />
	</div>
	<div align="center">
		<br />
		<H1>Paulistão 2021</H1>
		<H2 class="bordertop" >Grupos</H2>
	</div>

	<div class="grupos">

		<div class="div-grupo">
			<table class="times">
				<tr>
					<th align="center">GRUPO A</th>
				</tr>

				<c:forEach items="${grupoTimes}" var="v">

					<c:if test="${v.getGrupo() == 'A'}">

						<tr>
							<td align="center"><c:out value="${v.getTime() }"></c:out></td>
						</tr>

					</c:if>

				</c:forEach>

			</table>
		</div>

		<div class="div-grupo">
			<table class="times">
				<tr>
					<th align="center">GRUPO B</th>
				</tr>

				<c:forEach items="${grupoTimes}" var="v">

					<c:if test="${v.getGrupo() == 'B'}">

						<tr>
							<td align="center"><c:out value="${v.getTime() }"></c:out></td>
						</tr>

					</c:if>

				</c:forEach>

			</table>
		</div>

		<div class="div-grupo">
			<table class="times">
				<tr>
					<th align="center">GRUPO C</th>
				</tr>

				<c:forEach items="${grupoTimes}" var="v">

					<c:if test="${v.getGrupo() == 'C'}">

						<tr>
							<td align="center"><c:out value="${v.getTime() }"></c:out></td>
						</tr>

					</c:if>

				</c:forEach>

			</table>
		</div>

		<div class="div-grupo">
			<table class="times">
				<tr>
					<th align="center">GRUPO D</th>
				</tr>

				<c:forEach items="${grupoTimes}" var="v">

					<c:if test="${v.getGrupo() == 'D'}">

						<tr>
							<td align="center"><c:out value="${v.getTime() }"></c:out></td>
						</tr>

					</c:if>

				</c:forEach>

			</table>
		</div>
	</div>

</body>
</html>
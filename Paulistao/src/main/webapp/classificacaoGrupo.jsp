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

		<div>
			<H2 class="estilo-div" >Classificação por Grupo</H2>
			<form action="classificacaoGrupo" method="post">
				<input class="button" type="submit" id=grupos name=grupos
					value="Classificacao por Grupo">
			</form>
		</div>
		<div>
			<h4>Grupo A</h4>
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
				<c:forEach items="${resultadoGrupoA}" var="resA">
					<tr>
						<td align="center"><c:out value="${resA.getTime()}"></c:out></td>
						<td align="center"><c:out value="${resA.getPartidas()}"></c:out></td>
						<td align="center"><c:out value="${resA.getVitorias()}"></c:out></td>
						<td align="center"><c:out value="${resA.getEmpates()}"></c:out></td>
						<td align="center"><c:out value="${resA.getDerrotas()}"></c:out></td>
						<td align="center"><c:out value="${resA.getGolsMarcados()}"></c:out></td>
						<td align="center"><c:out value="${resA.getGolsSofridos()}"></c:out></td>
						<td align="center"><c:out value="${resA.getSaldoGols()}"></c:out></td>
						<td align="center"><c:out value="${resA.getPontos()}"></c:out></td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<div>
			<h4>Grupo B</h4>
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
				<c:forEach items="${resultadoGrupoB}" var="resB">
					<tr>
						<td align="center"><c:out value="${resB.getTime()}"></c:out></td>
						<td align="center"><c:out value="${resB.getPartidas()}"></c:out></td>
						<td align="center"><c:out value="${resB.getVitorias()}"></c:out></td>
						<td align="center"><c:out value="${resB.getEmpates()}"></c:out></td>
						<td align="center"><c:out value="${resB.getDerrotas()}"></c:out></td>
						<td align="center"><c:out value="${resB.getGolsMarcados()}"></c:out></td>
						<td align="center"><c:out value="${resB.getGolsSofridos()}"></c:out></td>
						<td align="center"><c:out value="${resB.getSaldoGols()}"></c:out></td>
						<td align="center"><c:out value="${resB.getPontos()}"></c:out></td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<div>
			<h4>Grupo C</h4>
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
				<c:forEach items="${resultadoGrupoC}" var="resC">
					<tr>
						<td align="center"><c:out value="${resC.getTime()}"></c:out></td>
						<td align="center"><c:out value="${resC.getPartidas()}"></c:out></td>
						<td align="center"><c:out value="${resC.getVitorias()}"></c:out></td>
						<td align="center"><c:out value="${resC.getEmpates()}"></c:out></td>
						<td align="center"><c:out value="${resC.getDerrotas()}"></c:out></td>
						<td align="center"><c:out value="${resC.getGolsMarcados()}"></c:out></td>
						<td align="center"><c:out value="${resC.getGolsSofridos()}"></c:out></td>
						<td align="center"><c:out value="${resC.getSaldoGols()}"></c:out></td>
						<td align="center"><c:out value="${resC.getPontos()}"></c:out></td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<div>
			<h4>Grupo D</h4>
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
				<c:forEach items="${resultadoGrupoD}" var="resD">
					<tr>
						<td align="center"><c:out value="${resD.getTime()}"></c:out></td>
						<td align="center"><c:out value="${resD.getPartidas()}"></c:out></td>
						<td align="center"><c:out value="${resD.getVitorias()}"></c:out></td>
						<td align="center"><c:out value="${resD.getEmpates()}"></c:out></td>
						<td align="center"><c:out value="${resD.getDerrotas()}"></c:out></td>
						<td align="center"><c:out value="${resD.getGolsMarcados()}"></c:out></td>
						<td align="center"><c:out value="${resD.getGolsSofridos()}"></c:out></td>
						<td align="center"><c:out value="${resD.getSaldoGols()}"></c:out></td>
						<td align="center"><c:out value="${resD.getPontos()}"></c:out></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>

</body>
</html>
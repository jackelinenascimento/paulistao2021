<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href='<c:url value="./resources/css/styles.css"/>'>
<title>Paulistão 2021 - Home</title>
</head>
<body class="">
	<div>
		<jsp:include page="menu.jsp" />
	</div>
	<div align="center">
		<br />
		<H1>Paulistão 2021</H1>
	</div>
	<div align="center">
		<a href="grupos" class="button">Grupos</a>
		<a href="datas" class="button">Datas dos Jogos</a>
	</div>
	<main>
		<img class="imagem" src="./resources/img/logo.webp">
	</main>
</body>
</html>
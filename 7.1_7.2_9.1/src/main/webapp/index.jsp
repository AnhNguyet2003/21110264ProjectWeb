<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Murach's Java Servlets and JSP</title>
<link rel="stylesheet" href="styles/main.css" type="text/css" />
</head>
<body>

	<h1>List of albums</h1>

	<c:if test="${cookies.firstNameCookie.value != null}">
		<p>
			Welcome back,
			<c:out value='${cookie.firstNameCookie.value}' />
		</p>
	</c:if>

	<p>
		<a href="download?action=checkUser&amp;productCode=8601"> 86 (the
			band) - True Life Songs and Pictures </a><br> <a
			href="download?action=checkUser&amp;productCode=pf01"> Paddlefoot
			- The First CD </a><br> <a
			href="download?action=checkUser&amp;productCode=pf02"> Paddlefoot
			- The Second CD </a><br> <a
			href="download?action=checkUser&amp;productCode=jr01"> Joe Rut -
			Genuine Wood Grained Finish </a>
	</p>

	<button type="submit">
		<a href="https://profile-x42w.onrender.com/profile"> Back Home</a>
	</button>
</body>
</html>

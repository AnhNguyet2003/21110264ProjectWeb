<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Murach's Java Servlets and JSP</title>
<link rel="stylesheet" href="main.css" type="text/css" />
</head>
<body>
	<h1>CD list</h1>
	<table>
		<tr>
			<th>Description</th>
			<th class="right">Price</th>
			<th>&nbsp;</th>
		</tr>
		<c:forEach var="product" items="${products}">
			<tr>
				<td><c:out value='${product.description}' /></td>
				<td class="right">${product.priceCurrencyFormat}</td>
				<td><form action="cart" method="post">
						<input type="hidden" name="productCode"
							value="<c:out value='${product.code}'/>"> <input
							type="submit" value="Add To Cart">
					</form></td>
			</tr>
		</c:forEach>
	</table>
	<br><br>
	<form action="cart.jsp" method="post">
		<input type="submit" value=" Your cart">
	</form>
	<br>
	 <button type="submit">
		<a href="https://profile-x42w.onrender.com/profile" class="margin_left"> Back Home</a>
	</button>
</body>
</html>
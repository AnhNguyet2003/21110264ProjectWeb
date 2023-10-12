<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	 <meta charset="UTF-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="main.css" type="text/css"/>
</head>
<body>
	<h1>Thanks for talking our survey!</h1>

    <p>Here is the information that you entered:</p>

    <label>Email:</label>
    <span>${user.email}</span><br>
    
    <label>First Name:</label>
    <span>${user.firstName}</span><br>
    
    <label>Last Name:</label>
    <span>${user.lastName}</span><br>
    
    <label>Date of Birth:</label>
    <span>${user.dateOfbirth}</span><br>
    
    <label>Heard From:</label>
    <span>${user.heardFrom}</span><br>
    
    <label>Updates: </label>
    <c:set var="ud" value="${user.updates}" />    
    <c:if test="${ud ne 'No'}">
    	<label>Yes</label><br>
    	<label>Contact Via: </label> 
   		<span>${user.contactVia}</span><br>
    </c:if>
    <c:if test="${ud eq 'No'}">
    	<span>${user.updates}</span><br>
    </c:if>
    
   	<form action="" method="get">
        <input type="hidden" name="action" value="join">
        <input type="submit" value="Return">
    </form> 
</body>
</html>
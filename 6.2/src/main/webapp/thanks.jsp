<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="main.css" type="text/css"/>
</head>
<body>
    <h1>Thanks for joining our email list</h1>

    <p>Here is the information that you entered:</p>

    <label>Email:</label>
    <span>${user.email}</span><br>
    
    <label>First Name:</label>
    <span>${user.firstName}</span><br>
    
    <label>Last Name:</label>
    <span>${user.lastName}</span><br>
    
    <label>Date of Birth:</label>
    <span>${user.dateOfbirth}</span><br>
    
    <h1>How did you hear about us?</h1> 
    <span>${user.heardFrom}</span><br>
    
    <h1>Would you like to receive announcements about new CDs and special offers?</h1> 
    <c:set var="ud" value="${user.updates}" />
    <c:if test="${ud eq 'No'}">
    	<p>You don't receive announcements about new CDs and special offers </p>
    </c:if>
    <c:set var="ud" value="${user.updates}" />
    <c:if test="${ud ne 'No'}">
    	<span>${user.updates}</span><br>
    </c:if>
    
	<h1>Contact</h1>
  	 <span>${user.contactVia}</span><br>
  	
<p>To enter another email address, click on the Back 
    button in your browser or the Return button shown 
    below.</p>

    <form action="" method="get">
        <input type="hidden" name="action" value="join">
        <input type="submit" value="Return">
    </form> 
</body>
</html>

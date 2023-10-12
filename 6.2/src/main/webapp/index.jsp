<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.time.LocalDate" %>
<%@ page language="java" import="javax.servlet.jsp.el.*" %> 
<!DOCTYPE html>
<html>
<head>
 	<meta charset="UTF-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="main.css" type="text/css"/>
</head>
<body>
	<img src="data:image/jpeg;base64,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" alt="LOGO" width="100" height="100">
    <h1>Survey</h1>
    <p>If you have a moment, we'd appreciate it if you would fill out this survey.</p>
    <h1>Your Information</h1>
    <form action="survey" method="post">
        <input type="hidden" name="action" value="add">

        <label class="pad_top">Email:</label>
        <input type="email" name="email" value="${user.email}" required><br>

        <label class="pad_top">First Name:</label>
        <input type="text" name="firstName" value="${user.firstName}" required><br>

        <label class="pad_top">Last Name:</label>
        <input type="text" name="lastName" value="${user.lastName}" required><br>
        
        <label class="pad_top">Date of Birth:</label>
        <input type="date" name="dateOfbirth" value="${user.dateOfbirth}" required><br>
        
     <h1>How did you hear about us?</h1> 
     	<input type="radio" name="my_radio" value="Search engine" required>Search engine
     	<input type="radio" name="my_radio" value="Word of mouth" required>Word of mouth
     	<input type="radio" name="my_radio" value="Social Media" required>Social Media
     	<input type="radio" name="my_radio" value="Other" required>Other
     	
	 <h1>Would you like to receive announcements about new CDs and special offers?</h1> 
	 	<input type="checkbox" name="cb" value="YES, I'd like that">YES, I'd like that<br>
		<input type="checkbox" name="cb" value="YES, please send me email announcements">YES, please send me email announcements<br><br>
		
	 	<h1>Please contact me by:</h1>
	 	
        <select 
        	name="contact-method" id="contact-method">
	  		<option value="email_or_postal_mail">Email or postal mail</option>
	 		<option value="email_only">Email only</option>
	  		<option value="postal_mail_only">Postal mail only</option>
		</select>
		
        <label>&nbsp;</label>
        <br>
        <input type="submit" value="Submit" id="submit"> 
    </form>
    <br>
     <button type="submit">
		<a href="https://profile-x42w.onrender.com/profile" class="margin_left"> Back Home</a>
	</button> 
</body>
</html>
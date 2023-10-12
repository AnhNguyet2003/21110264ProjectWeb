<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="main.css" type="text/css"/>
</head>

<body>
	<%request.setCharacterEncoding("UTF-8"); %>
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
    <%
    String mr = request.getParameter("my_radio");
    out.println(mr);
  	%>
  	
    <h1>Would you like to receive announcements about new CDs and special offers?</h1> 
    <%
	  String myCheckbox1 = request.getParameter("cb1");
	  String myCheckbox2 = request.getParameter("cb2");
	
	  if (myCheckbox1 != null && myCheckbox2 == null) 
	  {
	  	out.println(myCheckbox1);
	  }
	  else if (myCheckbox1 == null && myCheckbox2 != null) 
	  {
	    out.println(myCheckbox2);
	  } 
	  else if (myCheckbox1 != null && myCheckbox2 != null)
	  {
	    out.println(myCheckbox1 + " and " + myCheckbox2);
	  } 
	  else
	  {
		  out.println("You don't want receive announcements about new CDs and special offers");
	  }
	%>
	
	<h1>Contact:</h1>
  	<%
    String ct= request.getParameter("contact-method");
    out.println(ct);
  	%>
  	
<p>To enter another email address, click on the Back 
    button in your browser or the Return button shown 
    below.</p>

    <form action="" method="get">
        <input type="hidden" name="action" value="join">
        <input type="submit" value="Return">
    </form>

</body>
</html>

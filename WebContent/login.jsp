<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FACULTY HOME PAGE</title>

<style>

.c
{
    margin-top:10px;
    margin-left:-100px;
}

</style>


</head>


	<body background="aa.jpg">
<% session.invalidate(); %>
<center>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<h1><font size="10dp">FACULTY LOGIN PAGE</font></h1>
<form action="LoginServlet1" method="post">
<table>
   <tr><td><strong>USERNAME</strong></td><td><input type="email" name="email" /></td></tr>
   <tr><td><strong>PASSWORD</strong></td><td><input type="password" name="pwd" /></td></tr>
   <tr><td>        </td><td><input type="submit" value="Login" /></td>
   
   <td>
   <div class="c">
   <a href="forgotpassword.html"><font color="#ffffff">forgot password?</font></a>
    </div>
   </td>
  
   
   
   </tr>
</table>

<%
if(request.getParameter("error")!=null)
{
	out.println("<h1><font color=red>"+request.getParameter("error")+"</font>");
}

%>
</form>
</center>

	


</body>
</html>
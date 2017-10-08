<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>  
<%@ page import="com.dl.dao.*" %>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UPDATE STUDENT DETAILS</title>
<link rel="stylesheet" href="MyCSS.css">
</head>
<body background="txtrs.jpg" text="maroon">
<img alt="Update" src="update.jpg">

<%
 String sql="select * from student";
 DLDAO obj=new DLDAO();
 ResultSet rs=obj.FetchAll(sql);
%>
<center>
<h1><font color="red">STUDENT DETAILS</font></h1>
<form action="Updt.jsp" method="post">
<table border="1">
  <tr>
     <th>  </th>
    <th>Id</th>
	<th>First Name</th>
	<th>Last Name</th>
    <th>USERNAME</th>
    <th>PASSWORD</th>
    <th>EMAIL</th>
    <th>DOB</th>
    <th>CONTACT</th>
    <th>Course</th>
   </tr>
  <%  while(rs.next()){ %>
    <tr>
        <td><input type="radio" name="rid" value="<%=rs.getString(1)%>" /> </td>
        <td><%=rs.getString(1) %></td>
        <td><%=rs.getString(2) %></td>
        <td><%=rs.getString(3) %></td>
        <td><%=rs.getString(4) %></td>
        <td><%=rs.getString(5) %></td>
        <td><%=rs.getString(6) %></td>
        <td><%=rs.getString(7) %></td>
        <td><%=rs.getString(8) %></td>
        <td><%=rs.getString(9) %></td>
    </tr>
  <%} %>
  
 </table>
 <input type="submit" value="Search" />
 </form>



<%
  if(request.getParameter("rid")!=null)
  {
	  
	  out.println(request.getParameter("rid"));
	  String sql1="select * from student where id=?";
	  DLDAO obj1=new DLDAO();
	  ResultSet rs1= obj1.FetchID(sql1, request.getParameter("rid"));
	  out.print("<form method=post action=updtt>");
      out.print("<table border=1>");	  
	  while(rs1.next())
	  {
		 out.println("<tr><td>ID</td><td><input type='text' name='id' value='"+rs1.getString(1)+"' readonly=readonly/></td></tr>");
		 out.println("<tr><td>First Name</td><td><input type='text' name='first' value='"+rs1.getString(2)+"' /></td></tr>");
		 out.println("<tr><td>Last name</td><td><input type='text' name='last' value='"+rs1.getString(3)+"' /></td></tr>");
		 out.println("<tr><td>Username</td><td><input type='text' name='uname' value='"+rs1.getString(4)+"' /></td></tr>");
		 out.println("<tr><td>PASSWORD</td><td><input type='text' name='pwd' value='"+rs1.getString(5)+"' /></td></tr>");
		 out.println("<tr><td>EMAIL</td><td><input type='text' name='email' value='"+rs1.getString(6)+"' /></td></tr>");
		 out.println("<tr><td>DOB</td><td><input type='text' name='dob' value='"+rs1.getString(7)+"' /></td></tr>");
		 out.println("<tr><td>CONTACT</td><td><input type='text' name='contact' value='"+rs1.getString(8)+"' /></td></tr>");
		 out.println("<tr><td>COURSE</td><td><input type='text' name='course' value='"+rs1.getString(9)+"' /></td></tr>");
		  
		  
	  }
	  out.print("</table>");
	  out.print("<input type=submit value=UPDATE />");
	  out.print("</form>");
  }
%>
</center>


</body>
</html>
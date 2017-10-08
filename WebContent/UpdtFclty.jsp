<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>  
<%@ page import="com.ibm.dao.*" %>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UPDATE FACULTY DETAILS</title>
<link rel="stylesheet" href="MyCSS.css">
</head>
<body background="txtrs.jpg" text="maroon">
<img alt="Update" src="update.jpg">

<%
 String sql="SELECT * FROM register";
 CABDAO1 obj=new CABDAO1();
 ResultSet rs=obj.FetchAll(sql);
%>
<center>
<h1><font color="red">FACULTY DETAILS</font></h1>
<form action="UpdtFclty.jsp" method="post">
<table border="1">
  <tr>
     <th>  </th>
    <th>Id</th>
	 <th>EMAIL</th>
    <th>USERNAME</th>
    <th>PASSWORD</th>
    <th>CONTACT</th>
   </tr>
  <%  while(rs.next()){ %>
    <tr>
        <td><input type="radio" name="rid" value="<%=rs.getString(1)%>" /> </td>
        <td><%=rs.getString(1) %></td>
        <td><%=rs.getString(2) %></td>
        <td><%=rs.getString(3) %></td>
        <td><%=rs.getString(4) %></td>
        <td><%=rs.getString(5) %></td>
       
    </tr>
  <%} %>
  
 </table>
 <input type="submit" value="Search" />
 </form>



<%
  if(request.getParameter("rid")!=null)
  {
	  
	  out.println(request.getParameter("rid"));
	  String sql1="SELECT * FROM register WHERE ID=?";
	  CABDAO1 obj1=new CABDAO1();
	  ResultSet rs1= obj1.FetchID(sql1, request.getParameter("rid"));
	  out.print("<form method=post action=updatefaculty1>");
      out.print("<table border=1>");	  
	  while(rs1.next())
  {	
out.println("<tr><td>ID</td><td><input type='text' name='id' value='"+rs1.getString(1)+"' readonly=readonly/></td></tr>");
out.println("<tr><td>EMAIL</td><td><input type='text' name='email' value='"+rs1.getString(2)+"' /></td></tr>");
out.println("<tr><td>USERNAME</td><td><input type='text' name='uname' value='"+rs1.getString(3)+"' /></td></tr>");
out.println("<tr><td>PASSWORD</td><td><input type='text' name='pwd' value='"+rs1.getString(4)+"' /></td></tr>");
		 
out.println("<tr><td>CONTACT</td><td><input type='text' name='contact' value='"+rs1.getString(5)+"' /></td></tr>");
	  }
	  out.print("</table>");
	  out.print("<input type=submit value='UPDATE'/>");
	  out.print("</form>");
  }
%>
</center>


</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.dl.dao.*" %>
<%@ page import="java.sql.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Student</title>
<link rel="stylesheet" href="MyCSS.css">
</head>
<body background="bg.jpg" text="maroon">
<center>
<h1><font color=yellow size=25>Search Students by Username</font></h1>
<form action="SrchStdtUname.jsp" method="post">
<input type="text" name="uname">
<input type="submit" value="SEARCH">


</form>

<%

if(request.getParameter("uname")!=null)
{
	String uname=request.getParameter("uname");
	out.println("<h3><font size=12 color=red>"+uname+"</font></h3>");
	String sql="SELECT * FROM student WHERE uname=?";
	DLDAO obj=new DLDAO();
	ResultSet rs=obj.FetchUname(sql,uname);


%>

<table>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
           		<th>USERNAME</th>
            	<th>PASSWORD</th>
            	<th>EMAIL</th>
            	<th>DOB</th>
            	<th>CONTACT</th>
            	<th>Course</th>
            </tr>
        <%while(rs.next()){ %>
	
            <tr>
				<td><%=rs.getString(2) %></td>
                <td><%=rs.getString(3) %></td>
                <td><%=rs.getString(4) %></td>
                <td><%=rs.getString(5) %></td>
                <td><%=rs.getString(6) %></td>
                <td><%=rs.getString(7) %></td>
                <td><%=rs.getString(8) %></td>
                <td><%=rs.getString(9) %></td>
                
            </tr>
         <%} }%>
	

</table>
</center>


</body>
</html>
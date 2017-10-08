<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.ibm.dao.*" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SEARCH FACULTY</title>
<link rel="stylesheet" href="MyCSS.css">
</head>
<body background="txtr1.jpg" text="green">
<img alt="Search" src="faculty.jpg">
<center>
<h1><font color="yellow">Enter Faculty ID to search:</font></h1>

<form action="SrchFclty.jsp" method="post">
<input type="text" name="id">

<input type="submit" value="FIND">
</form>


<%
if(request.getParameter("id")!=null)
{
	String id=request.getParameter("id");
	out.println("<h3><font size=12 color=red>"+id+"</font></h3>");
	String sql="SELECT * FROM register WHERE id=?";
	CABDAO1 obj=new CABDAO1();
	ResultSet rs=obj.FindFclty(sql,id);

%>

<table>
			<tr>
				<th>ID</th>
				<th>First Name</th>
				<th>Last Name</th>
           		<th>USERNAME</th>
            	<th>PASSWORD</th>
            	<th>EMAIL</th>
            	<th>DOB</th>
            	<th>CONTACT</th>            	
            </tr>
        <%while(rs.next()){ %>
	
            <tr>
				<td><%=rs.getString(1) %></td>
                <td><%=rs.getString(2) %></td>
                <td><%=rs.getString(3) %></td>
                <td><%=rs.getString(4) %></td>
                <td><%=rs.getString(5) %></td>
                           </tr>
	</table>
         	
         	<a  href="SrchFclty.jsp">FIND ANOTHER FACULTY</a>
			
         <%} }%>

</center>
</body>
</html>
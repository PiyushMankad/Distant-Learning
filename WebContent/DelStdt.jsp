<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.dl.dao.*" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Student Record</title>
<link rel="stylesheet" href="MyCSS.css">
</head>
<body background="txtrs.jpg" text="maroon">

<img alt="Delete" src="dlt.jpg">
<center><h1>Delete Student Details</h1></center>
<form action="DelStdt.jsp" method="post">
<h2>Enter Student Id to be Deleted:</h2>
<center>
<input type="text" name="id">
<br>
<input type="submit" value="FIND">

</form>
<%

if(request.getParameter("id")!=null)
{
	String id=request.getParameter("id");
	out.println("<h3><font size=12 color=red>"+id+"</font></h3>");
	String sql="SELECT * FROM student WHERE id=?";
	DLDAO obj=new DLDAO();
	ResultSet rs=obj.FindStdt(sql,id);


%>

<form action="dele" method="post">
<table>
			<tr>
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
        <%while(rs.next()){ %>
	
            <tr>
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

</table>
<br>
<input type="text" name="R" placeholder="Confirm ID to delete">
<br>
<input type="submit" value="CONFIRM">
 </form>
 <%} }%>
 <br>
<a  href="DelStdt.jsp">FIND ANOTHER STUDENT</a>

</center>


</body>
</html>
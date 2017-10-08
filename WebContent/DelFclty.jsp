<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>  
<%@ page import="com.ibm.dao.*" %>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DELETE FACULTY DETAILS</title>
<link rel="stylesheet" href="MyCSS.css">
</head>
<body background="t.jpg" text="maroon">
<br>
<br>
<br>
<br>
<br>
<br>
<%
 String sql="SELECT * FROM register";
 CABDAO1 obj=new CABDAO1();
 ResultSet rs=obj.FetchAll(sql);
%>
<center>
<h1><font color="red">FACULTY DETAILS</font></h1>
<form action="deletefaculty" method="post">
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
        <td><input type="checkbox" name="rid" value="<%=rs.getString(1)%>" /> </td>
        <td><%=rs.getString(1) %></td>
        <td><%=rs.getString(2) %></td>
        <td><%=rs.getString(3) %></td>
        <td><%=rs.getString(4) %></td>
        <td><%=rs.getString(5) %></td>
      
    </tr>
  <%} %>
  
 </table>
 <br>
 <input type="submit" value="!!DELETE!!" />
 </form>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>  
<%@ page import="com.dl.dao.*" %>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>COURSE UPDATE PANEL</title>
<link rel="stylesheet" href="MyCSS.css">
<style>
tr{color:green;}
th{color:blue;}</style>
</head>
<body background="back4.jpg" text="maroon">
<img alt="Update" src=""><br/><br/><br/><br/><br/><br/><br/><br/>

<%
 String sql="SELECT * FROM COURSE";
 DLDAO obj=new DLDAO();
 ResultSet rs=obj.FetchAll(sql);
%>
<center>
<h1><font color="#33ffcc">COURSE DETAILS</font></h1>
<form action="UpdtCourse.jsp" method="post">
<table border="1">
  <tr>
     <th>  </th>

	<th>Name</th>
	<th>Duration</th>
    <th>Details</th>
    <th>Trainer</th>
    <th>Eligibility</th>
    <th>Assignment</th>
    <th>Certification</th>
    
   </tr>
  <%  while(rs.next()){ %>
    <tr>
        <td><input type="radio" name="cid" value="<%=rs.getString(1)%>" /> </td>
        <td><%=rs.getString(1) %></td>
        <td><%=rs.getString(2) %></td>
        <td><%=rs.getString(3) %></td>
        <td><%=rs.getString(4) %></td>
        <td><%=rs.getString(5) %></td>
        <td><%=rs.getString(6) %></td>
        <td><%=rs.getString(7) %></td>
        
    </tr>
  <%} %>
  
 </table>
 <input type="submit" value="Search" />
 </form>



<%
  if(request.getParameter("cid")!=null)
  {
	  
	  out.println(request.getParameter("cid"));
	  String sql1="SELECT * FROM COURSE WHERE name=?";
	  DLDAO obj1=new DLDAO();
	  ResultSet rs1= obj1.FetchID(sql1, request.getParameter("cid"));
	  out.print("<form method=post action=updatecourse>");
      out.print("<table border=1>");	  
	  while(rs1.next())
	  {

		 out.println("<tr><td>Name</td><td><input type='text' name='name' size='48' value='"+rs1.getString(1)+"' /></td></tr>");
		 out.println("<tr><td>Duration</td><td><input type='text' name='duration' size='48' value='"+rs1.getString(2)+"' /></td></tr>");
		 out.println("<tr><td>Details</td><td><input type='textarea' rows='9' cols='50' maxlength='300'  name='details' value='"+rs1.getString(3)+"'></textarea></td></tr>");
		 out.println("<tr><td>Trainer</td><td><input type='text' name='trainer' size='48' value='"+rs1.getString(4)+"' /></td></tr>");
		 out.println("<tr><td>Eligibility</td><td><input type='text' name='eligibility' size='48' value='"+rs1.getString(5)+"' /></td></tr>");
		 out.println("<tr><td>Assignments</td><td><input type='text' name='assignments' size='48' value='"+rs1.getString(6)+"' /></td></tr>");
		 out.println("<tr><td>Certification</td><td><input type='text' name='certification' size='48' value='"+rs1.getString(7)+"' /></td></tr>");
		  		  
	  }
	  out.print("</table>");
	  out.print("<input type=submit value=UPDATE />");
	  out.print("</form>");
  }
%>
</center>


</body>
</html>
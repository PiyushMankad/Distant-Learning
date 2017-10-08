<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>  
<%@ page import="com.ibm.dao.*" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<% 

String email=session.getAttribute("facultysession").toString();
     
%>

<%
 String sql="select * from register";
 CABDAO1 obj=new CABDAO1();
 ResultSet rs=obj.fetchdetails(sql,email);
%>
<center>
<h1>USER DETAILS</h1>
<form action="workshops.jsp">
<select name="rid">
<%  while(rs.next()){ %>
    
    out.println("<option value='<%=rs.getString(1) %>' ><%=rs.getString(1) %></option>");
<%} %>
</select>
<input type="submit" value="search">
</form>


<%
  if(request.getParameter("rid")!=null)
  {
	  
	  out.println(request.getParameter("rid"));
	  String sql1="select * from register where id=?";
	  CABDAO1 obj1=new CABDAO1();
	  ResultSet rs1= obj1.fetchdetails(sql1, request.getParameter("rid"));
	  
	  out.print("<form method=post action=UpdateServlet>");
      out.print("<table border=1>");	  
	  while(rs1.next())
	  {
		 out.println("<tr><td>ID</td><td><input type='text' name='id' value='"+rs1.getString(1)+"' readonly=readonly/></td></tr>");
		 out.println("<tr><td>username</td><td><input type='text' name='uname' value='"+rs1.getString(2)+"' /></td></tr>");
		 out.println("<tr><td>PASSWORD</td><td><input type='text' name='pwd' value='"+rs1.getString(3)+"' /></td></tr>");
		 out.println("<tr><td>EMAIL</td><td><input type='text' name='email' value='"+rs1.getString(4)+"' /></td></tr>");
		
		 out.println("<tr><td>CONTACT</td><td><input type='text' name='contact' value='"+rs1.getString(5)+"' /></td></tr>");
			
		  
		  
	  }
	  out.print("</table>");
	  out.print("<input type=submit value=update />");
	  out.print("</form>");
  }
%>



</body>
</html>
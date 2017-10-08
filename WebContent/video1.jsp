<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.ibm.database.Database" %> 
    <%@ page import="java.sql.ResultSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="window.jpg">

<%

ResultSet rs1=null;
rs1=Database.videosget();
String url;
while(rs1.next()){

	url=rs1.getString(2); 
	
	%>

	<iframe width="200" height="200" src="<%=url %>?border=1&showinfo=0" frameborder="0" allowfullscreen></iframe>
<% 
}


%>





<%--

ResultSet rs=null;
rs=Database.videosget();
while(rs.next()){

<iframe width="560" height="315" src="<%=rs.getString(2) %>&border=1&showinfo=0" frameborder="0" allowfullscreen></iframe>

}

--%>

</body>
</html>
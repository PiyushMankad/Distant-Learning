<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.ibm.database.Database" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="qw.jpg">


<%
String filepath=(String)request.getAttribute("finalpath");
String finame=(String)request.getAttribute("finame");
String ext=(String)request.getAttribute("ext");
String professor=(String)session.getAttribute("professor");
String title=(String)request.getAttribute("title");




try{
	
String result=Database.FileUpload(filepath,finame,ext,professor,title);

	if(result.equals("success")){
		out.println("YOUR ASSIGNMENT IS SUCCESSFULLY SUBMITTED");
		
	}
	else{
		out.println("error");
	}
}

catch(Exception e){}
%>







</body>
</html>
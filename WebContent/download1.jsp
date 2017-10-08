
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="com.ibm.database.Database" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
table {
    border-collapse: collapse;
    width: 100%;
    border-color:#f2f2f2;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}
</style>



</head>


<body>


<%


String upload=null;
String ext=null;
String filename=null;

String nametxt =request.getParameter("value");
//String datetxt =request.getParameter("date");
//String list= request.getParameter("values");





	
	 upload=Database.FilePath(nametxt);
	ext=Database.Extension(nametxt);
		
		
	nametxt = nametxt+"."+ext;
	String filepath = upload; 	 
   
%>
<a href="download4.jsp?f=<%=upload%>"><%=nametxt %></a>
<div style="overflow-x:auto;">
  <table>
    <tr>
      <td><%=nametxt %></td>
      <td><a href="download3.jsp?f=<%=upload%>"><%=nametxt %></a></td>
    </tr>
  </table>
</div>










</body>
</html>

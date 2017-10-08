<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="com.ibm.database.Database" %>
    <%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
table {
    border-collapse: collapse;
    width: 800px;
    margin-top:200px;
    
}

th, td {
    text-align: left;
    padding: 8px;
    border-color:#ffffff;
    text-align:center;
     border: 1px solid #ffffff; 
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #f2f2f2;
    color: black;
}
</style>
</head>


<body>




<%


ResultSet rs=null;

String upload[]=new String[100];
String ext=null;
String array[]=new String[5];
String filname[]=new String[100];
String tit[]=new String[100];
String dat[]=new String[100];
String professor =request.getParameter("value");

//String datetxt =request.getParameter("date");
//String list= request.getParameter("values");



 rs= Database.titlesprofessor(professor);

   %>
<center>
<div style="overflow-x:auto;">
  <table>
    <tr>
      <th>File Name</th>
       <th>Profesor</th>
        <th>Title</th>
      <th>Date</th>
      <th>Download</th>
    </tr>
    <% 
    while(rs.next()){	
    %>
    <tr>
      <td><%=rs.getString("finame") %></td>
        <td><%=rs.getString("professor")%></td>
          <td><%=rs.getString("title") %></td>
          <td><%=rs.getString("date1") %></td>    
     <td><a href="download3.jsp?f=<%=rs.getString("filepath")%>"><%=rs.getString("finame") %></a></td>
    
    <%} %>
             

  </table>
</div>
</center>



</body>
</html>
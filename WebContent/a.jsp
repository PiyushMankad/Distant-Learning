 <%@ page import="com.ibm.database.Database" %>
 <%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 80%;
    background-color: #dddddd;
     margin-left:30px;  
}



td, th {
    border: 6px solid #ffffff;
    text-align: left;
    padding: 8px;
    
}

tr:nth-child(even) {
    background-color: #dddddd;
     
}
</style>
</head>
<body>
<%--String email=session.getAttribute("email") --%>

<%

String email=(String)session.getAttribute("email");
ResultSet rs=Database.getannounce(email);
%>
<table style="table-layout: fixed"><% 
  while(rs.next())
  { 
  %>
 
  <tr>
    <td style="word-wrap:break-word"><b><%=rs.getString(4) %> <br><br> <%=rs.getString(1) %></b> </td>
 
  </tr>
  
  <% 
  }%>
  
  <% 
  Database.updatenoticount(email);
  %>
  
  <%
response.setHeader("Cache-Control","no-cache"); //HTTP 1.1
response.setHeader("Pragma","no-cache"); //HTTP 1.0
response.setDateHeader ("Expires", 0); //prevents caching at the proxy server
%>
  
</table>

</body>
</html>

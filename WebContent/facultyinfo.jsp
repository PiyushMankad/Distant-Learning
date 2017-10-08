<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FACULTY DETAILS</title>




<style>














#logo{
    position: absolute;
    right:10px;
    bottom: 10px;
}
body{
    margin: 0;
    padding: 0;
    font-size: 15px;
    font-family: "Lucida Grande", "Helvetica Nueue", Arial, sans-serif;
}
nav {
    background-color: #333;
    border: 1px solid #333;
    color: #fff;
    display: block;
    margin: 0;
    overflow: hidden;
}
nav ul{
    margin: 0;
    padding: 0;
    list-style: none;
}
nav ul li {
    margin: 0;
    display: inline-block;
    list-style-type: none;
    transition: all 0.2s;
}

nav > ul > li > a {
    color: #aaa;
    display: block;
    line-height: 2em;
    padding: 0.5em 2em;
    text-decoration: none;

}

nav li > ul{
    display : none;
    margin-top:1px;
    background-color: #bbb;

}

nav li > ul li{
    display: block;
}

nav  li > ul li a {
    color: #111;
    display: block;
    line-height: 2em;
    padding: 0.5em 2em;
    text-decoration: none;
}

nav li:hover {
    background-color: #666;
}
nav li:hover > ul{
    position:absolute;
    display : block;
}
nav li > ul > li ul  {
    display: none;
    background-color: #888;
}
nav li > ul > li:hover > ul  {
    position:absolute;
    display : block;
    margin-left:100%;
    margin-top:-3em;
}










</style>










</head>
<body background="qw.jpg">

<div>
<nav>
    <ul>
        <li>
            <a href="USERHOME.jsp">HOME</a>
          
        </li>
        <li>
            <a href="#blog">BLOG</a>
            <ul>
                <li><a href="one.html">One</a></li>
                <li><a href="two.html">Two</a></li>
                <li><a href="three.html">Three</a></li>
            </ul>
        </li>
        <li>
            <a href="#ABOUT">ABOUT</a>
            <ul>
                <li>
                    <a href="college.html">college</a>
                    
                </li>
                <li><a href="branches.html">branches</a></li>
                <li>
                    <a href="events.html">events</a>
                    
                </li>
            </ul>
        </li>
        <li><a href="#news">NEWS</a>
        
        <ul>
                <li>
                    <a href="admininfo.html">admin_info</a>
                    
                </li>
                <li><a href="adver.html">advertisements</a></li>
                <li>
                    <a href="workshops.html">workshops</a>
                    
                </li>
            </ul>
        
        
        
        
        </li>
        
        </li>
        <li><a href="#feedback">FEEDBACK</a>
        
        
         <ul>
        <li><a href="feedback.html">upload_feedback</a></li>
        </ul>
        
        </li>
        
        
        <li><a href="#details">DETAILS</z></a>
       
       <ul>
       <li>
       
       <a href ="self.jsp">self</a>
       <li><a href="facultyinfo.jsp">faculty_info</a></li>
       </li> 
        
        
        </li>
        
    </ul>
</nav>


</div>


<br>
<br>
        
        
        
        </li>
          
    </ul>
</nav>


</div>


<br>
<br>








<center>
<font size="15px">DISPLAY INFO OF FACULTIES</font>

<%
String id = request.getParameter("id");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "intern";
String userId = "root";
String password = "Vani@1130";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>FACULTIES SERVING</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>id</b></td>
<td><b>email</b></td>
<td><b>uname</b></td>
<td><b>pwd</b></td>
<td><b>contact</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM register";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("uname") %></td>
<td><%=resultSet.getString("pwd") %></td>
<td><%=resultSet.getString("contact") %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>

</center>
</body>
</html>
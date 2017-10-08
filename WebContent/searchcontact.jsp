<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="com.dl.dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Details</title>
<link rel="stylesheet" href="mycss.css">

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

<center>
<font size="15px">FETCH STUDENT DETAILS</font>
<br>
<br>
<h1>ENTER CONTACT</h1>
<br>

<form action="searchcontact.jsp" method="post">

<input type="text" name="contact">
<input type="submit" value="search"> 
</form>

<form action="DeleteServlet" method="post">


<%


	if(request.getParameter("contact")!=null)
	{
		String contact=request.getParameter("contact");
		out.println("<h3>"+contact+"</h3>");
		String sql="select * from student where contact=?";
		DLDAO obj=new DLDAO();
		ResultSet rs=obj.fetchdetailssss(sql,contact);
%>





<table>
        <tr>
               <th>  </th>   
              <th>ID</th>
            <th>FIRSTNAME</th>
            <th>LASTNAME</th>
            <th>USERNAME</th>
            <th>PASSWORD</th>
            <th>EMAIL</th>
             <th>DOB</th>
            <th>CONTACT</th>
            <th>COURSE</th>
        
        </tr>
        <% while(rs.next()){ %>
                <tr>
                 <td><input type="checkbox" name="rid" value="<%=rs.getString(1)%>" /> </td>
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
         <%} }%>
        

	
</table>

 <input type="submit" value="Delete"/>
 </form>
</center>




<%

if(request.getParameter("error")!=null)
{
	String msg=request.getParameter("error");
	out.println("<h1><font color=red>"+msg+"</font></h1>");
}

%>

</body>
</html>
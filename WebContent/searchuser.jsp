<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.dl.dao.*" %>    
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>STUDENT DETAILS</title>
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


<h1><a href="searchfname.jsp"><font color=#000000>Search Users By First Name</font></a></h1>
<h1><a href="searchcontact.jsp"><font color=#000000>Search Users By CONTACT</font></a></h1>
<h1><a href="searchcourse.jsp"><font color=#000000>Search Users By COURSE</font></a></h1>
<br>
<br>
<br>



<form action="searchuser.jsp" method="post">

 
 
 
 <h2><font color=#c90e0e>Enter the email to search</font></h2>
   <input type="text" name="email">
   <input type="submit" value="submit">
<br>
<br>

</form>

<form action="DeleteServlet" method="post">

<%


	if(request.getParameter("email")!=null)
	{
		String email=request.getParameter("email");
		out.println("<h3>"+email+"</h3>");
		String sql="select * from student where email=?";
		DLDAO obj=new DLDAO();
		ResultSet rs=obj.fetchdetails(sql, email);
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


<input type="submit" value="Select to Delete"/>
 </form>


</center>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
      <%@ page import="com.ibm.dao.*" %>
      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SELF DETAILS</title>
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

<% 

String email=session.getAttribute("facultysession").toString();
     
%>

<center>
<h1> DETAILS </h1>



<form action="self.jsp" method="post">
<% 
if(request.getSession()!=null)
{

String sql="select * from register where email=?";
CABDAO1 obj=new CABDAO1();
ResultSet rs1=obj.fetchdetails(sql,email);
%>





<table>
<tr>

             <th>ID</th>
           <th>EMAIL</th> 
            <th>USERNAME</th>
            <th>PASSWORD</th>
            <th>CONTACT</th>  
            
          </tr>  
            
            
            <% while(rs1.next()){ %>
            <td><input type="radio" name="rid" value="<%=rs1.getString(1)%>" /> </td>
            <td><%=rs1.getString(2) %></td>
            <td><%=rs1.getString(3) %></td>
            <td><%=rs1.getString(4) %></td>
            <td><%=rs1.getString(5) %></td>
            
              
         <%} }%>


</table>
 <input type="submit" value="Select to update" />
 </form>
<br>
<br>






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
		 out.println("<tr><td>EMAIL</td><td><input type='text' name='email' value='"+rs1.getString(2)+"' /></td></tr>");
		 out.println("<tr><td>USERNAME</td><td><input type='text' name='uname' value='"+rs1.getString(3)+"' /></td></tr>");
		 out.println("<tr><td>PASSWORD</td><td><input type='text' name='pwd' value='"+rs1.getString(4)+"' /></td></tr>");
		
		 out.println("<tr><td>CONTACT</td><td><input type='text' name='contact' value='"+rs1.getString(5)+"' /></td></tr>");
			
		  
		  
	  }
	  out.print("</table>");
	  out.print("<input type=submit value=update />");
	  out.print("</form>");
  }
%>





</center>
</body>
</html>
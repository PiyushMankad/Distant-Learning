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
String o=null;
o = request.getParameter("values");
if(o.equals("1"))
{
	  
    getServletContext().getRequestDispatcher("/download4.jsp").forward(request, response);
	
}


o = request.getParameter("values");
if(o.equals("2"))
{
	  
    getServletContext().getRequestDispatcher("/download5.jsp").forward(request, response);
	
}

 o = request.getParameter("values");
if(o.equals("3"))
{
	  
    getServletContext().getRequestDispatcher("/download6.jsp").forward(request, response);
	
}



String upload[]=new String[100];
String ext=null;
String array[]=new String[5];
String professor[]=new String[100];
String dat[]=new String[100];
String title =request.getParameter("checkvalues");

//String datetxt =request.getParameter("date");
//String list= request.getParameter("values");



String filname[]= Database.titles(title);

int counter = 0;
for (int j= 0; j < filname.length; j++){
    if (filname[j] != null){
        counter ++;}
}



for(int i=0;i<counter;i++){
		professor[i]=Database.titlespro(filname[i]);
	dat[i]=Database.titlesdat(filname[i]);
	upload[i]=Database.titlesurl(filname[i]);
	}

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
    for(int i=0;i<counter;i++){	
    %>
    <tr>
      <td><%=filname[i] %></td>
        <td><%=professor[i]%></td>
          <td><%=title %></td>
          <td><%=dat[i] %></td>    
     <td><a href="download3.jsp?f=<%=upload[i]%>"><%=filname[i] %></a></td>
    
    <%} %>
             

  </table>
</div>
</center>



</body>
</html>
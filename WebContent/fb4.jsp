<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.ibm.database.Database" %>
    <%@ page import= "java.text.DateFormat"%>
<%@ page import= "java.text.ParseException"%>
<%@ page import= "java.text.SimpleDateFormat"%>
<%@ page import= "java.util.Date"%>
<%@ page import= "java.util.Locale"%>
 
    
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../../cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


<style type="text/css">


{margin:0;}

.icon-bar {
    width: 20%;
    
    background-color: #555;
    overflow: auto;
}

.icon-bar a {
    float: left;
    width: 100%;
    text-align: center;
    padding: 12px 0;
    transition: all 0.3s ease;
    color: white;
    font-size: 36px;
}

.icon-bar a:hover {
    background-color: #000;
}

.active {
    background-color: #4CAF50 !important;
}



<!--
#table1 {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 80%;
    

     margin-left:30px;  
}
hr { 

height:10px; border:none; color:rgb(242, 239, 241); background-color:rgb(242, 239, 241);
}

#table2 {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 80%;
    background-color:#ffffff;
     margin-left:30px;  
}
#table2 {
    
    background-color:#ffffff;
     margin-left:30px;  
}



#td1, #td2 {
    border: 6px solid #ffffff;
    text-align: left;
    padding: 8px;
    
}
#td1,#td2,#tr1{
display:block;
}
.style12 {
	color: #0000FF;
	font-weight: bold;
	font-size: 15px;
}
.style13 {font-size: 16px}
.style14 {color: #0000FF}
.style16 {
	font-size: 12px;
	font-weight: bold;
	color: #0000FF;
}
.style18 {color: #0000FF; font-size: 10; }
.style20 {color: #0000FF; font-weight: bold; }
.style21 {color: #0000FF; font-weight: bold; font-size: 14px; }
.style22 {
	color: #FF0000;
	font-weight: bold;
}
.style23 {color: #2A00AA}
-->
    </style>
</head>
<body bgcolor="#f2eff1">



<div class="icon-bar">
  <a class="active" href="USERHOME.jsp"><i class="fa fa-home">HOME</i></a> 
  
</div>



 <form id="form1" name="form1" method="post" action="posti.jsp" onsubmit="return checkPostField()">
              <table width="473" border="0" cellspacing="0" style="margin-left:290px;">
                <tr>
                  <td>
                    <div align="right">
                      <textarea name="postmsg" cols="75" rows="5" placeholder="&nbsp;what's on your mind?" style="border-radius:10px;border:1px solid #FF9900;resize:none;"></textarea>
                      <br/>
                      
                      <input type="submit" name="Submit" value="Post" id="postBtn" />
                    </div></td>
                </tr>
              </table>
              
            </form>


 <table width="700px" cellspacing="1" style="margin-left:140px;table-layout: fixed" id="table1" >
            <%
            /*****Post Display****/
                Connection con = Database.getConnect();
            Statement stmt2 = con.createStatement();
            ResultSet rst2 = stmt2.executeQuery("select * from post order by post_slno desc");
            String post_msg ="",pemail="";
            String post_date="",post_slno="";
            while(rst2.next())
            {
                post_slno = rst2.getString("post_slno");
                pemail=rst2.getString("email");
                post_msg = rst2.getString("post_msg");
                post_date = rst2.getString("post_date");
                String uemail = "aayush@gmail.com";
               // String uemail = (String)session.getAttribute("email"); 
   
            
            %>
          
 				<tr>
       		  
       		     <td style="word-wrap:break-word ;background-color:#ffffff "><b style=" color:#090996;"><%= pemail%> </b><br> <b style=" color:#000000"> <%= post_msg %> </b> 
       <br>
             <a href="" style="text-decoration:none" class="likeunlike" onClick="document.getElementById('<%= post_slno %>').innerHTML='<form action=comment_insert.jsp><input type=hidden name=post_slno value=<%= post_slno %>><input type=text name=comment placeholder=Comment.....><input type=submit id=commentBtn value=Comment></form>';return false;"><span style="color:#8e8a8a;">comment</span></a>&nbsp;&nbsp;
                    <br>
                    
                    <div id="<%= post_slno %>">                    </div>
              <%
              DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                   Connection con1 = Database.getConnect();
                   Statement cst = con1.createStatement();
                   ResultSet crs = cst.executeQuery("select * from comment where post_slno='"+post_slno+"'");
                   while(crs.next())
                   {
                       String cuserid =  crs.getString("email");
                       String date =  sdf.format(crs.getDate("post_date"));
                       
                      %>
                      
                    <br>
                         <span style="color:#c45f25;"> <%= cuserid%></span>
                        <br>  <span style="color:#8e8a8a;">Says: <%= crs.getString("comment") %>    </span>                              
                          <br>  <span style="color:#8e8a8a;">  Posted on</span> <%= sdf.format(crs.getDate("post_date"))%>
                         
                          <br> 
         
                
                  <%
                   }
                   
                   %><hr noshade>
                   </td></tr>
                   
                   
                   <% 
             %>
             
             
             <% 
               
            }

           %>


</table>



















</body>
</html>
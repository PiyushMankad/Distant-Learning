 <%@ page import="com.ibm.database.Database" %> 
<html>
<head>
<style> 
nav {
    background-color: #333;
    border: 1px solid #333;
    color: #fff;
    display: block;
    margin: 0;
    width:10%;
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






input[type=text] {
    width: 50%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 3px solid #ccc;
    -webkit-transition: 0.5s;
    transition: 0.5s;
    outline: none;
}

input[type=text]:focus {
    border: 3px solid #555;
}

input[type=button], input[type=submit], input[type=reset] {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 16px 32px;
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
}
</style>

</head>

<body background="qw.jpg">

<nav>
    <ul>
        <li>
            <a href="USERHOME.jsp">HOME</a>
          
        </li>
      </nav>


<form method="post" action="videos.jsp">
<center>



<font size="12px">Enter the Url</font><br><br>
<input type ="text" name="url"/>


<input type="submit" value="UPLOAD"/>
</center>
</form>

  <%
  if(request.getParameter("url")!=null){
  String url=request.getParameter("url");
   int rs=Database.videosupload(url);
   if(rs==1)
   out.println("video uploaded");
   else
	   out.println("video not uploaded");}
   %>





</body>




</html>
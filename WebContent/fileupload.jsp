
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>File Upload</title>


<style>



body {margin:0;}

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
<body background="qw.jpg" >





<div>
<nav>
    <ul>
        <li>
            <a href="USERHOME.jsp">HOME</a>
          
        </li>
      </nav>


</div>




<center>
	<h1>Upload Assignments and Notes</h1>
	<form method="post" action="fileUpload" enctype="multipart/form-data">
		<table>
			
			<tr>
				<td>Choose Image:</td>
				<td><input type="file" name="photo" 
					required="required" /></td>
			</tr>
				<tr>
				<td>File Name</td>
				<td><input type="text" name="filename" 
					required="required" /></td>
			</tr>
				<tr>
				<td>Title</td>
				<td>
				<select name="title">
				<option value="ECONOMICS">Cloud Computing</option>
				<option value="PHYSICS">JAVA Technology</option>
				<option value="MATHS">ASP.Net</option>
				<option value="CHEMISTRY">Big data Hadoop</option>
				<option value="BIOLOGY">PHP</option>
				</select>
				
				
				</td>
			</tr>
				
			<tr>
				<td><input type="submit" value="Submit"></td>
				<td><input type="reset" value="Clear" /></td>
			</tr>
		</table>
	</form>
	</center>
</body>
</html>


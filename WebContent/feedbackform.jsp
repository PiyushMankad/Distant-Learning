<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Feedback Form</title>
<style type="text/css">
h3{font-family: Calibri; font-size: 22pt; font-style: normal; font-weight: bold; color:SlateBlue;
text-align: center; text-decoration: underline }

h1{font-family: Comic Sans MS; font-size: 22pt; font-style: normal; font-weight: bold; color:SlateBlue;
text-align: center; text-decoration: underline }

table{font-family:Comic Sans MS ; color:white; font-size: 12pt; font-style: normal;
text-align:left; background-color: SlateBlue;  border: 2px solid navy;
}
table.inner{border: 0px}

body {
	margin-top: 50px;
	padding: 0;
	background: #B2EBFF;
	font-size: 13px;
	font-family: "Trebuchet MS", Georgia, "Times New Roman", Times, serif;
	text-align: justify;
	color: #FFFFFF;
}


</style>

</head>
<body>
<center><h1>Feedback Form</h1>
<form action="feedback" method="post">
<table align="center" width="630" height="415">
<tr><td>Name</td>
	<td><input type="text" name="name"required/></td>
	
</tr>
<tr><td>Email</td>
	<td><input type="email" name="email" required/></td>
	
</tr>

<tr><td>Feedback</td>
	<td><textarea rows="6" cols="40" name="desc" required></textarea></td>
	
</tr>
<tr><td height="26"></td>
<td></td><td></td></tr>
<tr><td height="33"></td>
<td class="a"><input type="submit" value="Submit"></td>
</tr>
</table>
</form>
</center>

</body>
</html>
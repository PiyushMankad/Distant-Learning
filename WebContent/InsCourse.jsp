<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>title</title>
</head>

<body background="qw.jpg" text="yellow">

<center>

<h2><font color="#000000" size="8px">ADD NEW COURSE:</font></h2>

<form action="insertcourse" method="POST">
<table>

	<tr>
		<td><font color="#000000">Course Name</font></td><td><input type="text" name="name" size="65"></td>
	</tr>
	<tr>
		<td><font color="#000000">Course Duration</font></td><td><input type="text" name="duration" size="65"></td>
	</tr>
	<tr>
		<td><font color="#000000">Course Details</font><br><font color="#000000">(max 300<br>characters</font>)</td><td><textarea rows="9" cols="50" maxlength="300" placeholder="Enter Course Details Here..." name="details"></textarea>
		
		</td>
	</tr>
	<tr>
		<br>
		<td><font color="#000000">Trainer</font></td><td><input type="text" name="trainer" size="65"></td>
	</tr>
	<tr>
		<td><font color="#000000">Eligibility Criteria</font></td><td><input type="text" name="eligibility" size="65"></td>
	</tr>	
	<tr>
		<td><font color="#000000">Assignments</font><br><font color="#000000">(max 100<br>characters)</font></td><td><textarea rows="7" cols="50" maxlength="100" name="assignments"></textarea>
		
		</td>
		
	</tr>
	<tr>
		<td><font color="#000000">Certification</font><br><font color="#000000">(max 100<br>characters)</font></td><td><textarea rows="7" cols="50" maxlength="100" name="certification"></textarea>
		
		</td>
	</tr>

</table>
<br>
<input type="submit" value="INSERT">
</form>

</center>

</body>
</html>
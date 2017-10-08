<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script language="javascript">

</script>
</head>
<body>

 <body style="background-color:orange;">
<br><br>
<form method="post" name="form" >

<%


//Integer v = new Integer(0);
String id= (String)session.getAttribute("id");
//out.println(abc);

Connection con = null;
String url = "jdbc:mysql://localhost:3306/";
String db = "intern";
String driver = "com.mysql.jdbc.Driver";
String userName ="root";
String password="Vani@1130";

int sumcount=0;
Statement st;
 

try{
	
	
Class.forName(driver).newInstance();
con = DriverManager.getConnection(url+db,userName,password);
//SET v=userno;
//String query= "select * from register2 ";
st = con.createStatement();
String query =("select * from register where id='"+id+"'");
//PreparedStatement Stmt = con.prepareStatement(query);
//Stmt.setString(1,abc);
ResultSet rs = st.executeQuery(query);
while(rs.next()){	
%>
<table border="1">
<tr><th>userid</th>
<td><%=rs.getString(1)%></td>
</tr>
<tr><th>email</th>
<td><%=rs.getString(2)%></td></tr>
<tr><th>uname</th>
<td><%=rs.getString(3)%></td></tr>
<tr><th>pwd</th>
<td><%=rs.getString(4)%></td></tr>
<tr><th>contact</th>
<td><%=rs.getString(5)%></td></tr>





<td><input type="button" name="edit" value="Edit"  onclick="location='edit.jsp'" ></td>
</tr>
<%
}
%>
<%
}
catch(Exception e){
e.printStackTrace();
}
%>
</table>
</form>

</body>
</html>
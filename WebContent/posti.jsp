<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page import ="com.ibm.database.Database" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import= "java.util.Calendar"%>

<%@page import="java.util.Date"%>

<%


	 String drivername="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/intern";
	String username="root";
	String password="Vani@1130";
	Connection con=null;
			try {
			Class.forName(drivername);
			con=DriverManager.getConnection(url,username,password);
		    System.out.println("connected");
		
		   } catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
  String email = (String)session.getAttribute("email");
    		//String email ="aayush@gmail.com";
			String post_msg = request.getParameter("postmsg");
     	
    		 
     		Calendar calendar = Calendar.getInstance();
			java.sql.Date dt = new java.sql.Date(calendar.getTime().getTime());
			
     	
 		int rs1=0 ;
 		Statement stmt=null;
 		PreparedStatement ps1=null;
 		try {
 			
 		    String sql2 = "INSERT into post  values(?,?,?,?)";
 		 ps1=con.prepareStatement(sql2);
 			// stmt= con.createStatement();
 			ps1.setString(1,null);	 
 			ps1.setString(2,email);	
 			ps1.setString(3,post_msg);	
 			ps1.setDate(4,dt);	
 		 rs1=ps1.executeUpdate();
 	
 		  response.sendRedirect("fb4.jsp");
 		 
 		 // rs1 = stmt.executeQuery(sql2);
 			
 		  
 			} catch (SQLException e) {
 			// TODO Auto-generated catch block
 			e.printStackTrace();
 		}
 	
%>
package com.ibm.database;

import java.sql.Date;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSession;




public class Database {

	public static String drivername="com.mysql.jdbc.Driver";
	public static String url="jdbc:mysql://localhost:3306/intern";
	public static String username="root";
	public static String password="Vani@1130";
	public static Connection con=null;
	
	
	static
	{
		
		try {
			Class.forName(drivername);
			con=DriverManager.getConnection(url,username,password);
		    System.out.println("connected");
		
		   } catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
	public static Connection getConnect()throws Exception
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection(url,username,password);
        return con;
    }
	

	
	public static String FileUpload(String filepath, String finame,String ext,String professor,String title)
	{
		
		
	
	    
		try {
		
			
			
		
		   String sql1="insert into fileup values(?,?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql1);
			
			Calendar calendar = Calendar.getInstance();
			java.sql.Date dt = new java.sql.Date(calendar.getTime().getTime());
			
			ps.setString(1,filepath);	 
			ps.setString(2,finame);	
			ps.setString(3,ext);	
			ps.setString(4,professor);	 
			ps.setString(5,title);	
			ps.setDate(6,dt);	
			int i=ps.executeUpdate();  
			
		    if(i==1)
			{
		    
				return "success";
			}
			else
			{
				return "fail";
			}
		    
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	return "";
	  //  response.sendRedirect("learnzone.jsp");
		
		
		
	}
	
	
	

	public static String FilePath(String filename)
	{
		String filepath=null;
		ResultSet rs1 =null;
		Statement stmt=null;
		PreparedStatement ps1=null;
		try {
			
			
		
		
		    String sql2 = "SELECT filepath FROM file WHERE finame=?";
		 ps1=con.prepareStatement(sql2);
			// stmt= con.createStatement();
			ps1.setString(1,filename);	 
		
		 rs1=ps1.executeQuery();
	        // rs1 = stmt.executeQuery(sql2);
			
		    while(rs1.next())
			{
		    	filepath=rs1.getString("filepath");
			
			}
			
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	return filepath;
	  //  response.sendRedirect("learnzone.jsp");
		
		
		
	}
	
	

	public static String[] FileName()
	{
		String filepath=null;
		ResultSet rs1 =null;
		Statement stmt=null;
		PreparedStatement ps1=null;
		String[] names =new String[100];
		 int i=0;
		try {
		
				   
			
		
		
		    String sql2 = "SELECT * FROM file";
		// ps1=con.prepareStatement(sql2);
			stmt=con.createStatement();
		
		 rs1=stmt.executeQuery(sql2);
	        // rs1 = stmt.executeQuery(sql2);
			
		    while(rs1.next())
			{
		    	
		    	names[i]=rs1.getString("finame");
			i++;
			}
			
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	return names;
	  //  response.sendRedirect("learnzone.jsp");
		
		
		
	}
	

	public static String[] titles(String title)
	{
		String filepath=null;
		ResultSet rs1 =null;
		Statement stmt=null;
		PreparedStatement ps1=null;
		String[] names =new String[100];
		 int i=0;
		try {
		
				   
			
		
		
		    String sql2 = "SELECT * FROM fileup WHERE title=? ";
	ps1=con.prepareStatement(sql2);
	//		stmt=con.createStatement();
	ps1.setString(1,title);	 
		// rs1=stmt.executeQuery(sql2);
	         rs1 = ps1.executeQuery();
			
		    while(rs1.next())
			{
		    	
		    	names[i]=rs1.getString("finame");
			i++;
			}
			
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	return names;
	  //  response.sendRedirect("learnzone.jsp");
		
		
		
	}
	

	public static String[] titlesdates(String date)
	{
		String filepath=null;
		ResultSet rs1 =null;
		Statement stmt=null;
		PreparedStatement ps1=null;
		String[] names =new String[100];
		 int i=0;
		try {
		
				   
			
		
		
		    String sql2 = "SELECT * FROM fileup WHERE date1=? ";
	ps1=con.prepareStatement(sql2);
	//		stmt=con.createStatement();
	ps1.setString(1,date);	 
		// rs1=stmt.executeQuery(sql2);
	         rs1 = ps1.executeQuery();
			
		    while(rs1.next())
			{
		    	
		    	names[i]=rs1.getString("finame");
			i++;
			}
			
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	return names;
	  //  response.sendRedirect("learnzone.jsp");
		
		
		
	}
	

	public static String titlespro(String filename)
	{
		String filepath=null;
		ResultSet rs1 =null;
		Statement stmt=null;
		PreparedStatement ps1=null;
		String pro=null;
		 int i=0;
		try {
		
				   
			
		
		
		    String sql2 = "SELECT * FROM fileup WHERE finame=? ";
	ps1=con.prepareStatement(sql2);
	//		stmt=con.createStatement();
	ps1.setString(1,filename);
		// rs1=stmt.executeQuery(sql2);
	         rs1 = ps1.executeQuery();
			
		    while(rs1.next())
			{
		    	
		    	pro=rs1.getString("professor");
			
			}
			
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	return pro;
	  //  response.sendRedirect("learnzone.jsp");
		
		
		
	}

	public static String titlestit(String filename)
	{
		String filepath=null;
		ResultSet rs1 =null;
		Statement stmt=null;
		PreparedStatement ps1=null;
		String pro=null;
		 int i=0;
		try {
		
				   
			
		
		
		    String sql2 = "SELECT * FROM fileup WHERE finame=? ";
	ps1=con.prepareStatement(sql2);
	//		stmt=con.createStatement();
	ps1.setString(1,filename);
		// rs1=stmt.executeQuery(sql2);
	         rs1 = ps1.executeQuery();
			
		    while(rs1.next())
			{
		    	
		    	pro=rs1.getString("title");
			
			}
			
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	return pro;
	  //  response.sendRedirect("learnzone.jsp");
		
		
		
	}
	
	public static String titlesdat(String filename)
	{
		String filepath=null;
		ResultSet rs1 =null;
		Statement stmt=null;
		PreparedStatement ps1=null;
		String dat=null;
		 int i=0;
		try {
		
				   
			
		
		
		    String sql2 = "SELECT * FROM fileup WHERE finame=? ";
	ps1=con.prepareStatement(sql2);
	//		stmt=con.createStatement();
	ps1.setString(1,filename);
		// rs1=stmt.executeQuery(sql2);
	         rs1 = ps1.executeQuery();
			
		    while(rs1.next())
			{
		    	
		    	dat=rs1.getString("date");
			
			}
			
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	return dat;
	  //  response.sendRedirect("learnzone.jsp");
		
		
		
	}
	
	
	
	
	
	
	
	

	public static ResultSet titlesfiname(String finame)
	{
		String filepath=null;
		ResultSet rs1 =null;
		Statement stmt=null;
		PreparedStatement ps1=null;
		String[] names =new String[100];
		 int i=0;
		try {
		
				   
			
		
		
		    String sql2 = "SELECT * FROM fileup where finame=?";
		ps1=con.prepareStatement(sql2);
		//	stmt=con.createStatement();
		ps1.setString(1,finame);
		 rs1=ps1.executeQuery();
	        // rs1 = stmt.executeQuery(sql2);
			
		   
			
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	return rs1;
	  //  response.sendRedirect("learnzone.jsp");
		
		
		
	}
	
	public static ResultSet titlesprofessor(String professor)
	{
		String filepath=null;
		ResultSet rs1 =null;
		Statement stmt=null;
		PreparedStatement ps1=null;
		String[] names =new String[100];
		 int i=0;
		try {
		
				   
			
		
		
		    String sql2 = "SELECT * FROM fileup where professor=?";
		ps1=con.prepareStatement(sql2);
		//	stmt=con.createStatement();
		ps1.setString(1,professor);
		 rs1=ps1.executeQuery();
	        // rs1 = stmt.executeQuery(sql2);
			
		   
			
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	return rs1;
	  //  response.sendRedirect("learnzone.jsp");
		
		
		
	}
	
	
	
	
	

	public static String titlesurl(String filename)
	{
		String path=null;
		ResultSet rs1 =null;
		Statement stmt=null;
		PreparedStatement ps1=null;
		String dat=null;
		 int i=0;
		try {
		
				   
			
		
		
		    String sql2 = "SELECT * FROM fileup WHERE finame=? ";
	ps1=con.prepareStatement(sql2);
	//		stmt=con.createStatement();
	ps1.setString(1,filename);
		// rs1=stmt.executeQuery(sql2);
	         rs1 = ps1.executeQuery();
			
		    while(rs1.next())
			{
		    	
		    	path=rs1.getString("filepath");
			
			}
			
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	return path;
	  //  response.sendRedirect("learnzone.jsp");
		
		
		
	}
	

	public static String[] title(String title)
	{
		String filepath=null;
		ResultSet rs1 =null;
		Statement stmt=null;
		PreparedStatement ps1=null;
		String array[]=new String[5];
		 int i=0;
		 DateFormat df = new SimpleDateFormat("YYYY/DD/MM");
		 
		 
		 
		try {
		
				   	
		    String sql2 = "SELECT * FROM fileup WHERE title=?";
		ps1=con.prepareStatement(sql2);
		
			ps1.setString(1,title);	 
		
		 rs1=ps1.executeQuery();
		    while(rs1.next())
			{
		    	
		    	array[0]=rs1.getString("filepath");
		    	array[1] =rs1.getString("finame");
		    	array[2]=rs1.getString("ext");
		    	array[3] =rs1.getString("professor");
		    	array[4]=df.format(rs1.getDate("date"));
			
			}
			
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	return array;
	  //  response.sendRedirect("learnzone.jsp");
		
		
		
	}
	
	
	
	
	
	
	

	public static String Extension(String filename)
	{
		String ext=null;
		ResultSet rs1 =null;
		Statement stmt=null;
		PreparedStatement ps1=null;
		try {
			
			
		
		
		    String sql2 = "SELECT ext FROM file WHERE finame=?";
		 ps1=con.prepareStatement(sql2);
			// stmt= con.createStatement();
			ps1.setString(1,filename);	 
		
		 rs1=ps1.executeQuery();
	        // rs1 = stmt.executeQuery(sql2);
			
		    while(rs1.next())
			{
		    	ext=rs1.getString("ext");
			
			}
			
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	return ext;
	  //  response.sendRedirect("learnzone.jsp");
		
		
		
	}
	


	public static ResultSet videosget()
	{
		String ext=null;
		ResultSet rs1 =null;
		
		Statement stmt=null;
		PreparedStatement ps1=null;
		try {
			
			
		
		
		    String sql2 = "SELECT * FROM videos" ;
		 ps1=con.prepareStatement(sql2);
			// stmt= con.createStatement();
			 
		
		 rs1=ps1.executeQuery();
	        // rs1 = stmt.executeQuery(sql2);
			
			
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	return rs1;
	  //  response.sendRedirect("learnzone.jsp");
		
		
		
	}
	

	
	

	public static int videosupload(String url)
	{
		
		int rs1=0 ;
		Statement stmt=null;
		PreparedStatement ps1=null;
		try {
			
		    String sql2 = "INSERT into videos values(?,?)";
		 ps1=con.prepareStatement(sql2);
			// stmt= con.createStatement();
			ps1.setString(1,null);	 
			ps1.setString(2,url);	 
		 rs1=ps1.executeUpdate();
	        // rs1 = stmt.executeQuery(sql2);
			
		  
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	return rs1;
	  //  response.sendRedirect("learnzone.jsp");
		
		
		
	}
	
	
	
	
	

	
	

	public static int getnoticount(String email)
	{
		int counter=0;
		ResultSet rs1=null ;
		Statement stmt=null;
		PreparedStatement ps1=null;
		try {
			
		    String sql2 = "SELECT * from announcements where status=? and email=? ";
		 ps1=con.prepareStatement(sql2);
			
		 ps1.setString(1,"no action");	
		 ps1.setString(2,email);
		 rs1=ps1.executeQuery();
	        
			
		    while(rs1.next())
			{
		    	
			counter++;
			}
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	return counter;
	  //  response.sendRedirect("learnzone.jsp");
		
		
		
	}
	
	
	

	public static void updatenoticount(String email)
	{
		int counter=0;
		ResultSet rs1=null ;
		Statement stmt=null;
		PreparedStatement ps1=null;
		try {
			
		    String sql2 = "UPDATE announcements set status=? where status=? and email=?";
		 ps1=con.prepareStatement(sql2);
			
		 ps1.setString(1,"actiontaken");	 
		 ps1.setString(2,"no action");	
		 ps1.setString(3,email);	
		 ps1.executeUpdate();
	        
			
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	  //  response.sendRedirect("learnzone.jsp");
		
		
		
	}
	
	
	

	public static ResultSet getannounce(String email)
	{
		String ext=null;
		ResultSet rs1 =null;
		
		Statement stmt=null;
		PreparedStatement ps1=null;
		try {
			
			
		
		
		    String sql2 = "SELECT * FROM announcements where status=? and email=?"  ;
		 ps1=con.prepareStatement(sql2);
			// stmt= con.createStatement();
			 
		ps1.setString(1,"no action");
		ps1.setString(2,email);
		 rs1=ps1.executeQuery();
	        // rs1 = stmt.executeQuery(sql2);
		
			
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	return rs1;
	  //  response.sendRedirect("learnzone.jsp");
		
		
		
	}
	


	public static void sentannounce(String text,String email)
	{
		
		int rs1=0 ;
		Statement stmt=null;
		PreparedStatement ps1=null;
		try {
			Calendar calendar = Calendar.getInstance();
			java.sql.Date dt = new java.sql.Date(calendar.getTime().getTime());
			
		    String sql2 = "INSERT into announcements values(?,?,?,?)";
		 ps1=con.prepareStatement(sql2);
			// stmt= con.createStatement();
			ps1.setString(1,text);	 
			ps1.setString(2,email);
			ps1.setString(3,"no action");	 
			ps1.setDate(4,dt);	
			rs1=ps1.executeUpdate();
	        // rs1 = stmt.executeQuery(sql2);
			
		  
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	
	  //  response.sendRedirect("learnzone.jsp");
		
		
		
	}
	
	
	


	public static ResultSet getallusersemail()
	{
		String ext=null;
		ResultSet rs1 =null;
		
		Statement stmt=null;
		PreparedStatement ps1=null;
		try {
			
			
		
		
		    String sql2 = "SELECT * FROM student"  ;
		 ps1=con.prepareStatement(sql2);
			// stmt= con.createStatement();
		
		 rs1=ps1.executeQuery();
	        // rs1 = stmt.executeQuery(sql2);
		
			
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	return rs1;
	  //  response.sendRedirect("learnzone.jsp");
		
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
		

	}

}
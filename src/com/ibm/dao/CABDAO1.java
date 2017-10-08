package com.ibm.dao;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


import com.dl.model.regmodel;
import com.ibm.model.RegModel1;
import com.ibm.model.passm;
import com.mysql.jdbc.Connection;

public class CABDAO1 {
	
	public static String drivername="com.mysql.jdbc.Driver";
	public static String url="jdbc:mysql://localhost:3306/intern";
	public static String username="root";
	public static String password="Vani@1130";
	public static  Connection con=null;

	 
	 static
	 {
		 try
		 {
			 Class.forName(drivername);
				 con= (Connection) DriverManager.getConnection(url,username,password); 
		 }
		 catch(Exception e)
		 {
			 e.printStackTrace();
		 }
		 
	}
	 
	 
	 
	 
	 
	 
	 
	 
		
		public ResultSet FindFclty(String sql,String id)
		{
			
			ResultSet rs=null;
			try
			{
				PreparedStatement ps=con.prepareStatement(sql);
				ps.setString(1,id);
				rs=ps.executeQuery();
				
			}
			catch (Exception e)
			{
				e.printStackTrace();
			}
			return rs;
		
		}
	 
	 
	 
	 
	 public String UpdateUserData(RegModel1 obj,String sql,String id){
			
			
			try
			{
				PreparedStatement ps=con.prepareStatement(sql);
				ps.setString(1,obj.getEmail());
				ps.setString(2,obj.getUname());
				ps.setString(3,obj.getPwd());
				ps.setString(4,obj.getContact());
				ps.setString(5,id);
				int i=ps.executeUpdate();
				if(i==1)
				{
					return "success";
				}
				else
				{
					return "fail";
				}
				
				
			}
			catch(Exception e)
			{
				
				e.printStackTrace();
			}
			
			return "";
		}
	 
	 
	 
	 
public static String InsertUserData(RegModel1 obj,String sql)
{

	try
	{
		PreparedStatement ps=(PreparedStatement) con.prepareStatement(sql);
		ps.setString(1,obj.getEmail());
		ps.setString(2,obj.getUname());
		ps.setString(3,obj.getPwd());
		ps.setString(4,obj.getContact());
		int i=ps.executeUpdate();
		if(i==1)
		{
			return "success";
		}
		else
		{
			return "fail";
		}
	}	
		catch(Exception e)
		{
			e.printStackTrace();}
	
	
	return "true";
}


public String ValidateUser(RegModel1 obj,String sql)
{
	try
	{
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,obj.getEmail());
		ps.setString(2,obj.getPwd());
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			return "success";
		}
		else
		{
			return "fail";
		}
	}
	catch(Exception e)
	{
	    e.printStackTrace();
	}
	
	return "true";


}



public ResultSet fetchdetails(String sql,String email)
{
	ResultSet rs1=null;
	try
	{
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, email);
		rs1=ps.executeQuery();
	
		
	}
	
	catch(Exception e)
	{
		e.printStackTrace();
	}
	return rs1;
}
	





public String ResetPwd(passm obj,String sql)
{
	try
	{
		PreparedStatement ps=(PreparedStatement)con.prepareStatement(sql);
		ps.setString(1,obj.getPwd());
		ps.setString(2,obj.getEmail());
		int i=ps.executeUpdate();
		if(i==1)
		{
			return "success";
		}
		else
		{
			return "fail";
		}
	}
	catch( Exception e)
	{
		e.printStackTrace();
	}
	return "";
}




public static String uname(String email)
{
	String sql=null;
	String uname=null;;
	ResultSet rs1=null;
	try
	{
		sql="select * from register where email=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, email);
		rs1=ps.executeQuery();
		
		while(rs1.next()){
			
			uname=rs1.getString("uname");
		}
		
		
	}
	
	catch(Exception e)
	{
		e.printStackTrace();
	}
	return uname;
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





public String DelRcrd(String sql,String id)
{
	try
	{
		PreparedStatement ps=(PreparedStatement)con.prepareStatement(sql);
		ps.setString(1,id);
		int i=ps.executeUpdate();
		if(i==1)
		{
			return "success";
		}
		else
		{
			return "fail";
		}
		
	}
	catch (Exception e)
	{
		e.printStackTrace();
	}

	return "";
}






public ResultSet FetchAll(String sql)
{
	ResultSet rs=null;
	try
	{
		PreparedStatement ps=con.prepareStatement(sql);
		rs=ps.executeQuery();
		
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
	return rs;
	
}











public String UpdtFcltyData(RegModel1 obj,String sql)
{
	try
	{
		PreparedStatement ps=(PreparedStatement)con.prepareStatement(sql);
		ps.setString(1,obj.getEmail());
		ps.setString(2,obj.getUname());
		ps.setString(3,obj.getPwd());
		ps.setString(4,obj.getContact());
		ps.setString(5,obj.getId());
		int i=ps.executeUpdate();
		if(i==1)
		{
			return "success";
		}
		else
		{
			return "fail";
		}
	}
	catch( Exception e)
	{
		e.printStackTrace();
	}
	return "";
}




public ResultSet FetchID(String sql,String id)
{
	
	
	ResultSet rs=null;
	try{
		
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1, id);
	rs=ps.executeQuery();
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	return rs;
}





}



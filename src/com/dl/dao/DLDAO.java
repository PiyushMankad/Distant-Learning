package com.dl.dao;

import java.sql.DriverManager;
import java.sql.ResultSet;

import com.dl.model.CourseModel;
import com.dl.model.adminmodel;
import com.dl.model.regmodel;
import com.mysql.jdbc.Connection;
import java.sql.*;

public class DLDAO {

	
	public static String drivername="com.mysql.jdbc.Driver";
	public static String url="jdbc:mysql://localhost:3306/intern";
	public static String username="root";
	public static String password="Vani@1130";
	public static Connection con=null;
	public ResultSet rs=null;
	static
	{
		try
		{
		Class.forName(drivername);
		con=(Connection) DriverManager.getConnection(url,username,password);
		System.out.println("Successfully connected with database Dist_Learn");
		}
		catch(Exception e)
		{
		e.printStackTrace();
		}
	}
	public String InsertUserData(regmodel obj,String sql)
	{
		try
		{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,obj.getFname());
			ps.setString(2,obj.getLname());
			ps.setString(3,obj.getUname());
			ps.setString(4,obj.getPassword());
			ps.setString(5,obj.getEmail());
			ps.setString(6,obj.getDob());
			ps.setString(7,obj.getContact());
			ps.setString(8,obj.getCourse());
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
	
	
	
	
	
	
	
	
	
	public String Feed(String description, String name, String email, String sql) {
		try{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, description);
			ps.setString(2, name);
			ps.setString(3, email);
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
		return null;
	}
	
	
	
	
	
	
	
	public String ValidateUser(regmodel obj,String sql)
	{
		try
		{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,obj.getEmail());
			ps.setString(2,obj.getPassword());
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
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return "";
	
	}
	
	public ResultSet fetchdetails(String sql,String email)
	{
		try
		{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, email);
			
			rs=ps.executeQuery();
			
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return rs;
	}
	
	
	
	
	
	
	public ResultSet fetchdetailss(String sql,String fname)
	{
		try
		{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, fname);
			
			rs=ps.executeQuery();
			
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return rs;
	}
	
	
	
	
	

	public ResultSet fetchdetailsss(String sql,String course)
	{
		try
		{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, course);
			
			rs=ps.executeQuery();
			
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return rs;
	}
	
	
	
	
	public ResultSet fetchdetailssss(String sql,String contact)
	{
		try
		{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, contact);
			
			rs=ps.executeQuery();
			
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return rs;
	}
	
	
	
	
	
	

	public String DeleteUserByID(String sql,String id)
{
		
		try
		{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, id);
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
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public String InsertStdtData(regmodel obj,String sql)
	{
		try
		{
			PreparedStatement ps=(PreparedStatement)con.prepareStatement(sql);
			ps.setString(1,obj.getFname());
			ps.setString(2,obj.getLname());
			ps.setString(3,obj.getUname());
			ps.setString(4,obj.getPassword());
			ps.setString(5,obj.getEmail());
			ps.setString(6,obj.getDob());
			ps.setString(7,obj.getContact());
			ps.setString(8,obj.getCourse());
			
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
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	public String InsertCourseData(CourseModel obj,String sql)
	{
		try
		{
			PreparedStatement ps=(PreparedStatement)con.prepareStatement(sql);
			ps.setString(1,obj.getName());
			ps.setString(2,obj.getDuration());
			ps.setString(3,obj.getDetails());
			ps.setString(4,obj.getTrainer());
			ps.setString(5,obj.getEligibility());
			ps.setString(6,obj.getAssignments());
			ps.setString(7,obj.getCertification());
			
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
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public String UpdtStdtData(regmodel obj,String sql)
	{
		try
		{
			PreparedStatement ps=(PreparedStatement)con.prepareStatement(sql);
			ps.setString(1,obj.getFname());
			ps.setString(2,obj.getLname());
			ps.setString(3,obj.getUname());
			ps.setString(4,obj.getPassword());
			ps.setString(5,obj.getEmail());
			ps.setString(6,obj.getDob());
			ps.setString(7,obj.getContact());
			ps.setString(8,obj.getCourse());
			ps.setString(9,obj.getId());
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
	
	
	
	
	public String UpdtCourse(CourseModel obj,String sql)
	{
		try
		{
			PreparedStatement ps=(PreparedStatement)con.prepareStatement(sql);
			
			ps.setString(1,obj.getDuration());
			ps.setString(2,obj.getDetails());
			ps.setString(3,obj.getTrainer());
			ps.setString(4,obj.getEligibility());
			ps.setString(5,obj.getAssignments());
			ps.setString(6,obj.getCertification());
			ps.setString(7,obj.getName());
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
	
	
	
	
	
	public String ValidateStdt(regmodel obj,String sql)
	{
		try
		{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,obj.getUname());
			ps.setString(2,obj.getPassword());
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
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return "";
	
	}
	
	
	
	public String ValidateAdmin(adminmodel obj,String sql)
	{
		try
		{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,obj.getUname());
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
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return "";
	
	}
	
	
	public String ResetPwd(adminmodel obj,String sql)
	{
		try
		{
			PreparedStatement ps=(PreparedStatement)con.prepareStatement(sql);
			ps.setString(1,obj.getPwd());
			ps.setString(2,obj.getUname());
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
	

	
	public ResultSet FetchEmail(String sql,String email)
	{
		try{
			
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, email);
		rs=ps.executeQuery();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return rs;
	}
	
	
	
	public ResultSet FetchID(String sql,String id)
	{
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
	
	
	
	public ResultSet FetchUname(String sql,String uname)
	{
		try{
			
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, uname);
		rs=ps.executeQuery();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return rs;
	}
	
	
	
	public ResultSet FetchDOB(String sql,String dob)
	{
		try{
			
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,dob);
		rs=ps.executeQuery();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return rs;
	}
	
	
	
	public ResultSet FetchFname(String sql,String fname)
	{
		try{
			
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,fname);
		rs=ps.executeQuery();
		}
		catch(Exception e)
		{
			e.printStackTrace(); 
		}
		return rs;
	}
	
	
	
	
	public ResultSet FetchCourse(String sql,String course)
	{
		try{
			
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,course);
		rs=ps.executeQuery();
		}
		catch(Exception e)
		{
			e.printStackTrace(); 
		}
		return rs;
	}
	
	
	
	
	public ResultSet FindStdt(String sql,String id)
	{
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
		
		try
		{
			PreparedStatement ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			
		}
		catch(Exception e)
		{
			
		}
		
		return rs;
		
	}
	
	
	
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

	
	
	
	
}

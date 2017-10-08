package com.dl.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dl.dao.DLDAO;
import com.dl.model.regmodel;


@WebServlet("/updtt")
public class updtt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public updtt() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		String fname=request.getParameter("first");
		String lname=request.getParameter("last");
		String uname=request.getParameter("uname");
		String password=request.getParameter("pwd");
		String email=request.getParameter("email");
		String dob=request.getParameter("dob");
		String contact=request.getParameter("contact");
		String course=request.getParameter("course");
		String id=request.getParameter("id");
		
		regmodel obj=new regmodel();
		obj.setFname(fname);
		obj.setLname(lname);
		obj.setUname(uname);
		obj.setPassword(password);
		obj.setEmail(email);
		obj.setDob(dob);
		obj.setContact(contact);
		obj.setCourse(course);
		obj.setId(id);
		
		String sql="UPDATE student SET fname=?,lname=?,uname=?,pwd=?,email=?,dob=?,contact=?,course=? WHERE id=?";
		
		DLDAO obj1=new DLDAO();
		String msg=obj1.UpdtStdtData(obj,sql);
		if(msg.equals("success"))
		{
			response.sendRedirect("AdminHome.jsp?Values Successfully Updated..!");
		}
		else
		{
			response.sendRedirect("Updt.jsp?error=Updation Failed!!!");	
		}
		
		
	}

}

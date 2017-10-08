package com.ibm.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.dao.CABDAO1;
import com.ibm.model.RegModel1;



@WebServlet("/RegServlet1")
public class RegServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public RegServlet1() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email=request.getParameter("email");
		String uname=request.getParameter("uname");
		String pwd=request.getParameter("pwd");
		String contact=request.getParameter("contact");
		
		
		RegModel1 obj=new RegModel1();
		obj.setUname(uname);
		obj.setPwd(pwd);
		obj.setEmail(email);
		obj.setContact(contact);
		
		String sql="insert into register(email,uname,pwd,contact) values(?,?,?,?)";
		
		CABDAO1 obj1=new CABDAO1();
		String msg=obj1.InsertUserData(obj,sql);
		if(msg.equals("success"))
		{
			response.sendRedirect("login.jsp");
		}
		else
		{
			response.sendRedirect("Login.html");	
		}
		
		
		
		
	}

		
	}



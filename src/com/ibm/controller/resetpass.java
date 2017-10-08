package com.ibm.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import com.ibm.dao.CABDAO1;
import com.ibm.model.RegModel1;
import com.ibm.model.passm;



@WebServlet("/resetpass")
public class resetpass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public resetpass() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email=request.getParameter("email");
		String pwd=request.getParameter("pwd");
		passm obj=new passm();
		obj.setEmail(email);
		obj.setPwd(pwd);
		
		if(email.equals(obj))
		
			obj.setPwd(pwd);
			String sql="update register set pwd=? where email=?";
			CABDAO1 obj1=new CABDAO1();
			String msg=obj1.ResetPwd(obj,sql);
			if(msg.equals("success"))
			{
				response.sendRedirect("login.jsp");
			}
			else
			{
				 response.sendRedirect("login.jsp?error=INVALID USERNASME AND PASSWORD");	
			}
		}
		
	

	}
		
	


package com.dl.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dl.dao.DLDAO;
import com.dl.model.adminmodel;


@WebServlet("/adminlogins")
public class adminlogins extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public adminlogins() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		

		String uname=request.getParameter("uname");
		String password=request.getParameter("pwd");
		adminmodel obj=new adminmodel();
		obj.setUname(uname);
		obj.setPwd(password);
		String sql="SELECT * FROM admin WHERE uname=? AND pwd=?";
		DLDAO obj1=new DLDAO();
		String msg=obj1.ValidateAdmin(obj,sql);
		if(msg.equals("success"))
		{
			HttpSession session=request.getSession();
			session.setAttribute("user",uname);
			response.sendRedirect("AdminHome.jsp");
		}
		else
		{
			response.sendRedirect("AdminLogin.html?error=INVALID USERNAME OR PASSWWORD");
		}

		
		
	}

}

package com.dl.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dl.dao.DLDAO;

import com.dl.model.adminmodel;

/**
 * Servlet implementation class reset
 */
public class reset extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public reset() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uname=request.getParameter("uname");
		String password=request.getParameter("pwd");
		adminmodel obj=new adminmodel();
		obj.setUname(uname);
		obj.setPwd(password);
		
		if(uname.equals("Admin"))
		{
			obj.setPwd(password);
			String sql="UPDATE ADMIN SET PWD=? WHERE UNAME=?";
			DLDAO obj1=new DLDAO();
			String msg=obj1.ResetPwd(obj,sql);
			if(msg.equals("success"))
			{
				response.sendRedirect("AdminLogin.html");
			}
			else
			{
				response.sendRedirect("reset.html?error=Password Reset Failed");	
			}
		}
		else
		{
			response.sendRedirect("reset.html?error=INVALID USERNAME");
		}
	}

}

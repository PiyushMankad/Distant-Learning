package com.dl.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dl.dao.DLDAO;


@WebServlet("/deletecourse")
public class deletecourse extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public deletecourse() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String id=request.getParameter("R");
		String sql="DELETE FROM COURSE WHERE name=?";
		DLDAO obj=new DLDAO();
		String msg=obj.DelRcrd(sql,id);
		if(msg.equals("success"))
		{
			response.sendRedirect("AdminHome.jsp?Successfully Deleted!!!!");
		}
		else
		{
			response.sendRedirect("DelStdt.jsp?error=Deletion Failed!");
		}
		
		
	}

}

package com.dl.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dl.dao.DLDAO;

/**
 * Servlet implementation class dele
 */
@WebServlet("/dele")
public class dele extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dele() {
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
	
		String id=request.getParameter("R");
		String sql="DELETE FROM student WHERE id=?";
		DLDAO obj=new DLDAO();
		String msg=obj.DelRcrd(sql,id);
		if(msg.equals("success"))
		{
			response.sendRedirect("AdminHome.jsp?Successfully Deleted!!!!");
		}
		else
		{
			response.sendRedirect("DelRcrd.jsp?error=Deletion Failed!");
		}
		
		
		
	}

}

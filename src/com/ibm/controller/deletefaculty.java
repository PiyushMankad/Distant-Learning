package com.ibm.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.dao.CABDAO1;

/**
 * Servlet implementation class deletefaculty
 */
@WebServlet("/deletefaculty")
public class deletefaculty extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deletefaculty() {
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
		
		String[] id=request.getParameterValues("rid");
		String sql="DELETE FROM register WHERE ID=?";
		CABDAO1 obj=new CABDAO1();
		String msg=null;
		for(int i=0;i<id.length;i++)
		  {
			  msg=obj.DelRcrd(sql, id[i]);
			  System.out.println(id[i]+" "+msg);
		  }
		response.sendRedirect("DelFclty.jsp");
		
		
		
	}

}

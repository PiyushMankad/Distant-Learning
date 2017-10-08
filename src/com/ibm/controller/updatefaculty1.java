package com.ibm.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.dao.CABDAO1;
import com.ibm.model.RegModel1;

/**
 * Servlet implementation class updatefaculty1
 */
@WebServlet("/updatefaculty1")
public class updatefaculty1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updatefaculty1() {
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
	
		
		
		

        String email=request.getParameter("email");
		String uname=request.getParameter("uname");
		String pwd=request.getParameter("pwd");
		String contact=request.getParameter("contact");
		String id=request.getParameter("id");
		
		RegModel1 obj=new RegModel1();
		obj.setEmail(email);
		obj.setUname(uname);
		obj.setPwd(pwd);
		obj.setContact(contact);
		obj.setId(id);
		
		String sql="UPDATE register SET email=?,uname=?,pwd=?,contact=? WHERE id=?";
		
		CABDAO1 obj1=new CABDAO1();
		String msg=obj1.UpdtFcltyData(obj,sql);
		if(msg.equals("success"))
		{
			response.sendRedirect("AdminHome.jsp?Values Successfully Updated..!");
		}
		else
		{
			response.sendRedirect("UpdtFclty.jsp?error=Updation Failed!!!");	
		}
		
		
		
	}

}

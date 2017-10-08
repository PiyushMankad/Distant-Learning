package com.ibm.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.dao.CABDAO1;
import com.ibm.model.RegModel1;

@WebServlet("/updatefaculty")
public class updatefaculty extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updatefaculty() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String email=request.getParameter("email");
		String uname=request.getParameter("uname");
		String password=request.getParameter("pwd");
		String contact=request.getParameter("contact");
		String id=request.getParameter("id");
		
		RegModel1 obj=new RegModel1();
		obj.setEmail(email);
		obj.setUname(uname);
		obj.setPwd(password);
		obj.setContact(contact);
		
		String sql="UPDATE register SET email=?,uname=?,pwd=?,contact=? WHERE id=?";
		
		CABDAO1 obj1=new CABDAO1();
		String msg=obj1.UpdtFcltyData(obj,sql);
		if(msg.equals("success"))
		{
			response.sendRedirect("AdminHome.html?Values Successfully Updated..!");
		}
		else
		{
			response.sendRedirect("UpdtFclty.jsp?error=Updation Failed!!!");	
		}
		
		
	}

}

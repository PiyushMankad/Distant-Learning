package com.ibm.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.dao.CABDAO1;
import com.ibm.model.RegModel1;

@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		
        
		//get all values from request object
		String id=request.getParameter("id");
		String email=request.getParameter("email");
		String uname=request.getParameter("uname");
		String pwd=request.getParameter("pwd");
		String contact=request.getParameter("contact");
		
		
		//set all values indise model class
		RegModel1 obj=new RegModel1();
		obj.setEmail(email);
		obj.setUname(uname);
		obj.setPwd(pwd);
		obj.setContact(contact);
		
		
		String sql="update register set email=?,uname=?,pwd=?,contact=? where id=?";
		 
		CABDAO1 obj1=new CABDAO1();
		String msg=obj1.UpdateUserData(obj,sql,id);
		if(msg.equals("success"))
		{
			response.sendRedirect("self.jsp");
		}
		else
		{
			response.sendRedirect("self.jsp?error=fail to update record");	
		}
	}

}

package com.ibm.controller;
import com.ibm.dao.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ibm.dao.CABDAO1;

import com.ibm.model.RegModel1;


@WebServlet("/LoginServlet1")
public class LoginServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public LoginServlet1() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		

        String email=request.getParameter("email");
        String pwd=request.getParameter("pwd");
        //String uname=request.getParameter("uname");
        String uname =CABDAO1.uname(email);
        RegModel1 obj=new RegModel1();
        obj.setEmail(email);
        obj.setPwd(pwd);
        
        String sql="select * from register where email=? and pwd=?";
        
        CABDAO1 obj1=new CABDAO1();
        String msg=obj1.ValidateUser(obj, sql);
        if(msg.equals("success"))
        {
        	HttpSession session=request.getSession();
        	session.setAttribute("facultysession", email);// session email
        	session.setAttribute("professor", uname);
        	session.setAttribute("email", email);
        	
        	HttpSession obsession=request.getSession();
        	obsession.setAttribute("email", email);
        	
        	response.sendRedirect("USERHOME.jsp");
        }
        else
        {
       	 response.sendRedirect("login.jsp?error=INVALID USERNASME AND PASSWORD");
        }
        
	}

}

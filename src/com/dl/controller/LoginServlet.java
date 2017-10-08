package com.dl.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dl.dao.DLDAO;
import com.dl.model.regmodel;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
				String email=request.getParameter("email");
				String password=request.getParameter("password");
				regmodel obj=new regmodel();
				obj.setEmail(email);
				obj.setPassword(password);
				String sql="SELECT * FROM student WHERE email=? AND pwd=?";
				DLDAO obj1=new DLDAO();
				String msg=obj1.ValidateUser(obj,sql);
				if(msg.equals("success"))
				{
					HttpSession session=request.getSession();
		        	session.setAttribute("email", email);
					response.sendRedirect("student.jsp");
				}
				else
				{
					response.sendRedirect("index.html?error=INVALID EMAIL AND PASSWWORD");
				}
				
			}
	}



package com.dl.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dl.dao.DLDAO;


@WebServlet("/feedback")
public class feedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public feedback() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name=  request.getParameter("name");		
		String email = request.getParameter("email");
		String description=  request.getParameter("desc");
				
                    
                	
                	String sql="insert into feedback(description,name,email) values(?,?,?)";
                    DLDAO obj1=new DLDAO();
                    
                    String msg=obj1.Feed(description,name,email,sql);
                    	if(msg.equals("success"))
                    	{
                    		response.sendRedirect("feedbackform.jsp?msg=feedback_submitted");
                    	}
                    	else
                    	{
                    		response.sendRedirect("feedbackform.jsp?msg=failed_to_submit");

                    	}
                    
		
		
		
		
	}

}

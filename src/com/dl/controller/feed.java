package com.dl.controller;

import java.io.BufferedInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.StringTokenizer;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.dl.dao.DLDAO;



@WebServlet("/feed")
@MultipartConfig(maxFileSize = 16177215)
public class feed extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public feed() {
           
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		// gets values of text fields
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
                    
                    
                    
                    //************************************************************************************
                    	}
	

}

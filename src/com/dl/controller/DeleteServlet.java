package com.dl.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dl.dao.DLDAO;


@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public DeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	
		
		  DLDAO obj=new DLDAO();
		  String msg=null;
		  String [] id=request.getParameterValues("rid");
		  for(int i=0;i<id.length;i++)
		  {
			  String sql="delete from student where id=?";
			  msg=obj.DeleteUserByID(sql, id[i]);
			  System.out.println(id[i]+" "+msg);
		  }
		response.sendRedirect("searchcontact.jsp");
		
	}

		
		
	}



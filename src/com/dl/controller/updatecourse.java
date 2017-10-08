package com.dl.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dl.dao.DLDAO;
import com.dl.model.CourseModel;


@WebServlet("/updatecourse")
public class updatecourse extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public updatecourse() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		

		String name=request.getParameter("name");
		String duration=request.getParameter("duration");
		String details=request.getParameter("details");
		String trainer=request.getParameter("trainer");
		String eligibility=request.getParameter("eligibility");
		String assignments=request.getParameter("assignments");
		String certification=request.getParameter("certification");
		
		CourseModel obj=new CourseModel();
		
		obj.setAssignments(assignments);
		obj.setCertification(certification);
		obj.setDetails(details);
		obj.setDuration(duration);
		obj.setEligibility(eligibility);
		
		obj.setTrainer(trainer);
		obj.setName(name);
		
		String sql="UPDATE COURSE SET DURATION=?, DETAILS=?, TRAINER=?, ELIGIBILITY=?, ASSIGNMENTS=?, CERTIFICATION=? WHERE name=?";
		
		DLDAO obj1=new DLDAO();
		String msg=obj1.UpdtCourse(obj,sql);
		if(msg.equals("success"))
		{
			response.sendRedirect("AdminHome.html?Values Successfully Updated..!");
		}
		else
		{
			response.sendRedirect("UpdtCourse.jsp?error=Updation Failed!!!");	
		}
		
		
	}

}

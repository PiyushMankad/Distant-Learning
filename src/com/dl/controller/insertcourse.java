package com.dl.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dl.dao.DLDAO;
import com.dl.model.CourseModel;

/**
 * Servlet implementation class insertcourse
 */
@WebServlet("/insertcourse")
public class insertcourse extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public insertcourse() {
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
		
		
		String name=request.getParameter("name");
		String duration=request.getParameter("duration");
		String details=request.getParameter("details");
		String trainer=request.getParameter("trainer");
		String eligibility=request.getParameter("eligibility");
		String assignment=request.getParameter("assignments");
		String certification=request.getParameter("certification");
		
		CourseModel obj=new CourseModel();
		
		obj.setName(name);
		obj.setDuration(duration);
		obj.setDetails(details);
		obj.setTrainer(trainer);
		obj.setEligibility(eligibility);
		obj.setAssignments(assignment);
		obj.setCertification(certification);
		
String sql="insert into course(name,duration,details,trainer,eligibility,assignments,certification) values(?,?,?,?,?,?,?)";
		
		DLDAO obj1=new DLDAO();
		String msg=obj1.InsertCourseData(obj,sql);
		if(msg.equals("success"))
		{
			response.sendRedirect("AdminHome.jsp?Successfully Inserted");
		}
		else
		{
			response.sendRedirect("InsCourse.jsp?error=Insertion Failed");	
		}
		
		
		
	}

}

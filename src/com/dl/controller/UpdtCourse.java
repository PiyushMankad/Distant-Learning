package com.dl.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dl.dao.DLDAO;

import com.dl.model.CourseModel;


public class UpdtCourse extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdtCourse() {
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
		// TODO Auto-generated method stub
		
		String id=request.getParameter("id");
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
		obj.setId(id);
		obj.setTrainer(trainer);
		obj.setName(name);
		
		String sql="UPDATE COURSE SET NAME=?, DURATION=?, DETAILS=?, TRAINER=?, ELIGIBILITY=?, ASSIGNMENTS=?, CERTIFICATION=? WHERE ID=?";
		
		DLDAO obj1=new DLDAO();
		String msg=obj1.UpdtCourse(obj,sql);
		if(msg.equals("success"))
		{
			response.sendRedirect("AdminHome.jsp?Values Successfully Updated..!");
		}
		else
		{
			response.sendRedirect("UpdtCourse.jsp?error=Updation Failed!!!");	
		}
		
	}

}

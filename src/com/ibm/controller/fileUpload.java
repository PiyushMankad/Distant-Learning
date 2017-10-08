package com.ibm.controller;

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
import javax.servlet.http.Part;
import javax.servlet.http.HttpSession;
import com.ibm.files.Files;

@WebServlet("/fileUpload")
@MultipartConfig(maxFileSize = 16177215)
public class fileUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public fileUpload() {
           
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		// gets values of text fields
		
		
				String finame = request.getParameter("filename");
				String title =  request.getParameter("title");
				 String Filename="";
               
				
				
				InputStream inputStream = null;
				String savePath = getServletContext().getRealPath("/")+"images\\";
				
				Part filePart = request.getPart("photo");
				if (filePart != null) {
					// debug messages

					
			         
					
					System.out.println(filePart.getName());
					System.out.println(filePart.getSize());
					System.out.println(filePart.getContentType());

					// obtains input stream of the upload file
					inputStream = filePart.getInputStream();
					
					BufferedInputStream bf=new BufferedInputStream(inputStream);
					
					//********************************GETTING FILE NAME*****************************************
					String header=filePart.getHeader("content-disposition");
					StringTokenizer st=new StringTokenizer(header,";");
					String fileToken=""; 
					while(st.hasMoreElements())
					{
						fileToken=st.nextToken();
					}
				   
				    StringTokenizer st1=new StringTokenizer(fileToken,"=");
                   
                    while(st1.hasMoreElements())
					{
						Filename=st1.nextToken();
						
					}
                  
                    Filename=Filename.replace("\"", "");
                   
                    //************************************************************************************
                    FileOutputStream fout=new FileOutputStream(savePath+Filename);
                    int i=0;
                    while((i=bf.read())!=-1)
                    {
                    	fout.write(i);
                    }
                    
                    		
                    
                    
				}
 
		
            //  String ext="a";
				
				
				
				String finalpath=savePath+Filename; 
				
             	String ext=Files.extension(finalpath);
				
				  
            
               
              //  request.setAttribute("Filename", Filename); 
                request.setAttribute("finalpath", finalpath); 
              //  request.setAttribute("finame", name); 
                request.setAttribute("ext", ext); 
                 request.setAttribute("finame", finame); 
                request.setAttribute("title", title);  
               // request.setAttribute("professor", professor);  
                
                // forwards to the message page
                
                
               
                getServletContext().getRequestDispatcher("/upload.jsp").forward(request, response);
         //  response.sendRedirect("FileUploads.jsp");     

				
				
				
		
		
	}
	

}

     <%@ page import="com.ibm.database.Database" %> 
   <%String url=request.getParameter("url");
   int rs=Database.videosupload(url);
   if(rs==1)
   out.println("video uploaded");
   else
	   out.println("video not uploaded");
   %>

<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page import="com.ibm.database.Database"%>
<!DOCTYPE HTML>
<html>
<head>
<title>ADMIN HOMEPAGE</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="css/style3.css" rel="stylesheet" type="text/css" media="all"/>
<link href="css/style4.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Agility  Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--Google Fonts-->
<link href='https://fonts.googleapis.com/css?family=Marvel:400,700' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Roboto:400,300,500,700,900' rel='stylesheet' type='text/css'>
<!--google fonts-->
<script src="js/jquery-1.11.0.min.js"></script>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<style type="text/css">nav {
    background-color: #333;
    border: 1px solid #333;
    color: #fff;
    display: block;
    margin: 0;
    overflow: hidden;
}
nav ul{
    margin: 0;
    padding: 0;
    list-style: none;
}
nav ul li {
    margin: 0;
    display: inline-block;
    list-style-type: none;
    transition: all 0.2s;
}

nav > ul > li > a {
    color: #aaa;
    display: block;
    line-height: 2em;
    padding: 0.5em 2em;
    text-decoration: none;

}

nav li > ul{
    display : none;
    margin-top:1px;
    background-color: #bbb;

}

nav li > ul li{
    display: block;
}

nav  li > ul li a {
    color: #111;
    display: block;
    line-height: 2em;
    padding: 0.5em 2em;
    text-decoration: none;
}

nav li:hover {
    background-color: #666;
}
nav li:hover > ul{
    position:absolute;
    display : block;
}
nav li > ul > li ul  {
    display: none;
    background-color: #888;
}
nav li > ul > li:hover > ul  {
    position:absolute;
    display : block;
    margin-left:100%;
    margin-top:-3em;
}
</style>
</head>
<body>
<% String emale=session.getAttribute("user").toString();
if(emale!=null){%>



<div>
<nav>
    <ul>
    <li><a href="#home">HOME</a></li>
        
        <li>
            <a href="http://www.thecollegetourist.com/">Blog</a>
            
        </li>
        
        <li><a href="about.jsp">About us</a>
        </li>
        		
        <li><a href="http://www.collegenews.com/">News</a>
        
        </li>
        
       	
		</li>
		<li><a href="door(2).jsp">Log Out</a></li>
	</ul>

	</nav>
</div>





<!--header strat here-->
<div class="banner agileits">
	
	
			
		
				
				 	 <span class="menu"> <img src="images/icon.png" alt="!"></span>	
				    	<!-- script-for-menu -->
							<div class="educate">
	<div class="container">
		<div class="education-main">
			<ul class="ch-grid">
				 
				 <a href="AdminStdt.html">
				 <div class="col-md-3 w3agile">
					<li>
						<div class="ch-item">				
							<div class="ch-info">
								<div class="ch-info-front ch-img-1">
									<span class="glyphicon glyphicon-grain" aria-hidden="true"> </span>
					                <h5>STUDENTS</h5>
								</div>
								<div class="ch-info-back">
									<h3><br>Open Student Panel</h3>
									<p></p>
								</div>	
							</div>
						</div>
					</li>
					</div> 
					</a>
					
					
					
					<a href="AdminFclty.html">
					 <div class="col-md-3 w3agile">
					<li>
						<div class="ch-item">
							<div class="ch-info">
								<div class="ch-info-front ch-img-2">
									<span class="glyphicon glyphicon-education" aria-hidden="true"> </span>									
					                <h5>FACULTY</h5>
								</div>
								<div class="ch-info-back">
									<h3><br>Open Faculty Panel</h3>
									<p></p>
								</div>
							</div>
						</div>
					</li>
					</div>
					</a>
					
					
					<a href="AdminCourse.html">
					 <div class="col-md-3 w3agile">
					<li>
						<div class="ch-item">
							<div class="ch-info">
								<div class="ch-info-front ch-img-3">
									<span class="glyphicon glyphicon-hourglass" aria-hidden="true"> </span>
					                <h5>COURSES</h5>
								</div>
								<div class="ch-info-back">
									<h3><br>Open Course Panel</h3>
									<p></p>
								</div>
							</div>
						</div>
					</li>
					</div>
					</a>
					
					
					
					<a href="c.jsp">
					 <div class="col-md-3 w3agile">
					<li>
						<div class="ch-item">
							<div class="ch-info">
								<div class="ch-info-front ch-img-4">
									<span class="glyphicon glyphicon-eye-open" aria-hidden="true"> </span>
					                <h5>Announcements</h5>
								</div>
								<div class="ch-info-back">
									<h3><br>Important Announcements</h3>
									<p></p>
								</div>
							</div>
						</div>
					</li>
					</div>
					</a>	

					
					
			<div class="clearfix"> </div>
			 </ul>
		 </div>
	</div>
</div>

						<!-- /script-for-menu -->
		
				 
							
	
   </div>
<!--header end here-->
<!-- FlexSlider -->
				  
<!-- FlexSlider -->
<!--banner end here-->
<!--educate logos start here-->
<!--educate logos end here-->
<!--we do start here-->
			<%} %>
</body>
</html>
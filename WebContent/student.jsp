<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.ibm.database.Database"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Student homepage</title>
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
<link rel="stylesheet" href="css/stylep.css" type="text/css" media="all" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style type="text/css">
.fa {
    padding: 20px;
    font-size: 30px;
    width: 50px;
    text-align: center;
    text-decoration: none;
	border-radius:60%;
}

/* Add a hover effect if you want */
.fa:hover {
    opacity: 0.7;
}
.fa-google {
  background: #dd4b39;
  color: white;
}

.fa-linkedin {
  background: #007bb5;
  color: white;
}

.fa-facebook {
    background: #3B5998;
    color: white;
}

/* Twitter */
.fa-twitter {
    background: #55ACEE;
    color: white;
}
.footer{
background-color:#333333;
color:#FFFFFF;
text-align:center;}








nav {
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

<%String num =(String)session.getAttribute("email"); 
if(num!=null){
%>
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
	
	
			
		
				
				 	 <span class="menu"> <img src="images/icon.png" alt=""></span>	
				    	<!-- script-for-menu -->
							<div class="educate">
	<div class="container">
		<div class="education-main">
			<ul class="ch-grid">
				 
				  <a href="filedownload.jsp">
				 <div class="col-md-3 w3agile">
					<li>
						<div class="ch-item">				
							<div class="ch-info">
								<div class="ch-info-front ch-img-1">
									<span class="glyphicon glyphicon-grain" aria-hidden="true"> </span>
					                <h5>Assignments</h5>
								</div>
								<div class="ch-info-back">
									<h3><br>Complete Your Assignments</h3>
									<p></p>
								</div>	
							</div>
						</div>
					</li>
					</div> 
					</a>
					
										
					<a href="video1.jsp">
					 <div class="col-md-3 w3agile">
					<li>
						<div class="ch-item">
							<div class="ch-info">
								<div class="ch-info-front ch-img-2">
									<span class="glyphicon glyphicon-education" aria-hidden="true"> </span>									
					                <h5>Study Material</h5>
								</div>
								<div class="ch-info-back">
									<h3><br>Lectures</h3>
									<p></p>
								</div>
							</div>
						</div>
					</li>
					</div>
					</a>
					
					
					<a href="fb4.jsp">
					 <div class="col-md-3 w3agile">
					<li>
						<div class="ch-item">
							<div class="ch-info">
								<div class="ch-info-front ch-img-3">
									<span class="glyphicon glyphicon-hourglass" aria-hidden="true"> </span>
					                <h5>Question&Answer </h5>
								</div>
								<div class="ch-info-back">
									<h3><br>Ask Questions</h3>
									<p></p>
								</div>
							</div>
						</div>
					</li>
					</div>
					</a>
					
					
					
					<a href="a.jsp">
					 <div class="col-md-3 w3agile">
					<li>
						<div class="ch-item">
							<div class="ch-info">
									<div class="ch-info-front ch-img-4">
									<span class="glyphicon glyphicon-eye-open" aria-hidden="true"> </span>
					                <h5>Notifications</h5>
					                <h5> <%=Database.getnoticount(num)%></h5>
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
<div class="events">
	<div class="container">
		<div class="events-main">
			<div class="events-top">
				<h3>Events</h3>
			</div>
			<div class="events-grid">
				<div class="col-md-3 event-month wthree">
					<h3>20</h3>
					<h4>June</h4>
				</div>
				<div class="col-md-5 event-text">
					<h4>Placement day</h4>
					<p>Various IT companies are coming from all over the world to pick the best of the best</p>
					<a href="single.html">Read More</a>
					<p> </p>
				</div>
				<div class="col-md-4 event-img">
					<div class="item item-type-move">
						<a class="item-hover" href="single.html">						
							<div class="item-info">
								<div class="headline">
									Learning
									<div class="line"> </div>
								</div>
								<div class="date">Lorem ipsum dolor</div>							
							</div>
							<div class="mask"> </div>
					    </a>
						<div class="item-img">
								<img src="images/e1.jpg" class="img-responsive" alt="">
						</div>
                </div>

				</div>
			   <div class="clearfix"> </div>
			</div>
			<div class="events-grid">
				<div class="col-md-3 event-month wthree">
					<h3>24</h3>
					<h4>June</h4>
				</div>
				<div class="col-md-5 event-text">
					<h4>College Fest</h4>
					<p>You are cordially invited to attend the college fest in great numbers and make it a roaring success.</p>
					<a href="single.html">Read More</a>
					<p> </p>
				</div>
				<div class="col-md-4 event-img">
					<div class="item item-type-move">
						<a class="item-hover" href="single.html">						
							<div class="item-info">
								<div class="headline">
									Learning
									<div class="line"> </div>
								</div>
								<div class="date">Lorem ipsum dolor</div>							
							</div>
							<div class="mask"> </div>
					    </a>
						<div class="item-img">
								<img src="images/e2.jpg" class="img-responsive" alt="">
						</div>
                </div>
				</div>
			   <div class="clearfix"> </div>
			</div>
			<div class="events-grid">
				<div class="col-md-3 event-month wthree">
					<h3>26</h3>
					<h4>June</h4>
				</div>
				<div class="col-md-5 event-text">
					<h4>Graduation Day</h4>
					<p>The final day of your college life.Farewell....</p>
					<a href="single.html">Read More</a>
					<p> </p>
				</div>
				<div class="col-md-4 event-img">
					<div class="item item-type-move">
						<a class="item-hover" href="single.html">						
							<div class="item-info">
								<div class="headline">
									Learning
									<div class="line"> </div>
								</div>
								<div class="date">Lorem ipsum dolor</div>							
							</div>
							<div class="mask"> </div>
					    </a>
						<div class="item-img">
								<img src="images/e3.jpg" class="img-responsive" alt="">
						</div>
                </div>
				</div>
			   <div class="clearfix"> </div>
			</div>
		</div>
	</div>
</div>
<!--event end here-->
<!--footer end here-->	
<hr/>
<div class="footer" ><br/>
<a href="https://www.facebook.com/about/login/" class="fa fa-facebook"></a>
<a href="https://twitter.com/login" class="fa fa-twitter"></a>
<a href="https://www.google.co.in" class="fa fa-google"></a>
<a href="https://in.linkedin.com/" class="fa fa-linkedin"></a><br/>

<br />	<sub>� 2017 Distance Learning Inc. All rights reserved.</sub>

</div>
		<%} %>
</body>
</html>
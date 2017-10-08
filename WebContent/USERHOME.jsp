<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.ibm.database.Database"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Faculty Login Portal</title>
<style>







#logo{
    position: absolute;
    right:10px;
    bottom: 10px;
}


.logoutLblPos{

   position:absolute;
   right:10px;
   top:13px;
}

body{
    margin: 0;
    padding: 0;
    font-size: 15px;
    font-family: "Lucida Grande", "Helvetica Nueue", Arial, sans-serif;
}
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





.container {
    position: relative;
  
    float:left;
    
    margin-top:60px;
    margin-left: 30px;
    width: "100px";
    
}

.image {
  opacity: 1;
  display: block;
 /* width: 100%;
  height: auto;
  
  */
  width:"500px";
  transition: .5s ease;
  backface-visibility: hidden;
  margin-left:15px;

}

.image1{
  opacity: 1;
  display: block;
 /* width: 100%;
  height: auto;
  
  */
  width:"400px";
  transition: .5s ease;
  backface-visibility: hidden;
  margin-left:auto;
margin-left:25px;
}


.middle {
  transition: .5s ease;
  opacity: 0;
  position: absolute;
  top: 50%;
  left: 53%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%)
}

.container:hover .image {
  opacity: 0.3;
}

.container:hover .image1 {
  opacity: 0.3;
}


.container:hover .middle {
  opacity: 1;
}

.text1 {
  opacity:0.6;
  background-color: black;
  color: white;
  font-size: 14px;
  padding: 16px 22px;
  text-align:center;
}





 html
            {
                height:100%;
            }

            body
            {
                min-height:100%;
                padding:0; /*not needed, but otherwise header and footer tags have padding and margin*/
                margin:0; /*see above comment*/
            }

            body
            {
                position:relative;
                padding-bottom:500px; /* Same height as the footer. */           
            }

            footer
            {
                position:absolute;
                bottom:0px;
                height: 220px;
                width: 1000px;
                margin-right: 200px;

                background-image: url("kb.jpg") ;
            }

.onee
{
  margin-left:10px;
}

.secondd
{
  margin-left: 250px;
  margin-top: -163px;

}
.thirdd
{
margin-left: 480px;
margin-top: -110px; 

}

.jj
{


background-color: lightgrey;
height: 600px;
    width: 400px;
    border: 25px solid brown;
    padding: 50px;
    margin: 50px;
    margin-top: 500px;

}


.dd
{
     margin-left: 550px;
    margin-top:  -570px;
}



</style>


</head>


<body background="qw.jpg">
<% 
	String emale=session.getAttribute("email").toString();
 if(emale!=null) {
 %>

<div>
<nav>
    <ul>
        <li>
            <a href="#home">HOME</a>
          
        </li>
     
        <li>
            <a href="#ABOUT">ABOUT</a>
            <ul>
                <li>
                    <a href="college.html">college</a>
                    
                </li>
                <li><a href="branches.html">branches</a></li>
                <li>
                    <a href="events.html">events</a>
                    
                </li>
            </ul>
        </li>

       
        
        
        <li><a href="#details">DETAILS</z></a>
       
       <ul>
       <li>
       
       <a href ="self.jsp">self</a>
       <li><a href="facultyinfo.jsp">faculty_info</a></li>
       </li> 
        
        </li>
        
    </ul>
</nav>


</div>


<form align="right" name="form1" method="post" action="door(2).jsp">
  <label class="logoutLblPos">
  <input name="submit2" type="submit" id="submit2" value="log out">
  </label>
</form>











<div class="main">
  
<center>
<font color="black"><h1> WELCOME FACULTIES</h1></font>

</center>


<div class="one">


<div class="container">
  <img src="cd.jpg" alt="Avatar" class="image1"   height="310" width="200" >
  <div class="middle">
    <div class="text1"><a href="searchuser.jsp"><font color="#ffffff">STUDENT PORTAL</font></a></div>
  </div>
</div>

<div class="container">
  <img src="vs.jpg" alt="Avatar" class="image"   height="310" width="200" >
  <div class="middle">
    <div class="text1"><a href="fb4.jsp"><font color="#ffffff">DISCUSSIONS</font></a></div>
  </div>
</div>
<div class="container">
  <img src="ass.jpg" alt="Avatar" class="image"   height="310" width="200" >
  <div class="middle">
    <div class="text1"><a href="fileupload.jsp"><font color="#ffffff">ASSIGNMENTS</font></a></div>
  </div>
</div>
<div class="container">
  <img src="erg.jpg" alt="Avatar" class="image"   height="310" width="200" >
  <div class="middle">
    <div class="text1"><a href="videos.jsp"><font color="#ffffff">LECTURES</font></a></div>
  </div>
</div>

<div class="container">
  <img src="hmj.jpg" alt="Avatar" class="image"   height="310" width="200" >
  <div class="middle">
    <div class="text1"><a href="b.jsp"><font color="#ffffff">ANNOUNCEMENTS</font></a></div>
  </div>
</div>


</div>




</div>

<div class="jj">
<center><h1>DISTANT LEARNING</h1><hr>
<p>
<h3>Distance education or distance learning is the education of 
students who may not always be physically present at a school.
Traditionally this usually involved correspondence courses
wherein the student corresponded with the school via post.
Today it involves online education. Courses that are conducted
(51 percent or more)are either hybrid,blended or 100% whole instruction.
Massive open online courses (MOOCs), offering large-scale interactive
participation and open access through the World Wide Web or other
network technologies, are recent developments in distance education.
 A number of other terms (distributed learning, e-learning, online 
 learning, etc.) are used roughly synonymously with distance education.</h3>
</p>
<br>
<p>One of the earliest attempts was advertised in 1728 in the
Boston Gazette for "Caleb Philipps, Teacher of the new method
of Short Hand," who sought students who wanted to learn through
 weekly mailed lessons</p>
</center>
</jj>

<div class="dd">

<video width="600" height="440" controls autoplay loop>  
  <source src="dcc.mp4" type="video/mp4">  
  
</video>

</div>
<hr>



<footer>


        <center>
        <h2>For Faculties- </h2>  </center>
        
        <div class="onee">
        <h3>ONLINE SITES</h3>
        

        <a href="https://www.tutorialspoint.com/"><font color="#000000" size="3px">Tutorials Point</font></a><br>
         <a href="https://www.javatpoint.com"><font color="#000000" size="3px">JavaTpoint</font></a><br>
          <a href="https://stackoverflow.com"><font color="#000000" size="3px">Stack Overflow</font></a><br>
           <a href="https://www.quora.com"><font color="#000000" size="3px">Quora</font></a><br>
            <a href="http://www.studytonight.com"><font color="#000000" size="3px">Study Tonight</font></a><br>
             <a href="https://www.w3schools.com"><font color="#000000" size="3px">W3School</font></a>
         
        
     </div>
     
     
     <div class="secondd">
     <h3>NEWS TREND</h3>
     <a href="http://timesofindia.indiatimes.com"><font color="#000000" size="3px">Times of India</font></a><br>
     <a href="http://aajtak.intoday.in"><font color="#000000" size="3px">Aajtak</font></a><br>
     <a href="http://www.timesnow.tv"><font color="#000000" size="3px">Times Now</font></a><br>
     
     </div>
     
     
     <div class="thirdd">
     <h3>LOGGED IN TO-</h3>
     
     <a href="https://mail.google.com"><image src="nr.png"></image></a>  
      <a href="https://www.facebook.com"><image src="vh.png"></image></a>
     <a href="https://twitter.com/login"><image src="b.png"></image></a>
     <a href="https://www.youtube.com"><image src="rh.png"></image></a>
     
   
    
     
     </div>
     
     
     
     
        </footer>









<script>
window.onload = function() {
    var c = document.getElementById("myCanvas");
    var ctx = c.getContext("2d");
    var img = document.getElementById("scream");
    ctx.drawImage(img, 10, 10);
}
</script>


<script>
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}
</script>
<%} %>


</body>
</html>
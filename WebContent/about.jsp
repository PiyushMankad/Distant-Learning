<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>About us</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
.fa {
    padding: 15px;
    font-size: 15px;
    width: 30px;
    text-align: center;
    text-decoration: none;
	 border-radius: 50%;
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



body, html {
    height: 100%;
}

/* The hero image */
.hero-image {
    background-image: url(images/b3.jpg);
    height: 50%;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    position: relative;
}
.hero-text {
    text-align: center;
    position: absolute;
    top: 50%;
    left: 50%;
    font-family:DK Momotaro;
	font-size:36px;
    transform: translate(-50%, -50%);
    color: cyan;
}
hr{
color:#0066FF;
background-color:#0066ff;
height:5px;
}
.info{
float:right;
border-color:#FFFFFF;
border-left-color:#00FFFF;
margin-left:10px;
border:2px;
width:48%;
}
#map{
width:50%;
height:300px;
background-color:#666666;
}
h3,p{
font-family:Comic Sans MS;
}
h3{
color:#0066FF;}

.footer{
background-color:#333333;
color:#FFFFFF;
text-align:center;}

</style>
</head>

<body>
<div class="hero-image">
<div class="hero-text">We envision a world where anyone, anywhere can transform their life by accessing the worlds best learning experience.
</div>
</div>
<hr/>
<div>
<div class="info">
<h3>Courses</h3><p>
Every course on Distance Learning is taught by top instructors from the worlds best universities and educational institutions. Courses include recorded video lectures, auto-graded and peer-reviewed assignments, and community discussion forums. When you complete a course, youll receive a sharable electronic Course Certificate.
</p><h3>Specializations</h3><p>
If you want to master a specific career skill, consider joining a Specialization. Youll complete a series of rigorous courses, tackle hands-on projects based on real business challenges, and earn a Specialization Certificate to share with your professional network and potential employers.
</p>
</div>
<div><h3>The Map</h3></div>
<div id="map"><br/>
</div>
</div>
<script>
      function initMap() {
        var uluru = {lat: 28.643209, lng: 77.177934};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 14,
          center: uluru
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB0Q4ENGG0-xWMXPn7WhWwdCSn6MaRp7wM&callback=initMap">
    </script>
    <hr/>
<div class="footer"><br/><br/><br/><br/>
<a href="https://www.facebook.com/about/login/" class="fa fa-facebook"></a>
<a href="https://twitter.com/login" class="fa fa-twitter"></a>
<a href="https://www.google.co.in" class="fa fa-google"></a>
<a href="https://in.linkedin.com/" class="fa fa-linkedin"></a><br/>

<br />	<sub>© 2017 Distance Learning Inc. All rights reserved.</sub>

</div>

</body>
</html>

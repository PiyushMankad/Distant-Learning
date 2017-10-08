<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<head>  
<script type="text/javascript">
function CheckColors(val){
 var element=document.getElementById('value');
 var element1=document.getElementById('date');


 var element2=document.getElementById('checkvalues');
 
 if(val=='1'||val=='3')
   element.style.display='block';
 else  
   element.style.display='none';

 if(val=='2'){
	   element1.style.display='block';
	   
}
	 else  
	   element1.style.display='none';
 
 if(val=='4')
	   element2.style.display='block';
	 else  
	   element2.style.display='none'; 
 
}
</script> 


<style>

.dropbtn {
    background-color: #4CAF50;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
  -moz-appearance: none;
    -webkit-appearance: none;
    appearance: none;
}


</style>





</head>
<body>
<form action ="download.jsp" method="post">
  <select name="values" class="dropbtn" onchange='CheckColors(this.value);'> 
   
    <option value="1">FileName</option>
    <option value="2">Date</option>
    <option value="3">Professor</option>
      <option value="4">Title</option>
  </select>
<input type="text" name="value" id="value" style='display:none;'/>
<input type="date" name="date" id="date" style='display:none;'/>
<select name="checkvalues" id="checkvalues" style='display:none;'> 
   
    <option value="IT">IT</option>
    <option value="PHYSICS">PHYSICS</option>
    <option value="CHEMISTRY">CHEMISTRY</option>
      <option value="MATHS">MATHS</option>
      <option value="ECONOMICS">ECONOMICS</option>
  </select>


<input type="submit" value="submit" />
</form>

</body>
</html>

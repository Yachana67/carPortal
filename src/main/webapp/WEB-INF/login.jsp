<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
*{
margin:0;
padding:0;
}

body{
background:url("https://c0.wallpaperflare.com/preview/140/698/423/security-computer-web-virus.jpg");

height: 70vh;
background-position: center;
background-size: cover;
}
div.main{
	width:400px;
	margin: 100px auto 0px auto;
}
h2{
text-align: center;
padding: 20px;
font-family: sans-serif;

}
div.register{
	background-color: rgba(0,0,0,0.5);
	width: 100%;
	font-size: 18px;
	border-radius: 10px;
	border:1px solid rgba(255,255,255,0.3);
	box-shadow:2px 2px 15px 
	rgba(0,0,0,0.3);
	color: #fff;
}
form#register{

margin:40px;
}
label{
font-family:sans-serif;
font-size:18px;
font-style:italic;
}
input#name{
width:300px;
border:1px solid #ddd;
border-radius: 3px;
outline:0;
padding:7px;
background-color:#fff;
box-shadow: inset 1px 1px 5px
rgba(0,0,0,0.3);
}
input#pass{
width:300px;
border:1px solid #ddd;
border-radius: 3px;
outline:0;
padding:7px;
background-color:#fff;
box-shadow: inset 1px 1px 5px
rgba(0,0,0,0.3);
}
input#emm{
width:300px;
border:1px solid #ddd;
border-radius: 3px;
outline:0;
padding:7px;
background-color:#fff;
box-shadow: inset 1px 1px 5px
rgba(0,0,0,0.3);
}

input#submit{
width:200px;
padding:7px;
font-size:16px;
font-family:sans-serif;
font-weight:600;
border:none;
border-radius:3px;
background-color:rgba(250,100,0,0.3);
color:#fff;
cursor:pointer;
border:1px solid rgba(255,255,255,0.3);
box-shadow:1px 1px 5px
rgba(0,0,0,0.3);
margin-bottom:20px;
}
#ychu{
color: white;

}
.error{
color:red;}
</style>
<script type="text/javascript">


function  validate() {
	var username=document.getElementById("name");
	
	//var emm=document.getElementById("emm");
	//var email = document.getElementById("emm").value;
	var pass=document.getElementById("pass");
	var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
	if(username.value=="" )
		{
		alert("No blank values allowed");
		return false;
		}
	   else if(pass.value=="")
		{
		alert("No blank values allowed");
		return false;
		}
	   else if(email.value=="")
	    {
	     alert("No blank values allowed");
	     return false;
	     }
	   else if (!email.match(emailPattern)) {
	        alert("Invalid email address.");
	        return false;
	    }
	else{
		return true;
	}
}




</script>
</head>
<body>
<%
String name=request.getParameter("name");
request.getSession();
session.setAttribute("user", name);

%>
<div class="main">
    <div class="register">
  <h2>Login Here</h2>
  
<form action="login" method="post" onsubmit=" return validate() "  >  
  

  
    <label> Username :</label>
  <br>
  <input type="text" name="username" id="emm" required >
  
  <br><br>
   <label> Password :</label>
  <br>
  <input type="password" name="password" id="pass"  required>
  <br><br>
 
  <input type="submit" value="Login" name="submit" id="submit" >
  <br><br>
  <a href="rpage" id="ychu"><b>Register?</b></a>
  &nbsp&nbsp
  <a href="forgot" style="color: aliceblue">Forgot Password?</a>
  </form>
 
</div>
</div>

</body>
</html>
    
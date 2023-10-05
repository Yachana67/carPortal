<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Form</title>

<style type="text/css">
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    background: url("https://c0.wallpaperflare.com/preview/140/698/423/security-computer-web-virus.jpg");
    background-size: cover;
    font-family: Arial, sans-serif;
}

.container {
    width: 400px;
    margin: 100px auto;
    background-color: rgba(0, 0, 0, 0.5);
    padding: 20px;
    border-radius: 10px;
    border: 1px solid rgba(255, 255, 255, 0.3);
    box-shadow: 2px 2px 15px rgba(0, 0, 0, 0.3);
    color: #fff;
}

h2 {
    text-align: center;
    font-size: 24px;
    margin-bottom: 20px;
}

form {
    margin: 20px 0;
}

label {
    font-size: 18px;
}

input[type="text"],
input[type="number"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border: none;
    border-radius: 3px;
    background-color: rgba(255, 255, 255, 0.8);
    color: #000;
}

input[type="radio"] {
    margin-right: 10px;
}

#submit {
    width: 100%;
    padding: 10px;
    font-size: 16px;
    font-weight: 600;
    border: none;
    border-radius: 3px;
    background-color: rgba(250, 100, 0, 0.8);
    color: #fff;
    cursor: pointer;
}

#submit:hover {
    background-color: rgba(250, 100, 0, 1);
}

#ychu {
    color: #fff;
    text-align: center;
    display: block;
    text-decoration: none;
    margin-top: 10px;
    font-weight: bold;
}

.error {
    color: red;
}
</style>
</head>
<body>
<div class="container">
    <h2>Register Here</h2>
    <form action="register" method="post" onsubmit="return validate()">
        <label for="fname">First Name:</label>
        <input name="fname" type="text" id="fname" required>

        <label for="lname">Last Name:</label>
        <input name="lname" type="text" id="lname" required>

        <label for="email">Email Address:</label>
        <input type="text" name="email" id="email" required>

        <label for="phone">Phone Number:</label>
        <input type="number" name="phone" id="phone" required>

        <label for="password">Password:</label>
        <input type="password" name="password" id="password" required>
        
         <label for="password">Username:</label>
        <input type="text" name="username" id="password" required>

        <div class="mb-4">
            <label for="gender">Gender:</label>
            <input class="form-check-input" type="radio" name="gender" id="male" value="male" required>
            <label class="form-check-label" for="male">Male</label>
            <input class="form-check-input" type="radio" name="gender" id="female" value="female" required>
            <label class="form-check-label" for="female">Female</label>
        </div>

        <label for="address1">Address 1:</label>
        <input name="address1" type="text" id="address1" required>

        <label for="address2">Address 2:</label>
        <input name="address2" type="text" id="address2" required>

        <label for="city">City:</label>
        <input name="city" type="text" id="city" required>

        <label for="country">Country:</label>
        <input name="country" type="text" id="country" required>

        <label for="pincode">Pincode:</label>
        <input name="pincode" type="number" id="pincode" required>

        <input type="submit" value="Register" name="submit" id="submit">
        <a href="lpage" id="ychu">Already have an Account?</a>
    </form>
</div>

<script type="text/javascript">
function validate() {
    var fname = document.getElementById("fname").value;
    var lname = document.getElementById("lname").value;
    var email = document.getElementById("email").value;
    var phone = document.getElementById("phone").value;
    var password = document.getElementById("password").value;
    
    var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    
    if (fname === "" || lname === "" || email === "" || phone === "" || password === "") {
        alert("No blank values allowed");
        return false;
    } else if (!email.match(emailPattern)) {
        alert("Invalid email address.");
        return false;
    }
    return true;
}
</script>
</body>
</html>
   
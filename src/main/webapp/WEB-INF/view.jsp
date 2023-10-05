<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
 
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>User Profile</title>
  <!-- Latest compiled and minified CSS -->
  
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  
    
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            border: 10px solid #ddd;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            font-size: 24px;
            margin-bottom: 20px;
        }

        .user-info {
            font-size: 12px;
            margin-bottom: 10px;
      
        .center-button {
            display: flex;
            justify-content: center;
            align-items: center;
        }
        
    </style>
</head>
<body>
    
     
      
    
     <div class="container" style="height:500px; width: 500px;height: 311px;width: 961px;">
        <p>Your Profile<p>
        <div class="user-info">
            <strong>Email:</strong> ${user.email }
        </div>
        <div class="user-info">
            <strong>First Name:</strong> ${user.fname }
        </div>
        <div class="user-info">
            <strong>Last Name:</strong> ${user.lname }
        </div>
        <div class="user-info">
            <strong>Phone:</strong> ${user.phone }
        </div>
         <div class="user-info">
            <strong>State:</strong> ${user.state }
        </div>
           <div class="user-info">
            <strong>Country:</strong> ${user.country }
        </div>
        <div class="user-info">
            <strong>Pincode:</strong> ${user.pincode }
        </div>
        <div class="user-info">
            <strong>Address 1:</strong> ${user.address1 }
        </div>
      
       
        
       
       <div>
    </div>
    </div>
    <br><br>
    <div class="container" style="height:500px; width: 500px;height: 800px;width: 961px;">
        <p>CARS LISTING<p>
       
       
       <!-- Center-align the search bar -->

    
        <table class="table table-striped-columns">
            <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Make</th>
                    <th scope="col">Name</th>
                    <th scope="col">Manufacturer Year</th>
                    
                </tr>
            </thead>
            <tbody class="table-group-divider">
                <c:forEach items="${cars}" var="car" varStatus="loop">
                    <tr>
                        <td>${loop.index + 1}</td>
                        <td>${car.make}</td>
                       
                        <td>${car.name}</td>
                        <td>${car.manufactureyear}</td>
                       
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
       <div>
    </div>

</body>
</html>

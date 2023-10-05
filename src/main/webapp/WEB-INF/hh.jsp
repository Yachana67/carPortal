<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style type="text/css">
  .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            border: 10px solid #ddd;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }


</style>
    <title>Hello, world!</title>
  </head>
  <body>



<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Cars</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="viewProfile">View Profile</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">About</a>
      </li>
     
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
     LOGOUT
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
       <li class="nav-item">
        <a class="" href="all"><button type="button" class="btn btn-danger">Your Cars</button></a>
      </li> &nbsp;
      <li class="nav-item">
        <a class="" href="addcars"><button type="button" class="btn btn-danger">ADD Cars</button></a>
      </li>
    </ul>
  </div>
      <!-- Add the search bar -->
    
  
</nav>
<br><br>

<div class="container" style="height:500px; width: 600px;height: 7000px;width: 961px;">
        <h2> Cars</h2>
       
       
       <!-- Center-align the search bar -->
<div class="center-search" >
    <form action="/search" method="get">
        <input type="text" name="keyword" placeholder="Search...">
        <button type="submit">Search</button>
    </form>
</div>
    
      <!--    <table class="table table-striped-columns">
            <thead>
                <tr>
                    
                    <th scope="col">Make</th>
                    <th scope="col">Name</th>
                    <th scope="col">Manufacturer Year</th>
                     <th scope="col">Actions</th>
                </tr>
            </thead>
                <c:forEach items="${cars}" var="car" varStatus="loop">
                    <tr>
                        
                        <td>${car.make}</td>
                         <td>${car.name}</td>
                        <td>${car.manufactureyear}</td>
                       <td><a href="/viewOneCar/${car.id}" class="btn btn-primary">View</a><td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
 -->
       <div>
       </div>
</div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>
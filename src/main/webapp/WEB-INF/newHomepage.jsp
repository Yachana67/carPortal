<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
    <title>Navbar</title>
    <style type="text/css">
.centered {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}

        .btn-get-started {
            display: inline-block;
            padding: 10px 20px;
            background-color: blue; 
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
         /* Navbar styles */
        .navbar {
            background-color: darkkhaki;
            padding: 20px;
            text-align: right;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            margin: 0 10px;
            font-size: 18px;
        }

        .navbar a.logout {
            background-color: light red;
            padding: 8px 15px;
            border-radius: 5px;
            color: white;
            text-decoration: none;
        }
        
  
    </style>
</head>
<body>
<script>
    document.addEventListener("DOMContentLoaded", function() {
        var userName = "${user_name}"; // Replace with the actual variable containing the user's name

        if (userName) {
            alert("Welcome, " + userName + "!");
        }
    });
</script>
 <p class="text-muted">This is a muted paragraph of text.</p>
    <div class="navbar" style="
    background-color: darkslategrey;
    width: initial;
    margin: -7px;
    font-size: larger;
    text-align: end;
    padding: 20px 20px;">
    
        <a href="" class="nav-item">Home</a>
        <a href="viewProfile" class="nav-item">View Profile</a>
            <a href="all" class="btn-get-started">Your Cars</a>
        <a href="#" class="nav-item logout">Logout</a>
    <h1>Welcome ${user_name}</h1>
   <div class="container mt-4">
       <div id="carouselExampleIndicators" class="carousel slide">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="d2.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="p1.jpeg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="..." class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
  
</div>
    
      
             
             
        
              <a href="addcars" class="btn-get-started animate__animated animate__fadeInUp scrollto">ADD MY CAR</a>
              </div>
            </div>
</body>
</html>
    
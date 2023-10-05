<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
<form action="car" method="post">


<div class="container">
  <h2>Add Car </h2>
  <div class="form-group">
      
    <div class="form-group">
      <label for="email">Car Name</label>
      <input type="text" class="form-control" id="name" placeholder="Your Car Name" name="name">
    </div>
    <div class="form-group">
      <label for="email">Model</label>
      <input type="text" class="form-control" id="name" placeholder="car model" name="model">
    </div>
    
    <div class="form-group">
      <label for="pwd">Manufacturer</label>
      <input type="text" class="form-control" id="description" placeholder="Manufacturer" name="make">
    </div>
          
    
    <div class="form-group">
      <label for="pwd">Year of Manufacture</label>
      <input type="number" class="form-control" id="price" placeholder="YEAR OF MANUFACTURE" name="manufactureyear">
    </div>
    
    <div class="form-group">
      <label for="pwd">Color</label>
      <input type="text" class="form-control" id="price" placeholder="Color" name="color">
    </div>
    
     <div class="form-group">
      <label for="pwd">Specification</label>
      <input type="text" class="form-control" id="price" placeholder="Specification" name="specification">
    </div>
    <div class="container text-center">
    
    
    
    
    <button type="submit" class="btn btn-primary">Add</button>
  </div>
</div>
</form>
</body>
</html>



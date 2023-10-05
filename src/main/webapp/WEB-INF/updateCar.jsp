<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Car Information</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h2>Update Car Information</h2>
        <form method="post" action="/update/${id}">
            <div class="form-group">
                <label for="make">Make:</label>
                <input type="text" class="form-control" id="make" name="make" value="${car.make}" required>
            </div>
            
             <div class="form-group">
                <label for="make">Model:</label>
                <input type="text" class="form-control" id="make" name="model" value="${car.model}" required>
            </div>
            
             <div class="form-group">
                <label for="make">Color:</label>
                <input type="text" class="form-control" id="make" name="color" value="${car.color}" required>
            </div>
            
             <div class="form-group">
                <label for="make">Specification:</label>
                <input type="text" class="form-control" id="make" name="specification" value="${car.specification}" required>
            </div>
            
             <div class="form-group">
                <label for="make">Name:</label>
                <input type="text" class="form-control" id="make" name="name" value="${car.name}" required>
            </div>
            
             <div class="form-group">
                <label for="make">Manufacture Year:</label>
                <input type="text" class="form-control" id="make" name="manufactureyear" value="${car.manufactureyear}" required>
            </div>
           
            <button type="submit" class="btn btn-primary">Update</button>
        </form>
    </div>
</body>
</html>
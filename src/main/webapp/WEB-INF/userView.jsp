<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Car Added Successfully</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <style type="text/css">
    /* Apply basic styling to the entire page */
body {
    font-family: Arial, sans-serif;
    text-align: center;
    background-color: #f2f2f2;
    padding: 20px;
}

/* Style the container for the content */
.container {
    background-color: #fff;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    padding: 20px;
    margin: 0 auto;
    max-width: 400px;
}

/* Style the headings */
h1 {
    font-size: 24px;
    color: #333;
}

/* Style the individual data fields */
label {
    font-weight: bold;
}

/* Style the data values */
.data-value {
    font-size: 18px;
    color: #007bff; /* Blue color for data values */
    margin-bottom: 10px;
}
    
    
    
    </style>
</head>
<body>
    <div class="container">
        <h1>Car Added Successfully!!</h1>
        <label>Make:</label>
        <div class="data-value">${car.make}</div>
        
        <label>Year Of Manufacture:</label>
        <div class="data-value">${car.manufactureyear}</div>
        
        <label>Model:</label>
        <div class="data-value">${car.model}</div>
        
        <label>Name:</label>
        <div class="data-value">${car.name}</div>
        
        <label>Specification:</label>
        <div class="data-value">${car.specification}</div>
        <br>
        <label>Color:</label>
        <div class="data-value">${car.color}</div>
    </div>
</body>
</html>
    
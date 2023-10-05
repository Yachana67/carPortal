<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Car Information</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <style type="text/css">
    
        /* Center-align the search bar */
        .center-search {
            display: flex;
            justify-content: center;
            align-items: center;
            
        }
    </style>
</head>


<body style="margin-top: 60px;">

<!-- Center-align the search bar -->
<div class="center-search" >
    <form action="/search" method="get">
        <input type="text" name="keyword" placeholder="Search...">
        <button type="submit">Search</button>
    </form>
</div>
    <div class="container">
        <table class="table table-striped-columns">
            <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Make</th>
                    <th scope="col">Specification</th>
                    <th scope="col">Model</th>
                    <th scope="col">Name</th>
                    <th scope="col">Manufacturer Year</th>
                    <th scope="col">Actions</th> <!-- Added a new column for actions -->
                </tr>
            </thead>
            <tbody class="table-group-divider">
                <c:forEach items="${cars}" var="car" varStatus="loop">
                    <tr>
                        <td>${car.id}</td>
                        <td>${car.make}</td>
                        <td>${car.specification}</td>
                        <td>${car.model}</td>
                        <td>${car.name}</td>
                        <td>${car.manufactureyear}</td>
                        <td>
                            <!-- Update Button -->
                            <a href="/update/${car.id}" class="btn btn-primary">Update</a>
                            <!-- Delete Button -->
                            <a href="#" class="btn btn-danger">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>

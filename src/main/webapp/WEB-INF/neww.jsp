<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
     <table class="table table-striped-columns">
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
</body>
</html>
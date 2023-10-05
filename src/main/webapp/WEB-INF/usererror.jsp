<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>User Registration</title>
</head>
<body>
    <h2>User Registration</h2>
    <form:form modelAttribute="user" method="post">
        <form:errors path="*" cssClass="error" />
        
        <label for="fname">First Name:</label>
        <form:input path="fname" /><br/>
        <form:errors path="fname" cssClass="error" /><br/>
        
        <label for="lname">Last Name:</label>
        <form:input path="lname" /><br/>
        <form:errors path="lname" cssClass="error" /><br/>
        
        <label for="email">Email:</label>
        <form:input path="email" /><br/>
        <form:errors path="email" cssClass="error" /><br/>
        
        <label for="phone">Phone:</label>
        <form:input path="phone" /><br/>
        <form:errors path="phone" cssClass="error" /><br/>
        
        <label for="gender">Gender:</label>
        <form:input path="gender" /><br/>
        <form:errors path="gender" cssClass="error" /><br/>

        <!-- Other fields and Submit button -->

        <input type="submit" value="Submit" />
    </form:form>
</body>
</html>
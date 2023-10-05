<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="validateOTP" method="post">
  <div class="form-group">
        <label for="newPassword">Enter OTP</label>
        <input type="number" name="otpp" id="newPassword" required>
    </div>
    <button type="submit">VERIFY</button>
</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="headers.jsp"></jsp:include>
<%
String message = request.getParameter("message");
if (message != null){
	out.println("<font color='red'>" + message + "</font>");
}
%>
<form action="RegisterServlet">
	<h3>Register</h3>
		<div class="container-fluid">
		<div class="row">
		<div class="col">
        <label>Name:</label>
		<input type="text" name="name" id="name" placeholder="Enter the name" required autofocus/> <br /> 
		<label>Email:</label>
		<input type="email" name="email" id="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"
		title="Must contain characters followed by @ sign,and chatracters followed by . at which domain"
		placeholder="Enter the email" required /> <br /> 
		<label>Password:</label>
	    <input type="password" name="password" id="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
		title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" 
		placeholder="Enter the password" required /> <br /> 
		<label>Address:</label> 
		<input type="text" name="address" id="address" placeholder="Enter the address" required /> <br />
		<label>MobileNumber:</label> 
	    <input type="text" name="mobilenum" id="mobilenum" placeholder="Enter the mobile number" required /> <br />
	    <button type="submit" style="font-size:11pt;color:white;background-color:green;padding:10px">
        Submit</button>
		<button type="reset" style="font-size:11pt;color:white;background-color:red;padding:10px">
		Reset</button>
					  <br />
				</div>
			</div>
		</div>
	</form>
</body>
</html>
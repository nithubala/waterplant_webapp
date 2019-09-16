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
	<h3>Register</h3>
	<form action="index.jsp">
		<div class="container-fluid">
			<div class="row">
				<div class="col">
					<label>Name:</label>
					 <input type="text" name="name" id="name" placeholder="Enter the name" required /> <br /> 
						<label>Email:</label>
					    <input type="email" name="email" id="emailid" placeholder="Enter the email" required /> <br /> 
						<label>Password:</label>
					    <input type="password" name="password" id="pass" placeholder="Enter the password" required /> <br /> 
						<label>MobileNumber:</label> 
						<input type="number" name="mobilenumber" id="mobilenum" placeholder="Enter the mobile number" required /> <br />
					   <button type="submit">Submit</button>
					<br />
				</div>
			</div>
		</div>
	</form>
</body>
</html>
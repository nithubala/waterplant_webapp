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
<form action="AdminLoginServlet">
<h3>AdminLogin</h3>
<div class="container-fluid">
			<div class="row">
				<div class="col">
					<label>Email:</label> <input type="email" name="email" id="email"
						placeholder="Enter the email" required autofocus /> <br /> 
					<label>Password:</label><input type="password" name="password" id="password"
						placeholder="Enter the password" required /> <br />
					<button type="submit">Submit</button>
					<br/>
					<a href="index.jsp">Home</a>
				</div>
			</div>
		</div>
		
		</form>
</body>
</html>
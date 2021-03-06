<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>
<style type="text/css">
label {
	width: 110px;
	display: inline-block;
	text-align: center;
}
</style>
</head>
<body style="text-align: center">
	<jsp:include page="headers.jsp"></jsp:include>
	<br />
	<form onsubmit="register()">
		<h3>User Registration</h3>
		<br /> <label>Name:</label> <input type="text" name="name" id="name"
			size=25 placeholder="Enter the name" required autofocus /><br> <br />
		<label>Email:</label> <input type="email" name="email" id="email"
			size=25 pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"
			title="Must contain characters followed by @ sign,and chatracters followed by . at which domain"
			placeholder="Enter the email" required /><br> <br /> <label>Password:</label>
		<input type="password" name="password" id="password" size=25
			pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
			title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
			placeholder="Enter the password" required /><br> <br /> <label>Address:</label>
		<input type="text" name="address" id="address" size=25
			placeholder="Enter the address" required /> <br>
		<br /> <label>MobileNumber:</label> <input type="text"
			name="mobilenum" id="mobilenum" size=25
			placeholder="Enter the mobile number" required /><br> <br /> <input
			type="submit" value="Register" class="btn btn-success">
		<button type="reset" class="btn btn-danger" value="clear">Clear</button>
		<a href="index.jsp"><u>Home?</u></a>
		<br />

	</form>
	<script type="text/javascript">
		function register() {
			event.preventDefault();

			var name = document.getElementById("name").value;
			var email = document.getElementById("email").value;
			var password = document.getElementById("password").value;
			var address = document.getElementById("address").value;
			var mobilenum = document.getElementById("mobilenum").value;

			var formData = "name=" + name + "&email=" + email + "&password="
					+ password + "&address=" + address + "&mobilenum="
					+ mobilenum;

			var url = "http://localhost:8080/waterplant_webapp/RegisterServlet?"
					+ formData;
			console.log(url);

			var formData = {};
			$.get(url, function(response) {
				console.log(response);

				var msg = JSON.parse(response);

				if (msg.errorMessage != null) {
					alert(msg.errorMessage);
					window.location.href = "register.jsp";

				} else {

					alert("Registered successfully");
					window.location.href = "userlogin.jsp";

				}
			});
		}
	</script>
</body>
</html>
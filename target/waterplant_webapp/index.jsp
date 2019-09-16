<html>
<head>
<title>Water Plant</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="headers.jsp"></jsp:include>
   <h3>Login</h3>
	<form action="useraction.jsp">
		<div class="container-fluid">
			<div class="row">
				<div class="col">
					<label>Email:</label> <input type="email" name="email" id="emailid"
						placeholder="Enter the email" required /> <br /> 
					<label>Password:</label><input type="password" name="password" id="pass"
						placeholder="Enter the password" required /> <br />
					<button type="submit">Submit</button>
					<br />
				</div>
			</div>
		</div>
	</form>
</body>
</html>

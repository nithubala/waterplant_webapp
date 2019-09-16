<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="headers.jsp"></jsp:include>
	<h3>AdminLogin</h3>
	<form>
		<div class="container-fluid">
			<div class="row">
				<div class="col">
					<label>Email:</label> <input type="email" name="email" id="emailid" placeholder="Enter the email" required autofocus /> <br /> 
					<label>Password:</label>
					<input type="password" name="password" id="pass" placeholder="Enter the password" required /> <br />
					<button type="submit">Submit</button>
					<br />
				    <a href="index.jsp">Home</a>
				</div>
			</div>
		</div>
	</form>
</body>
</html>
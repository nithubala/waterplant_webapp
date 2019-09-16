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
<form>
<h3>Welcome Admin</h3>
<div class="container-fluid">
		<div class="row">
			<div class="col">
				<a href="viewstock.jsp">View Stock</a> <br />
				 <a href="updatestock.jsp">Update Stock</a> <br /> 
				 <a href="viewuserlist.jsp">View UsersList</a> <br />
			</div>
		</div>
	</div>
</form>
</body>
</html>
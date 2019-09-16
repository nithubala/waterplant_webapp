<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Update Stock</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="headers.jsp"></jsp:include>
<h3>Update Stock</h3>
<form action="UpdateStockServlet">
<div class="container-fluid">
		<div class="row">
		<div class="col">
<label>Enter the Number of Cans to add:</label>
<input type="text" name="noofcans" id="noofcans" required autofocus/>
<button type="submit" style="font-size:11pt;color:white;background-color:green;padding:10px">
        Submit</button>
		<button type="reset" style="font-size:11pt;color:white;background-color:red;padding:10px">
		Reset</button>
</div>
</div>
</div>
</form>


</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">
html{   
    background: url("https://qph.fs.quoracdn.net/main-qimg-1a665f1ace2a695d59d9b855fedfff6c") no-repeat center fixed;    
    background-size: cover;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Plane Details Added Successful</h1>
	<h3>The Plane Name is ${plane.planename}</h3>
	<h3>Number of Seats are ${plane.seats}</h3>
	<h3>The Plane type is ${plane.type}</h3>
	
	<a href="${pageContext.request.contextPath}/logout">Logout</a>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style type="text/css">
a {
  color: red;
  text-decoration: none;
  font-weight:bold;
  font-size:large;
  display: inline-block;
  background-color: yellow;
  border-radius: 5px;
  padding: 5px;
  }

html{   
    background: url("https://qph.fs.quoracdn.net/main-qimg-1a665f1ace2a695d59d9b855fedfff6c") no-repeat center fixed;    
    background-size: cover;
}
h1
{
color: red
}

</style>
<title>Insert title here</title>
</head>
<body>


	<h1>AIRPORT MANAGEMENT SYSTEM</h1>

	<a href="${pageContext.request.contextPath}/register/form">Admin
		Registration</a>
	<br />
	<br>

	<a href="${pageContext.request.contextPath}/registermanager/form">Manager
		Registration</a>
	<br />
	<br>

	<a href="${pageContext.request.contextPath}/registerplane/form">Add
		Plane</a>
	<br />
	<br>

	<a href="${pageContext.request.contextPath}/registerpilot/form">Add
		Pilot</a>
	<br />
	<br>

	<a href="${pageContext.request.contextPath}/login/form">Admin Login</a>
	<br />
	<br>

	<a href="${pageContext.request.contextPath}/registerhangar/form">Add
		Hangar Details</a>
	<br />
	<br>

	<a href="${pageContext.request.contextPath}/myhangar/form">Dislay
		Hangar Details</a>
	<br />
	<br>

</body>
</html>
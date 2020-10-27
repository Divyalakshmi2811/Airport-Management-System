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
</style>
<title>Insert title here</title>
</head>
<body>


	<h1>Hi Admin!!!!</h1>
	<a href="${pageContext.request.contextPath}/myhangar/form">Display
		Hangar Details</a>
	<br />
	<br>


	<a href="${pageContext.request.contextPath}/mypilot/form">Display
		Pilot Details</a>
	<br />
	<br>


	<a href="${pageContext.request.contextPath}/myplane/form">Display
		Plane Details</a>
	<br />
	<br>
    
    <a href="${pageContext.request.contextPath}/logout">Logout</a>

	

</body>
</html>
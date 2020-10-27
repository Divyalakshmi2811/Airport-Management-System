<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<style type="text/css">
html{   
    background: url("https://qph.fs.quoracdn.net/main-qimg-1a665f1ace2a695d59d9b855fedfff6c") no-repeat center fixed;    
    background-size: cover;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<h1>Admin Registration Successful</h1>
	<h3>The First name is ${admin.firstName}</h3>
	<h3>The Last name is ${admin.lastName}</h3>
	<h3>The Age is ${admin.age}</h3>
	<h3>The Gender is ${admin.gender}</h3>
	<h3>The Contact number is ${admin.contactNumber}</h3>
	<h3>The Vendor id is ${admin.vendorId}</h3>
	
	
	<a href="${pageContext.request.contextPath}/logout">Logout</a>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">
h1 {
	color: red;
}

html{   
    background: url("https://qph.fs.quoracdn.net/main-qimg-1a665f1ace2a695d59d9b855fedfff6c") no-repeat center fixed;    
    background-size: cover;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Manager Registration Successful</h1>
	<h3>The First name is ${manager.firstName}</h3>
	<h3>The Last name is ${manager.lastName}</h3>
	<h3>The Age is ${manager.age}</h3>
	<h3>The Gender is ${manager.gender}</h3>
	<h3>The Contact number is ${manager.contactNumber}</h3>
	
	<a href="${pageContext.request.contextPath}/logout">Logout</a>

</body>
</html>
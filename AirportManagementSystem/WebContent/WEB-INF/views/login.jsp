<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style type="text/css">
body {
	background-image:
		url("https://qph.fs.quoracdn.net/main-qimg-1a665f1ace2a695d59d9b855fedfff6c");
	display: flex;
	justify-content: center;
	align-content: center;
	vertical-align: middle;
	padding: 10px;
	border: 1px solid black;
	margin-left: 35%;
	margin-right: 35%;
	margin-top: 10px;
	color: black;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<form:form
		action="${pageContext.request.contextPath}/login/processlogin"
		modelAttribute="admin">
	
	
        VendorId<form:input path="vendorId" />
		<span><form:errors path="vendorId" cssClass="red"></form:errors></span>
		<br>
		<br>
		
		Password<form:input path="password" />
		<span><form:errors path="password" cssClass="red"></form:errors></span>
		<br>
		<br>
		<input type="submit" value="Login">


	</form:form>

</body>
</html>
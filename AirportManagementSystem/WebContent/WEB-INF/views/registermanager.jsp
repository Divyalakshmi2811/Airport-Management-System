<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
html{   
    background: url("https://qph.fs.quoracdn.net/main-qimg-1a665f1ace2a695d59d9b855fedfff6c") no-repeat center fixed;    
    background-size: cover;
}

.red {
	color: red;
	font-weight: bold;



</style>
</head>
<body>
	<form:form
		action="${pageContext.request.contextPath}/registermanager/processmanager"
		modelAttribute="manager">
	
	
		
		FirstName<form:input path="firstName" />
		<span><form:errors path="firstName" cssClass="red"></form:errors></span>
		<br>
		<br>
		
		LastName<form:input path="lastName" />
		<span><form:errors path="lastName" cssClass="red"></form:errors></span>
		<br>
		<br>
		
		Age<form:input path="age" />
		<span><form:errors path="age" cssClass="red"></form:errors></span>
		<br>
		<br>
		Gender<select name="gender">
			<option value="male">Male</option>
			<option value="female">Female</option>
		</select>
		
		<br>
		<br>
		
		ContactNumber<form:input path="contactNumber" />
		<span><form:errors path="contactNumber" cssClass="red"></form:errors></span>
		<br>
		<br>
		
		
		
		Password<form:input path="password" />
		<span><form:errors path="password" cssClass="red"></form:errors></span>
		<br>
		<br>

		<input type="submit" value="Submit">
	</form:form>
</body>
</html>
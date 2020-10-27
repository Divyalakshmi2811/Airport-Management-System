<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.red {
	color: red;
	font-weight: bold;
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
	<form:form
		action="${pageContext.request.contextPath}/registerpilot/processpilot"
		modelAttribute="pilot">
	
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
		
		Experience<form:input path="experience" />
		<span><form:errors path="experience" cssClass="red"></form:errors></span>
		<br>
		<br>





		<input type="submit" value="Submit">
	</form:form>

</body>
</html>
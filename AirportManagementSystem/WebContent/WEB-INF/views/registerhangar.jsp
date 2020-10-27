<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
</head>
<body>
	<form:form
		action="${pageContext.request.contextPath}/registerhangar/processhangar"
		modelAttribute="hangar">
	
	
		
		Hangar Name<form:input path="name" />
		<span><form:errors path="name" cssClass="red"></form:errors></span>
		<br>
		<br>
		
		SquareFeet<form:input path="squareFeet" />
		<span><form:errors path="squareFeet" cssClass="red"></form:errors></span>
		<br>
		<br>
		
		Availability<form:input path="availability" />
		<span><form:errors path="availability" cssClass="red"></form:errors></span>
		<br>
		<br>


		<input type="submit" value="Add Hangar Details">
	</form:form>
</body>
</html>
>

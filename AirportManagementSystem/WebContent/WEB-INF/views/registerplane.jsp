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
		action="${pageContext.request.contextPath}/registerplane/processplane"
		modelAttribute="plane">
	
	    Planename<form:input path="planename" />
		<span><form:errors path="planename" cssClass="red"></form:errors></span>
		<br>
		<br>
		
		Seats<form:input path="seats" />
		<span><form:errors path="seats" cssClass="red"></form:errors></span>
		<br>
		<br>
		
		SeatType<form:input path="type" />
		<span><form:errors path="type" cssClass="red"></form:errors></span>
		<br>
		<br>


		<input type="submit" value="Add Plane Details">
	</form:form>
</body>
</html>
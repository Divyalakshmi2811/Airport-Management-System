<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">
body {
	
	background-image:
		url("https://qph.fs.quoracdn.net/main-qimg-1a665f1ace2a695d59d9b855fedfff6c");

	table { font-family : arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<thead>
			<tr>
				<th>FirstName</th>
				<th>LastName</th>
				<th>Age</th>
				<th>Experience</th>
				<th>Gender<</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="pilots" items="${mypilot}">
				<tr>
					<td><c:out value="${pilots.firstName }" /></td>
					<td><c:out value="${pilots.lastName }" /></td>
					<td><c:out value="${pilots.age }" /></td>
					<td><c:out value="${pilots.experience }" /></td>
					<td><c:out value="${pilots.gender }" /></td>
				</tr>

			</c:forEach>
		</tbody>
	</table>



</body>
</html>
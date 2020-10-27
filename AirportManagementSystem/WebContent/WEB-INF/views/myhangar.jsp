<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
html{   
    background: url("https://qph.fs.quoracdn.net/main-qimg-1a665f1ace2a695d59d9b855fedfff6c") no-repeat center fixed;    
    background-size: cover;
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
				<th>Name</th>
				<th>SquareFeet</th>
				<th>Availability</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="hangars" items="${myhangar}">
				<tr>
					<td><c:out value="${hangars.name }" /></td>
					<td><c:out value="${hangars.availability }" /></td>
					<td><c:out value="${hangars.squareFeet }" /></td>
				</tr>

			</c:forEach>
		</tbody>
	</table>



</body>
</html>
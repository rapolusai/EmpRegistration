<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AllEmployees</title>
</head>
<body>
	<h3>All Employees</h3>
	<table border="1">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Email</th>
			<th>Salary</th>
			<th>DEPT</th>
			<th>HRA</th>
			<th>DA</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<c:forEach items="${employees}" var="obj">
			<tr>
				<td>${obj.id}</td>
				<td>${obj.name}</td>
				<td>${obj.email }</td>
				<td>${obj.salary }</td>
				<td>${obj.dept }</td>
				<td>${obj.hra }</td>
				<td>${obj.da }</td>
				<td><a href="edit?id=${obj.id}">Edit</a></td>
				<td><a href="delete?id=${obj.id}">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
	<a href="/registration">Registration</a>
</body>
</html>
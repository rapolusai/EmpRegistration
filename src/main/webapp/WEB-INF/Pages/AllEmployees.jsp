<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AllEmployees</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
</head>
<body>
<div class="container" style="margin-top: 10px;">

	<h3>All Employees</h3>
	<table class="table">
	  <thead class="thead-dark">
	
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
		</thead>
		<c:forEach items="${employees}" var="obj">
			<tr>
				<td>${obj.id}</td>
				<td>${obj.name}</td>
				<td>${obj.email }</td>
				<td>${obj.salary }</td>
				<td>${obj.dept }</td>
				<td>${obj.hra }</td>
				<td>${obj.da }</td>
				<td><a class="btn btn-primary" href="edit?id=${obj.id}">Edit</a></td>
				<td><a class="btn btn-primary" href="delete?id=${obj.id}">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
	<a href="/registration">Registration</a>
	<hr />
	<c:if test="${!page.isFirst()}">
		<a href="?page=0">First</a> &nbsp; &nbsp;
	</c:if>

	<c:if test="${page.hasPrevious()}">
		<a href="?page=${page.getNumber()-1 }">Previous</a> &nbsp; &nbsp;
	</c:if>

	<c:forEach var="i" begin="0" end="${page.getTotalPages()-1 }">
		<a href="?page=${i}">${i+1 }</a> &nbsp; &nbsp;	
	</c:forEach>


	<c:if test="${page.hasNext()}">
		<a href="?page=${page.getNumber()+1 }">Next</a> &nbsp; &nbsp;
	</c:if>

	<c:if test="${!page.isLast()}">
		<a href="?page=${page.getTotalPages()-1}">Last</a> &nbsp; &nbsp;
	</c:if>
	<hr />
</div>






</body>
</html>
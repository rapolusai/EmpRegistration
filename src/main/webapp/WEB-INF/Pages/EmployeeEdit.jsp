<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Page</title>
</head>
<body>
	<h3>Update Emplayee Data</h3>

	<pre>
<form:form action="update" method="POST" modelAttribute="employee">
	ID         : ${emp.id}
	Name       : ${emp.name}
	Email      : ${emp.email}
	Salary     : ${emp.salary}
	Deportment : ${emp.dept}
	HRA        : ${emp.hra}
	Da         : ${emp.da}
	
	ID         : <form:input path="id" readonly="true"/>
	Name       : <form:input path="name" readonly="false"/>
	Email      : <form:input path="email" />
	Salary     : <form:input path="salary" />
	Deportment : <form:select path="dept" >
	               <form:option value=" ">Select</form:option> 
                   <form:option value="Dev">Dev</form:option> 
                   <form:option value="QA">QA</form:option> 
                   <form:option value="BA">BA</form:option>
                 </form:select>
	
	
	<input type ="submit" value="Update">
</form:form>
</pre>



</body>
</html>
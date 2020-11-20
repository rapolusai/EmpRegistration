<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
</head>
<body>
	<h3>Edit Page</h3>
	<form action="/save" method="POST" modelAttribute="employee">
		<pre>
Name         : <input type="text" name="name">
Email        : <input type="text" name="email">
Salary       : <input type="text" name="salary">
Deportment   : <select name="dept">
             <option value=" ">Select</option> 
             <option value="Dev">Dev</option> 
             <option value="QA">QA</option> 
             <option value="BA">BA</option> 
             </select><br>
         <input type="submit" value="Registration">   <a href="/all">All</a>
</pre>
	</form>

	<pre>${msg}</pre>

</body>
</html>
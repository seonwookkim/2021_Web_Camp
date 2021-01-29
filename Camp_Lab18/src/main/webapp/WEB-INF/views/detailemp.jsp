<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
h1 {
	text-align: center;
}

table {
	width: 100%;
	text-align: center;
}

#image {
	width: 50%;
}
</style>
</head>
<body>
	<h1>View Employee</h1>
	<table border="2" width="70%" cellpadding="2">
		<tr>
			<td><label for="Name">Name :</label></td>
			<td>${emp.name}</td>
		</tr>
		<tr>
			<td><label for="Salary">Salary :</label></td>
			<td>${emp.salary}</td>
		</tr>
		<tr>
			<td><label for="Designation">Designation :</label></td>
			<td>${emp.designation}</td>
		</tr>
		<tr>
			<td><label for="Image">Image :</label></td>
			<td><img id="image" name="image" src="${pageContext.request.contextPath}/resources/upload/${emp.image}" /></td>
		</tr>
	</table></a>
	<button type="button" onclick="location.href='../viewemp'">Cancel</button>
</body>
</html>
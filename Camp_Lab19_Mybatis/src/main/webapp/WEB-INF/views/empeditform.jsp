<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Edit Employee</h1>
	<form:form method="post" action="../editsave">
		<table>
			<tr>
				<td><form:hidden path="id" /></td>
			</tr>
			<tr>
				<td>Name :</td>
				<td><form:input path="name" /></td>
			</tr>
			<tr>
				<td>Salary :</td>
				<td><form:input path="salary" /></td>
			</tr>
			<tr>
				<td>Designation :</td>
				<td><form:input path="designation" /></td>
			</tr>

			<tr>
				<td></td>
				<td><input type="submit" value="Edit" /><button type="button" onclick="location.href='../list'">Cancel</button></td>
			</tr>
		</table>
	</form:form>
</body>
</html>
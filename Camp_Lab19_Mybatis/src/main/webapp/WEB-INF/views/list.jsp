<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="com.mycom.myapp.emp.EmpDAO,com.mycom.myapp.emp.EmpVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
h1 {
	text-align: center
}

table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	border: 2px solid black;
	padding: 10px;
}
</style>
<script>
	function delete_ok(id) {
		var a = confirm("정말로 삭제하겠습니까?");
		if (a)
			location.href = "deleteEmp/" + id;
	}
</script>
</head>
<body>
	<h1>Employees List</h1>
	<table>
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Salary</th>
			<th>Designation</th>
			<th>Regdate</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<c:forEach items="${list }" var="u">
			<tr>
				<td>${u.id}</td>
				<td>${u.name}</td>
				<td>${u.salary}</td>
				<td>${u.designation}</td>
				<td>${u.regdate }</td>
				<td><a href="editEmp/${u.id}">Edit</a></td>
				<td><a href="javascript:delete_ok('${u.id}')">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<a href="add">Add New Employee</a>

</body>
</html>
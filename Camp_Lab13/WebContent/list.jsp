<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.crud.dao.UserDao,com.crud.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Users List</h1>

	<%
		List<User> list = UserDao.getAllRecords();
		request.setAttribute("list", list);
	%>

	<table border="1" width="90%">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Password</th>
			<th>Email</th>
			<th>Sex</th>
			<th>Country</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<c:forEach items="${list}" var="u">
			<tr>
				<td>${u.getId()}</td>
				<td>${u.getName()}</td>
				<td>${u.getPassword()}</td>
				<td>${u.getEmail()}</td>
				<td>${u.getSex()}</td>
				<td>${u.getCountry()}</td>
				<td><a href="editform.jsp?id=${u.getId()}">Edit</a></td>
				<td><a href="delete_ok.jsp?id=${u.getId()}">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
	<br />
	<a href="addform.jsp">Add New User</a>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.crud.dao.UserDao,com.crud.bean.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		User u = UserDao.getRecordById(Integer.parseInt(id));
	%>

	<h1>Edit Form</h1>
	<form action="editform_ok.jsp" method="post">
		<input type="hidden" name="id" value="<%=u.getId()%>" />
		<table>
			<tr>
				<td>Name:</td>
				<td><input type="text" name="name" value="<%=u.getName()%>" /></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password" value="<%=u.getPassword()%>" /></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input type="email" name="email" value="<%=u.getEmail()%>" /></td>
			</tr>
			<tr>
				<td>Sex:</td>
				<td><input type="radio" name="sex" value="male" />Male
					<input type="radio" name="sex" value="female" />Female</td>
			</tr>
			<tr>
				<td>Country:</td>
				<td><select name="country">
						<option>SouthKorea</option>
						<option>NorthKorea</option>
						<option>China</option>
						<option>USA</option>
						<option>Other</option>
				</select></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Edit User" />
				<a href="list.jsp">View All Records</a></td>
			</tr>
		</table>
	</form>
</body>
</html>
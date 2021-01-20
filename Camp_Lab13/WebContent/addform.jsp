<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Add New User</h1>
	<form action="addform_ok.jsp" method="post">
		<table>
			<tr>
				<td>Name:</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password" /></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input type="email" name="email" /></td>
			</tr>
			<tr>
				<td>Sex:</td>
				<td><input type="radio" name="sex" value="male" />Male <input
					type="radio" name="sex" value="female" />Female</td>
			</tr>
			<tr>
				<td>Country:</td>
				<td><select name="country" style="width: 155px">
						<option>SouthKorea</option>
						<option>NorthKorea</option>
						<option>China</option>
						<option>USA</option>
						<option>Other</option>
				</select></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Add User" />
				<a href="list.jsp">View All Records</a></td>
			</tr>
		</table>
	</form>
</body>
</html>
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
	<h1>Add New Book</h1>
	<form action="add_ok.jsp" method="post">
		<table>
			<tr>
				<td>TITLE:</td>
				<td><input type="text" name="title" /></td>
			</tr>
			<tr>
				<td>WRITER:</td>
				<td><input type="text" name="writer" /></td>
			</tr>
			<tr>
				<td>CONTENT:</td>
				<td><textarea cols="50" rows="5" name="content"></textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="SAVE" />
				<input type="button" value="CANCLE" onclick="history.back()"/></td>
			</tr>
		</table>
	</form>
</body>
</html>
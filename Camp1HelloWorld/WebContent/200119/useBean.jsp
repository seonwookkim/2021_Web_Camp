<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="obj" class="mypack.Calculator" />

	<%
		int m = obj.cube(5);
		out.print("cube of 5 is " + m);
	%>
</body>
</html>
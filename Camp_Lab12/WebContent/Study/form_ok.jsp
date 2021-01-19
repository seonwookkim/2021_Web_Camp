<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8") ;
	String fname = request.getParameter("fname") ;
	String lname = request.getParameter("lname") ;
	
	
	// 데이터 추가(DB)
%>

<h4>입력하신 데이터는 다음과 같습니다.</h4>
<%= fname %>
<%= lname %>
</body>
</html>

<script>
	location.href='index.jsp' ;
</script>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.crud.dao.UserDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="u" class="com.crud.bean.User"></jsp:useBean>
	<jsp:setProperty property="*" name="u" />

	<%
		int i = UserDao.save(u);
		
		String msg = "데이터 추가 성공 !";
		if (i==0) msg = "[에러] 데이터 삭제 ";
	%>
		
	<script>
		alert('<%=msg%>');
		location.href='list.jsp';
	</script>
</body>
</html>
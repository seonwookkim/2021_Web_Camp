<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.board.dao.BoardDao"%>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="u" class="com.board.bean.Board"></jsp:useBean>
	<jsp:setProperty property="*" name="u" />
	<%
		BoardDao BoardDAO = new BoardDao();
		int i=BoardDAO.update(u);
		response.sendRedirect("list.jsp");
	%>
</body>
</html>
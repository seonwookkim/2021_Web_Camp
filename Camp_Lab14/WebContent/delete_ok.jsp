<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.board.dao.BoardDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String seq = request.getParameter("id");
		if (seq != "") {
			int id = Integer.parseInt(seq);
			BoardDao BoardDAO = new BoardDao();
			BoardDAO.delete(id);
		}
		response.sendRedirect("index.jsp");
	%>
</body>
</html>
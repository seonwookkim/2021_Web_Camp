<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.board.dao.BoardDao,com.board.bean.Board,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VIEW</title>
</head>
<body>

	<%
		String seq = request.getParameter("id");
		int id = Integer.parseInt(seq);
		BoardDao BoardDAO = new BoardDao();
		Board b = BoardDAO.view(id);
	%>

	<h1>VIEW</h1>
	<table>
		<tr>
			<td>TITLE:</td>
			<td><%=b.getTitle()%></td>
		</tr>
		<tr>
			<td>AUTHOR:</td>
			<td><%=b.getWriter()%></td>
		</tr>
		<tr>
			<td>CONTENT:</td>
			<td><a><%=b.getContent()%></a></td>
		</tr>
		<tr>
			<td colspan="2"><a href="editform.jsp?id=<%=b.getSeq()%>">EDIT</a></td>
		</tr>
		<tr>
			<td><input type="button" value="CANCLE" onclick="history.back()" /></td>
		</tr>
	</table>
</body>
</html>
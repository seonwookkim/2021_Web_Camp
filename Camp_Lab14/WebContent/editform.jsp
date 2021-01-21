<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.board.dao.BoardDao,com.board.bean.Board"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		BoardDao BoardDAO = new BoardDao();
		String id=request.getParameter("id");	
		Board b = BoardDAO.view(Integer.parseInt(id));
	%>

	<h1>Edit Form</h1>
	<form action="edit_ok.jsp" method="post">
		<input type="hidden" name="seq" value="<%=b.getSeq()%>" />
		<table>
			<tr>
				<td>TITLE:</td>
				<td><input type="text" name="title" value="<%=b.getTitle()%>" /></td>
			</tr>
			<tr>
				<td>WRITER:</td>
				<td><input type="text" name="writer" value="<%=b.getWriter()%>" /></td>
			</tr>
			<tr>
				<td>CONTENT:</td>
				<td><textarea cols="50" rows="5" name="content"><%=b.getContent()%></textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="SAVE" />
				<input type="button" value="CANCLE" onclick="history.back()"/></td>
			</tr>
		</table>
	</form>
</body>
</html>
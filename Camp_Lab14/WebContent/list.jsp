<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.board.dao.BoardDao,com.board.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
	h1 {
		text-align : center;
	}
	
	#table1 {
		margin-left : 60px;
		text-align : center;
	}
</style>
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='delete_ok.jsp?id=' + id;
	}
</script>
</head>
<body>
	<h1>List of Books</h1>
	

	<%
		BoardDao BoardDAO = new BoardDao();
		List<Board> list = BoardDAO.list();
		request.setAttribute("list",list);
	%>

	<table id="table1" border="1" width="90%">
		<tr>
			<th>TITLE</th>
			<th>WRITER</th>
			<th>CONTENT</th>
			<th>REGDATE</th>
			<th>Number of views</th>
			<th></th>
			<th></th>
			<th><a href="addform.jsp">Add</a></th>
		</tr>
		<c:forEach items="${list}" var="u">
			<tr>
				<td>${u.getTitle()}</td>
				<td>${u.getWriter()}</td>
				<td>${u.getContent()}</td>
				<td>${u.getRegdate()}</td>
				<td>${u.getCnt()}</td>
				<td><a href="editform.jsp?id=${u.getSeq()}">Edit</a></td>
				<td><a href="javascript:delete_ok('${u.getSeq()}')">DELETE</a></td>
				<td><a href="view.jsp?id=${u.getSeq()}">More</a></td>
			</tr>
		</c:forEach>
	</table>
	<br />
</body>
</html>
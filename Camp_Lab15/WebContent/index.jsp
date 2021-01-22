<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.board.dao.BoardDao,com.board.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!--<%@ include file="./inc/bottom.jsp" %>-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<style>
h1 {
	text-align: center;
}

body {
	margin-left: 50px;
	margin-right: 50px;
}
</style>
<script>
	function delete_ok(id) {
		var a = confirm("정말로 삭제하겠습니까?");
		if (a)
			location.href = 'delete_ok.jsp?id=' + id;
	}
</script>
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand" href="introduce.jsp">SEON-WOOK KIM</a>
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="about.jsp">About</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="data.jsp">Data</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="index.jsp">Books</a>
				</li>
			</ul>
		</nav>
	</header>

	<div class="middle">
		<h1>List of Books</h1>
		<%
			BoardDao BoardDAO = new BoardDao();
		List<Board> list = BoardDAO.list();
		request.setAttribute("list", list);
		%>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>TITLE</th>
					<th>WRITER</th>
					<th>COMMENT</th>
					<th>REGDATE</th>
					<th class="d-print-none"><a class="btn btn-sm btn-success" href="addform.jsp">Add</a></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="u">
					<tr>
						<td>${u.getTitle()}</td>
						<td>${u.getWriter()}</td>
						<td>${u.getContent()}</td>
						<td>${u.getRegdate()}</td>
						<td>
							<a class="btn btn-sm btn-warning" href="editform.jsp?id=${u.getSeq()}">Edit</a>
							<a class="btn btn-sm btn-danger" href="javascript:delete_ok('${u.getSeq()}')">DELETE</a>
							<a class="btn btn-sm" href="view.jsp?id=${u.getSeq()}">More</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<br />
	</div>
	<footer>
		<br>
		<p>&copy; 2021 - SEONWOOK KIM</p>
	</footer>
</body>
</html>
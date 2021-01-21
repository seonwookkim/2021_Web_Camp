<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.board.dao.BoardDao,com.board.bean.Board"%>
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
		<%
			BoardDao BoardDAO = new BoardDao();
		String id = request.getParameter("id");
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
					<td><input type="text" name="writer"
						value="<%=b.getWriter()%>" /></td>
				</tr>
				<tr>
					<td>CONTENT:</td>
					<td><textarea cols="30" rows="5" name="content"><%=b.getContent()%></textarea></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="SAVE" /> <input
						type="button" value="CANCLE" onclick="history.back()" /></td>
				</tr>
			</table>
		</form>
	</div>
	<footer>
		<p>&copy; 2021 - SEONWOOK KIM</p>
	</footer>
</body>
</html>
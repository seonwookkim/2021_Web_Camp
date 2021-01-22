<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.board.dao.BoardDao,com.board.bean.Board,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.board.common.*, java.io.File"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VIEW</title>
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
		<h1>VIEW</h1>

		<form method="post">
			<%
				String seq = request.getParameter("id");
				int id = Integer.parseInt(seq);
				BoardDao BoardDAO = new BoardDao();
				Board b = BoardDAO.view(id);
			%>
			
			<div class="form-horizontal">

				<div class="form-group row">
					<label class="col-form-label col-sm-2" for="title">TITLE</label>
					<div class="col-sm-8">
						<input readonly class="form-control" id="title"
							value="<%=b.getTitle()%>" />
					</div>
				</div>

				<div class="form-group row">
					<label class="col-form-label col-sm-2" for="writer">AUTHOR</label>
					<div class="col-sm-7">
						<input readonly class="form-control" id="writer"
							value="<%=b.getWriter()%>" />
					</div>
				</div>

				<div class="form-group row">
					<label class="col-form-label col-sm-2" for="content">COMMENTS</label>
					<div class="col-sm-10">
						<textarea readonly class="form-control" cols="20" id="content"
							maxlength="32000" rows="7"><%=b.getContent()%></textarea>
					</div>
				</div>
				
				<div class="form-group row">
					<label class="col-form-label col-sm-2" for="content">FILE</label>
					<div class="col-sm-10"><img src="${pageContext.request.contextPath }/upload/<%=b.getImage()%>"></div>
				</div>
			</div>

			<div class="form-group row">
				<label class="col-form-label col-sm-2"></label>
				<div class="col-sm-10">
					<a href="index.jsp" class="btn btn-outline-dark cancel">BACK</a>
				</div>
			</div>
		</form>
	</div>

	<footer>
		<p>&copy; 2021 - SEONWOOK KIM</p>
	</footer>
</body>
</html>
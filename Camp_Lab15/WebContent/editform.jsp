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


		<form action="edit_ok.jsp" method="post" enctype="multipart/form-data">
			<input type="hidden" name="seq" value="<%=b.getSeq()%>" />
			<div class="form_horizontal">
				<div class="form-group row">
					<label class="col-form-label col-sm-2" for="title">TITLE</label>
					<div class="col-sm-8">
						<input autofocus class="form-control" name="title" value="<%=b.getTitle()%>"/>
					</div>
				</div>

				<div class="form-group row">
					<label class="col-form-label col-sm-2" for="writer">AUTHOR</label>
					<div class="col-sm-7">
						<input class="form-control" name="writer" value="<%=b.getWriter()%>"/>
					</div>
				</div>

				<div class="form-group row">
					<label class="col-form-label col-sm-2" for="content">COMMENTS</label>
					<div class="col-sm-10">
						<textarea class="form-control" name="content" rows="7" cols="20"><%=b.getContent()%></textarea>
					</div>
				</div>
				
				<div class="form-group row">
					<label class="col-form-label col-sm-2" for="image">FILE</label>
					<div class="col-sm-7">
						<input class="form-control" type="file" name="image"/><img src="${pageContext.request.contextPath }/upload/<%=b.getImage()%>">
					</div>
				</div>
				
				<div class="form-group row">
					<label class="col-form-label col-sm-2"></label>
					<div class="col-sm-10">
						<input type="submit" value="UPDATE" class="btn btn-default btn-warning">
						<a class="btn btn-outline-dark cancel" href="index.jsp">CANCEL</a>
					</div>
				</div>
			</div>
		</form>
	</div>
	<footer>
		<p>&copy; 2021 - SEONWOOK KIM</p>
	</footer>
</body>
</html>
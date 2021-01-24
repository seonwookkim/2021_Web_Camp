<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.board.dao.CommunityoutDao,com.board.bean.Communityout,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.board.common.*, java.io.File"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
	crossorigin="anonymous"></script>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo:wght@700&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Orbitron:wght@500&display=swap"
	rel="stylesheet">
<!-- 한국어 -->
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo:wght@700&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<!-- 영어 -->
<link
	href="https://fonts.googleapis.com/css2?family=Orbitron:wght@500&display=swap"
	rel="stylesheet">
<title>Document</title>
<style>
* {
	box-sizing: border-box;
}

body {
	width: 100%;
}

.all_container {
	font-family: 'Nanum Myeongjo', serif;
}

.middle_container {
	margin: 50px 50px;
}

.form-label {
	font-family: 'Orbitron', sans-serif;
}

input {
	font-family: 'Nanum Myeongjo', serif;
}

#photo {
	width: 100%;
}

footer {
	height: 150px;
	background-color: #f8f9fa;
}

.footer_container {
	color: black;
	padding-left: 30px;
	padding-top: 45px;
}

.footer_container>a {
	color: black;
}
</style>
</head>
<body>
	<div class="all_container">
		<header>
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<div class="container-fluid">
					<a class="navbar-brand" href="../index.jsp"> <img
						src="../img/header_logo2.png" alt="" width="30" height="30"
						class="d-inline-block align-top"> 축구 커뮤니티
					</a>
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav me-auto mb-2 mb-lg-0">
							<li class="nav-item"><a class="nav-link active"
								aria-current="page" href="../notify.jsp">공지사항</a></li>
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="../schedule.jsp"
								id="navbarDropdown" role="button" data-bs-toggle="dropdown"
								aria-expanded="false"> 경기일정 </a>
								<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
									<li><a class="dropdown-item" href="../schedule_in.jsp">국내축구</a></li>
									<li><a class="dropdown-item" href="../schedule_out.jsp">해외축구</a></li>
								</ul></li>
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="../news.jsp"
								id="navbarDropdown" role="button" data-bs-toggle="dropdown"
								aria-expanded="false"> 축구뉴스 </a>
								<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
									<li><a class="dropdown-item" href="../news_in.jsp">국내축구</a></li>
									<li><a class="dropdown-item" href="../news_out.jsp">해외축구</a></li>
								</ul></li>
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="../community.jsp"
								id="navbarDropdown" role="button" data-bs-toggle="dropdown"
								aria-expanded="false"> 커뮤니티 </a>
								<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
									<li><a class="dropdown-item" href="../community_in.jsp">국내축구</a></li>
									<li><a class="dropdown-item" href="../community_out.jsp">해외축구</a></li>
								</ul></li>
						</ul>
						<form class="d-flex">
							<input class="form-control me-2" type="search"
								placeholder="Search" aria-label="Search">
							<button class="btn btn-outline-success" type="submit">Search</button>
						</form>
					</div>
				</div>
			</nav>
		</header>

		<div class="middle_container">
			<form action="add_ok.jsp" method="post" enctype="multipart/form-data">
			<%
				String seq = request.getParameter("id");
				int id = Integer.parseInt(seq);
				CommunityoutDao CommunityoutDAO = new CommunityoutDao();
				Communityout n = CommunityoutDAO.view(id);
			%>
				<div class="middle_form">
					<div class="mb-3">
						<label for="title" class="form-label">TITLE</label>
						<input readonly class="form-control" id="title" name="title" value="<%=n.getTitle()%>" />
					</div>
					<div class="mb-3">
						<label for="author" class="form-label">AUTHOR</label>
						<input readonly class="form-control" id="author" name="author" value="<%=n.getAuthor()%>" />
					</div>
					<div class="mb-3">
						<label for="image" class="form-label">FILE</label>
						<img id="photo" name="image" src="${pageContext.request.contextPath }/upload/<%=n.getImage()%>">
					</div>
					<div class="mb-3">
						<label for="content" class="form-label">COMMENT</label>
						<input readonly class="form-control" id="content" name="content" value="<%=n.getContent()%>" />
					</div>
					<div class="mb-3">
						<a href="editform.jsp?id=<%=n.getSeq()%>" class="btn btn-default btn-warning">EDIT</a>
						<input type="button" value="BACK" class="btn btn-outline-dark cancel" onclick="history.back()"/>
					</div>
				</div>
			</form>

		</div>

		<footer>
			<div class="footer_container">
				<a href="https://blog.naver.com/seonwooke">BLOG</a> ｜ <a
					href="https://www.instagram.com/seonwock/">INSTAGRAM</a> ｜ <a
					href="https://www.facebook.com/kso4206/">FACEBOOK</a><br>
				Author : SEON-WOOK KIM<br> Tel : 010-9810-4711
			</div>
		</footer>
	</div>
</body>
</html>
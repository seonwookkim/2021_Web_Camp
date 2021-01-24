<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.board.dao.*,com.board.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	height: 800px;
	width: 100%;
}

h1 {
	text-align: center;
	font-family: 'Orbitron', sans-serif;
}

.col {
	height: 400px;
	width: 100%;
	margin: 10px 20px;
}

#middle_top_right, #middle_bottom_right {
	text-align: center;
}

#demo > img {
	height: 400px;
	width: 100%;
}

#middle_bottom_letf_content {
	text-align: center;
}

#photo {
	margin: 50px 65px;
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

a {
	color: black;
}
</style>
</head>

<body>
	<div class="all_container">
		<header>
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<div class="container-fluid">
					<a class="navbar-brand" href="index.jsp"> <img
						src="./img/header_logo2.png" alt="" width="30" height="30"
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
								aria-current="page" href="notify.jsp">공지사항</a></li>
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="schedule.jsp"
								id="navbarDropdown" role="button" data-bs-toggle="dropdown"
								aria-expanded="false"> 경기일정 </a>
								<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
									<li><a class="dropdown-item" href="schedule_in.jsp">국내축구</a></li>
									<li><a class="dropdown-item" href="schedule_out.jsp">해외축구</a></li>
								</ul></li>
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="news.jsp"
								id="navbarDropdown" role="button" data-bs-toggle="dropdown"
								aria-expanded="false"> 축구뉴스 </a>
								<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
									<li><a class="dropdown-item" href="news_in.jsp">국내축구</a></li>
									<li><a class="dropdown-item" href="news_out.jsp">해외축구</a></li>
								</ul></li>
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="community.jsp"
								id="navbarDropdown" role="button" data-bs-toggle="dropdown"
								aria-expanded="false"> 커뮤니티 </a>
								<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
									<li><a class="dropdown-item" href="community_in.jsp">국내축구</a></li>
									<li><a class="dropdown-item" href="community_out.jsp">해외축구</a></li>
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
			<div class="row">
				<div class="col" id="middle_top_left">
					<div id="carouselExampleCaptions" class="carousel slide"
						data-bs-ride="carousel">
						<ol class="carousel-indicators">
							<li data-bs-target="#carouselExampleCaptions"
								data-bs-slide-to="0" class="active"></li>
							<li data-bs-target="#carouselExampleCaptions"
								data-bs-slide-to="1"></li>
							<li data-bs-target="#carouselExampleCaptions"
								data-bs-slide-to="2"></li>
						</ol>
						<div class="carousel-inner">
							<div class="carousel-item active" id="demo">
								<img src="./img/ground.jpg" class="d-block w-100" alt="...">
								<div class="carousel-caption d-none d-md-block">
									<h5>First slide label</h5>
									<p>Nulla vitae elit libero, a pharetra augue mollis
										interdum.</p>
								</div>
							</div>
							<div class="carousel-item" id="demo">
								<img src="./img/messi.jpg" class="d-block w-100" alt="...">
								<div class="carousel-caption d-none d-md-block">
									<h5>Second slide label</h5>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
								</div>
							</div>
							<div class="carousel-item" id="demo">
								<img src="./img/son.jpg" class="d-block w-100" alt="...">
								<div class="carousel-caption d-none d-md-block">
									<h5>Third slide label</h5>
									<p>Praesent commodo cursus magna, vel scelerisque nisl
										consectetur.</p>
								</div>
							</div>
						</div>
						<a class="carousel-control-prev" href="#carouselExampleCaptions"
							role="button" data-bs-slide="prev"> <span
							class="carousel-control-prev-icon" aria-hidden="true"></span> <span
							class="visually-hidden">Previous</span>
						</a> <a class="carousel-control-next" href="#carouselExampleCaptions"
							role="button" data-bs-slide="next"> <span
							class="carousel-control-next-icon" aria-hidden="true"></span> <span
							class="visually-hidden">Next</span>
						</a>
					</div>
				</div>
				<div class="col" id="middle_top_right">
					<h1>NOTICE</h1>
					<%
						NotifyDao NotifyDAO = new NotifyDao();
						List<Notify> list = NotifyDAO.list();
						request.setAttribute("list", list);
					%>
					<table class="table table-striped table-hover">
						<thead>
							<tr>
								<td>TITLE</td>
								<td>AUTHOR</td>
								<td>REGDATE</td>
								<td>COUNT</td>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${list}" var="u">
								<tr>
									<td><a href="./notify/view.jsp?id=${u.getSeq()}">${u.getTitle()}</a></td>
									<td>${u.getAuthor()}</td>
									<td>${u.getRegdate()}</td>
									<td>${u.getCnt()}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			<div class="row">
				<div class="col" id="middle_bottom_left">
				<div id="middle_bottom_left_content">
					<h1>MATCH</h1>
					<img id="photo" src="./img//match.png">
				</div>
				</div>
				<div class="col" id="middle_bottom_right">
					<h1>COMMUNITY</h1>
					<%
						CommunityoutDao CommunityoutDAO = new CommunityoutDao();
						List<Communityout> list2 = CommunityoutDAO.list();
						request.setAttribute("list2", list2);
					%>
					<table class="table table-striped table-hover">
						<thead>
							<tr>
								<td>TITLE</td>
								<td>AUTHOR</td>
								<td>REGDATE</td>
								<td>COUNT</td>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${list2}" var="u">
								<tr>
									<td><a href="./comout/view.jsp?id=${u.getSeq()}">${u.getTitle()}</a></td>
									<td>${u.getAuthor()}</td>
									<td>${u.getRegdate()}</td>
									<td>${u.getCnt()}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
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
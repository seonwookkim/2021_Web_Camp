<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.board.dao.CommunityinDao,com.board.bean.Communityin,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
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
	margin-top: 20px;
	margin-left: 20px;
	margin-right: 20px;
}

table {
	text-align: center;
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
<script>
	function delete_ok(id) {
		var a = confirm("정말로 삭제하겠습니까?");
		if (a)
			location.href = './comin/delete_ok.jsp?id=' + id;
	}
</script>
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
			<%
				CommunityinDao CommunityinDAO = new CommunityinDao();
				List<Communityin> list = CommunityinDAO.list();
				request.setAttribute("list", list);
			%>
			<table class="table table-hover" id="Communityout">
				<thead>
					<tr>
						<td>NO</td>
						<td>TITLE</td>
						<td>AUTHOR</td>
						<td>DATE</td>
						<td>COUNT</td>
						<td class="d-print-none"><a class="btn btn-sm btn-success"
							href="./comin/addform.jsp">Add</a></td>
					</tr>
				<thead>
				<tbody>
					<c:forEach items="${list}" var="u">
						<tr>
							<td>${u.getSeq()}</td>
							<td>${u.getTitle()}</td>
							<td>${u.getAuthor()}</td>
							<td>${u.getRegdate()}</td>
							<td>${u.getCnt()}</td>
							<td><a class="btn btn-sm btn-warning" href="./comin/editform.jsp?id=${u.getSeq()}">EDIT</a>
								<a class="btn btn-sm btn-danger" href="javascript:delete_ok('${u.getSeq()}')">DELETE</a>
								<a class="btn btn-sm btn-info" href="./comin/view.jsp?id=${u.getSeq()}">VIEW</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<nav aria-label="Page navigation example">
				<ul class="pagination justify-content-center">
					<li class="page-item disabled"><a class="page-link" href="#"
						tabindex="-1" aria-disabled="true">Previous</a></li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#">4</a></li>
					<li class="page-item"><a class="page-link" href="#">5</a></li>
					<li class="page-item"><a class="page-link" href="#">Next</a></li>
				</ul>
			</nav>
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
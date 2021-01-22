<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

		<form action="add_ok.jsp" method="post" enctype="multipart/form-data">
			<div class="form-horizontal">

				<div class="form-group row">
					<label class="col-form-label col-sm-2" for="title">TITLE</label>
					<div class="col-sm-8">
						<input autofocus class="form-control" type="text" name="title" />
					</div>
				</div>

				<div class="form-group row">
					<label class="col-form-label col-sm-2" for="writer">AUTHOR</label>
					<div class="col-sm-7">
						<input class="form-control" type="text" name="writer" />
					</div>
				</div>

				<div class="form-group row">
					<label class="col-form-label col-sm-2" for="content">COMMENTS</label>
					<div class="col-sm-10">
						<textarea class="form-control" name="content" rows="7" cols="20"></textarea>
					</div>
				</div>
				
				<div class="form-group row">
					<label class="col-form-label col-sm-2" for="image">FILE</label>
					<div class="col-sm-7">
						<input type="file" class="form-control" name="image" />
					</div>
				</div>
				
				<div class="form-group row">
					<label class="col-form-label col-sm-2"></label>
					<div class="col-sm-10">
						<input type="submit" value="SAVE"
							class="btn btn-default btn-success"> <a href="index.jsp"
							class="btn btn-outline-dark cancel">CANCLE</a>
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
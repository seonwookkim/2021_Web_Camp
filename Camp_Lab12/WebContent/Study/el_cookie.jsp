<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>First JSP</h1>  
<%  
Cookie ck=new Cookie("name","seonwook");  
response.addCookie(ck);  
%>  
<a href="el_cookie_ok.jsp">click</a>  
</body>
</html>
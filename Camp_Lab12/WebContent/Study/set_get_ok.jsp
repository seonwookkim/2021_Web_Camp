<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="u" class="mypack.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
Record:<br>  
<jsp:getProperty property="name" name="u"/><br>  
<jsp:getProperty property="password" name="u"/><br>  
<jsp:getProperty property="email" name="u" /><br>
  
<a href="set_get_ok2.jsp">Visit Page</a>  
</body>
</html>
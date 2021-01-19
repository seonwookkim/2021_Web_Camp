<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="member" class="mypack.Member" />
	<jsp:setProperty property="*" name="member" />
	<%
		request.setAttribute("member", member);
	%>

	아이디 : <jsp:getProperty property="userId" name="member" /><br>
	패스워드 : <jsp:getProperty property="passwd" name="member" /><br>
	이메일 : <jsp:getProperty property="email" name="member" /><br>
	이메일 수신여부 : <jsp:getProperty property="emailAgree" name="member" /><br>
	관심사항 : <%=String.join(", ", request.getParameterValues("interest"))%><br>
	핸드폰 : <jsp:getProperty property="hp_1" name="member" />-<jsp:getProperty property="hp_2" name="member" /><br>
	자기소개 : <jsp:getProperty property="introduce" name="member" /><br>
</body>
</html>
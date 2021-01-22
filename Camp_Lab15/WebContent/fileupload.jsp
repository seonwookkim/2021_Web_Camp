<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.board.common.*, java.io.File"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 업로드 결과</title>
</head>
<body>
	<%
		String filename = "";
		int sizeLimit = 15 * 1024 * 1024;

		String realPath = request.getServletContext().getRealPath("upload");
		//System.out.println(realPath);

		File dir = new File(realPath);
			if (!dir.exists())
				dir.mkdirs();

		MultipartRequest multpartRequest = null;
		multpartRequest = new MultipartRequest(request, realPath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());

		String title = multpartRequest.getParameter("title");
		filename = multpartRequest.getFilesystemName("image");
	%>
	
	제목 : <%=title%><br />
	파일명 : <%=filename%><br />
	<img src="${pageContext.request.contextPath }/upload/<%=filename%>">
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.board.dao.NotifyDao"%>
<%@ page import="com.board.bean.Notify"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="com.board.common.*, java.io.File"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
		String author = multpartRequest.getParameter("author");
		String content = multpartRequest.getParameter("content");
		filename = multpartRequest.getFilesystemName("image");
	
		Notify notify = new Notify();
		notify.setTitle(title);
		notify.setAuthor(author);
		notify.setContent(content);
		notify.setImage(filename);
		NotifyDao NotifyDAO = new NotifyDao();
		int i = NotifyDAO.save(notify);
		response.sendRedirect("../notify.jsp");
	%>
</body>
</html>
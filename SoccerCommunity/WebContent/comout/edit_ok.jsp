<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.board.dao.CommunityoutDao"%>
<%@ page import="com.board.bean.Communityout"%>
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
		String seq = multpartRequest.getParameter("seq");
		int num = Integer.parseInt(seq);
	
		Communityout community = new Communityout();
		community.setTitle(title);
		community.setAuthor(author);
		community.setContent(content);
		community.setImage(filename);
		community.setSeq(num);
		CommunityoutDao CommunityoutDAO = new CommunityoutDao();
		int i = CommunityoutDAO.update(community);
		response.sendRedirect("view.jsp?id="+num);
	%>
</body>
</html>
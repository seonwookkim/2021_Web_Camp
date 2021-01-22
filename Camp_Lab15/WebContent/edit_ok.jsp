<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.board.bean.Board"%>
<%@ page import="com.board.dao.BoardDao"%>
<%@ page import="com.board.common.*, java.io.File"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<% request.setCharacterEncoding("utf-8"); %>

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
		String writer = multpartRequest.getParameter("writer");
		String content = multpartRequest.getParameter("content");
		filename = multpartRequest.getFilesystemName("image");
		String seq = multpartRequest.getParameter("seq");
		int num = Integer.parseInt(seq);
		
		Board board = new Board();
		board.setTitle(title);
		board.setWriter(writer);
		board.setContent(content);
		board.setImage(filename);
		board.setSeq(num);
		
		BoardDao BoardDAO = new BoardDao();
		int i = BoardDAO.update(board);
		response.sendRedirect("index.jsp");
	%>
</body>
</html>
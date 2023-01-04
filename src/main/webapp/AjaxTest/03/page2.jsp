<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@page import="com.mk.dao.*,com.mk.dto.*,java.util.*" %>
<%
	BoardDAO dao = BoardDAO.getInstance();
	List<BoardDTO> list=dao.Select(1,10);
	for(int i=0;i<list.size();i++)
	{
		out.print(list.get(i).getNo()+" ");
		out.print(list.get(i).getTitle()+" ");
		out.print(list.get(i).getContent()+" ");
		out.print(list.get(i).getWriter()+"<br>");
		
	}
%>



</body>
</html>
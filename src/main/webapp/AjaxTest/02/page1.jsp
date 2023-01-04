<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@page import="com.mk.dao.*,com.mk.dto.*" %>
<%
	MemberDAO dao = MemberDAO.getInstance();
	MemberDTO dto = dao.Select("admin@admin.com");
%>
	email : <%=dto.getEmail() %><br>
	Addr1 : <%=dto.getAddr1() %><br>
	Addr2 : <%=dto.getAddr2() %><br>
	


</body>
</html>
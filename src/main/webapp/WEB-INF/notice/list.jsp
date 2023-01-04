<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%@include file="/resources/include/link.jsp" %>
<link rel="stylesheet" href="resources/css/common.css" >

</head>
<body>

	<div class="container-md" id=wrapper style="width:80%;margin:100px auto;">
		<!-- TopMenu -->
		<%@include file="/resources/include/topmenu.jsp" %>
			
		<!-- NAV -->
		<%@include file="/resources/include/nav.jsp" %>
		
		<!-- MainContents -->
		<div id=maincontents style="border:1px solid gray;margin-top:15px;">
			<h1> 공지사항 </h1>	
			
			<a href="/Notice/post.do">글쓰기</a>		
		</div>
		
		<!-- Footer -->
		
	
	</div>


</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="/resources/include/link.jsp" %>
<link rel="stylesheet" href="/resources/css/common.css" >

</head>
<body>

	<div class="container-md" id=wrapper style="margin:100px auto;">
		<!-- TopMenu -->
		<%@include file="/resources/include/topmenu.jsp" %>
			
		<!-- NAV -->
		<%@include file="/resources/include/nav.jsp" %>
		
		<!-- MainContents -->
		<div id=maincontents style="margin-top:15px;">
			<!-- PagePath -->
			<div>
				<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
					<ol class="breadcrumb">
					    <li class="breadcrumb-item"><a href="#">Home</a></li>
					    <li class="breadcrumb-item"><a href="#">Board</a></li>
					    <li class="breadcrumb-item active" aria-current="page">Post</li>
					</ol>
				</nav>
			</div>
			<h1>글쓰기</h1>                               
			<form action="/Board/post.do" method="post" enctype="multipart/form-data">
				<input name="title" class="form-control mb-3 w-50" placeholder="Title">
				<textarea name="content" class="form-control mb-3 w-50" style="height:500px;"> </textarea>
				<input type=password name="pwd" class="form-control mb-3 w-50" placeholder="Enter Password">
				<input type=file name=files  class="form-control mb-3 w-50" multiple/>
				<input type=submit value="글쓰기" class="btn btn-primary">
				<input type=hidden name=flag value=true>
				<a href="#" class="btn btn-primary">처음으로</a>
			</form>
			
		</div>
		
		<!-- Footer -->
		
	
	</div>


</body>
</html>
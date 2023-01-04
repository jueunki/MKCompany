<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<script src="https://code.jquery.com/jquery-latest.min.js"></script>

	
	<h1>XMLHttpRequest 테스트</h1>
	<style>
	 div{margin:50px;}
	</style>
	
	<div style="width:1000px;height:400px;overflow:auto;">
		<button onClick="sendRequest('page1.jsp','test1')">버튼</button>
		<div id=test1></div>
	</div>

	<div  style="width:1000px;height:400px;overflow:auto;">
		<button  onClick="sendRequest('page2.jsp','test2')">버튼</button>
		<div id=test2></div>
	</div>



	<script>
		function sendRequest(URL,TAG)
		{
			$.ajax({
				url: URL, 			// 요청 URL
				type:"GET",			// 요청 Method
				dataType:"html",	// html(기본), XML , JSON
				//timeout:1000,		// 시간 설정
				//data:{"param":"value"}, //파라미터
				error:function(request,status,error){
					alert("code : "+request.status+"\nstatus : "+status+"\nerror : "+error);	
				},
				success:function(result){
					alert("성공!!!\n"+result);
					$("#"+TAG).html(result);
				}
				
			})	
			
		}
	</script>




	
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<link rel="stylesheet" type="text/css" href="/resources/css/joinus.css" />
</head>

<body>

<%
	String msg = request.getParameter("msg");
	if(msg!=null){
		%>
			alert('<%=msg%>');
		<%
	}
%>

	<%@include file="/resources/include/header.jsp"%>


	<script> 
function isvalid(){
	let frm = document.joinjsfrm; //document의 joinjsfrm이름의 form 태그를  frm에 넣는다.
	
	if(frm.id.value=="")	//frm이름의 폼안에  pid라는 이름의 태그 안의 값이 ""이라면 
	{ 
		alert("아이디를 입력하세요");	//alert을 띄우고
		frm.pid.focus();	//frm이름의 폼안에 pid에 포커스를 맞춘다.
		return false; 		//함수를 종료시킨다 리턴값 false	
	};
	
	//var pwdCheck = new RegExp('^(?=.*[a-zA-Z])(?=.*[!@#$%^*+-])(?=.*[0-9]),{4,12}$');
	//var pwdCheck = new RegExp('abcd*');
	//if(frm.ppwd.value==""){
	//	alert("비밀번호를 입력하세요");
	//	return false;
	//};
	
	//
	
	//if(!pwdCheck.test(frm.ppwd.value)){
	//	alert("영문+숫자+특수문자 조합으로 4~12자리 사용해야합니다.");
	//	return false; 	
	//}

/* 	
	if(frm.prpwd.value !== pwd.value)
	{
		alert("비밀번호가 일치하지 않습니다.");
		return false;
	} */
	
	if(frm.nickname.value==""){
		alert("닉네임을 입력하세요");
		return false;
	};

	if(frm.email.value==""){
		alert("이메일을 입력하세요");
		return false;
	};
	
	if(!frm.cckk1.checked){
		alert("이메일 수신동의 체크 안되어 있습니다.");
		return false;
	}
	if(!frm.cckk2.checked){
		alert("정보공개 동의 체크 안되어 있습니다.");
		return false;
	}

	//전송 
	
	
	frm.action="/Joinus.do";	//frm이름의 폼에 /URL을 등록하고 		
	frm.submit();		//실행한다
	
}
</script>


	<main>
		<form method="post" action="/" onsubmit="return false;"
			name="joinjsfrm">
			<div class="midbox">
				<div>
					<h3
						style="padding-top: 10%; text-align: left; margin: 8%; padding: 0;">
						<span style="color: #0054a6;">SIGN</span>&nbsp;<span>UP</span>&nbsp;<span
							style="color: #aaa; font-size: 0.9rem;">회원가입 정보입력</span>
					</h3>

					<div class="characters">
						<h3
							style="padding-top: 0%; position: relative; right: 26%; margin: 5px;">
							<span style="color: black; font-weight: 600; font-size: 1rem;">사이트
								이용정보 입력</span>
						</h3>

						<!-- idbox : 아이디 -->
						<input name="id" class="idbox"
							style="border: 1px solid #e1e1e1 !important; border-radius: 3px; width: 75%; padding: 2.5%; margin: 1%; position: relative;"
							placeholder="아이디"> <span
							style="color: #666; font-size: 0.8rem; position: relative; right: 15%;"><br>영문자,숫자,_만
							입력 가능. 최소 3자이상 입력하세요.</span>
						<!-- pwdbox : 비밀번호 -->
						<input name="pwd" class="pwdbox" type="password"
							style="border: 1px solid #e1e1e1 !important; border-radius: 3px; width: 75%; padding: 2.5%; margin: 1%; position: relative;"
							placeholder="비밀번호">
						<!-- pwdbox : 동일 비밀번호확인 -->
						<input name="rpwd" class="pwdbox" type="password"
							style="border: 1px solid #e1e1e1 !important; border-radius: 3px; width: 75%; padding: 2.5%; margin: 1%; position: relative;"
							placeholder="비밀번호 확인">

						<h3
							style="padding-top: 0%; position: relative; right: 31%; margin: 0px;">
							<span style="color: black; font-weight: 600; font-size: 1rem;">개인정보
								입력</span>
						</h3> 
						<!-- infobox : 이름 -->
						<input name="name" class="infobox"
							style="border: 1px solid #e1e1e1 !important; border-radius: 3px; width: 75%; padding: 2.5%; margin: 1%; position: relative;"
							placeholder="이름"> 
							<!-- infobox : 닉네임 -->
						<input class="infobox" name="nickname"
							style="border: 1px solid #e1e1e1 !important; border-radius: 3px; width: 75%; padding: 2.5%; margin: 1%; position: relative;"
							placeholder="닉네임"> <span
							style="color: #666; font-size: 0.8rem; position: relative; right: 12%; margin: 0px;"><br>공백없이
							한글,영문,숫자만 입력 가능 (한글2자,영문4자 이상)</span> <span
							style="color: #666; font-size: 0.8rem; position: relative; right: 11%; margin: 0px;"><br>닉네임을
							바꾸시면 앞으로 60일 이내에는 변경 할 수 없습니다.</span>
						<!-- infobox : 이메일 -->
						<input name="email" class="infobox"
							style="border: 1px solid #e1e1e1 !important; border-radius: 3px; width: 75%; padding: 2.5%; margin: 1%; position: relative;"
							placeholder="E-mail">
						<h3
							style="padding-top: 0%; position: relative; right: 31%; margin: 0px;">
							<span
								style="color: black; font-weight: 600; font-size: 1rem; position: relative;">기타
								개인설정</span>
						</h3>
						<div class="midbox3"
							style="border: 1px solid #e1e1e1; border-radius: 3px; background-color: #f5f6f8; position: absolute; width: 8vw; height: 6vh; right: 70%; top: 98%;">
							<!-- checkbox : 체크박스 2개 -->
							<input type="checkbox" name="cckk1"><span
								style="font-size: 0.9rem; font-weight: 600;">메일 수신 동의</span>
						</div>
						<div class="midbox3"
							style="border: 1px solid #e1e1e1; border-radius: 3px; background-color: #f5f6f8; position: absolute; width: 8vw; height: 6vh; right: 70%; top: 108%;">
							<input type="checkbox" name="cckk2"><span
								style="font-size: 0.9rem; font-weight: 600;">정보 공개 동의</span>
						</div>
						<span
							style="color: #666; font-size: 0.8rem; position: absolute; right: 34%; top: 115%; height: 4vh;"><br>정보공개를
							바꾸시면 앞으로 0일 이내에는 변경이 안됩니다.</span>
						<h3
							style="padding-top: 0%; position: absolute; right: 74.5%; top: 125%; margin: 0px;">
							<span style="color: black; font-weight: 600; font-size: 1rem;">자동등록방지</span>
						</h3>
						<div
							style="border: 1px solid black; left: 9.7%; width: 6.5vw; height: 4.5vh; position: absolute; top: 130%;"></div>
						<div></div>
						<!-- 자동등록방지 버튼라인 -->
						<input name="pbbt" class="r1"
							style="border: 1px solid #e1e1e1 !important; border-radius: 3px; width: 6.5vw; height: 4.3vh; position: absolute; top: 130%; left: 27%;"
							placeholder=" ">
						<div
							style="border: 1px solid #e1e1e1 !important; background-color: #e1e1e1 !important; border-radius: 3px; width: 2.3vw; height: 4.5vh; position: absolute; top: 130%; left: 45%;">회전</div>
						<span
							style="color: #666; font-size: 0.8rem; position: absolute; right: 50%; top: 135%;"><br>자동등록방지
							숫자를 순서대로 입력하세요.</span> <br>
					</div>
				</div>
			</div>


			<input type=hidden name=flag value=true>
			<!-- 취소버튼 & 회원가입버튼 -->
			<br> <a href="/main.do"> <input type="reset" value="취소"
				style="border-radius: 3px; position: absolute; width: 4.5vw; height: 8vh; padding: 1.5%; margin: 1%; right: 50.9%; top: 167%; border: 1px solid #bbb; background-color: #bbb; color: white; font-weight: 600;"></a>

			<button onclick="isvalid()"
				 style="border-radius: 3px; cursor:pointer; position: absolute; width: 11.5vw; height: 8vh; padding: 1.5%; margin: 1%; right: 39%; top: 167%; border: 1px solid #0054a6; background-color: #0054a6; color: white; font-weight: 600;">
				회원가입</button>


		</form>



	</main>

	<%@include file="/resources/include/footer.jsp"%>
</body>


</html>
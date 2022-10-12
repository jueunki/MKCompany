<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
</head>
<style>
@keyframes dropdown {
  from {
    opacity: 0;
    transform: translateY(5px);
  }
  to {
    opacity: 1;
  }
}
body {
	margin: 0px;
	overflow-x: hidden; /* scroll설정하는거! */
}

#logo {
	padding-top: 40%;
	width: 90%;
	margin-top:30%;
	padding: 0 2%;
	width:100%;
	left:0%;
	position:relative;
	
}

.topbtn {
	font-size:0.8em;
	font-weight: 800;
	background-color:rgba(255,255,255,.2);
	border-radius:28px;
    padding: 0 2%;
    z-index: 3;
    width:5%;
    height:5.5vh;
    margin-top:4.5%;
    
}



.h1 {
	padding-top: 0%;
	width: 100%;
	height: 49vh;
	display: flex;
	justify-content: center;
	
}

.m1 {
	width: 100%;
	height: 139vh;
	margin: 0px auto;
}

.f1 {
	width: 100%;
	height: 30vh;
	margin: 0px auto;
	background-color:white;
	z-index:-999;
	border: 1px solid gray;
}

#depth1 {
	padding-top: 4%;
	display: flex;
	justify-content: space-evenly;
	width: 55%;
	height:20%;
}
#depth1:hover .depth2{
	animation-name:dropdown;
	animation-duration:0.5s;
}
.depth2 {
	display: none;
	font-size: 0.7em;
	color:white;
	text-align:center;
	z-index:10;
	position:relative;
	top:10%;
	width: 95%;
	height:30%;
}
.depth2 a{
	padding:15%;
	background-color:black;
}
#depth1:hover .depth2 {
	display: block;
}

ul {
	list-style: none;
	padding-left: 0px;
}

#depth1 a {
	text-decoration: none;
	color: white;
	display:block;
	width:100%;
	font-size: 1em;
	font-weight: 600;
}

.min1 {
	padding-left: 10%;
	padding-top: 10%;
	font-size: 1.2rem;
	font-weight: 800;
}

a{
 	text-decoration-line: none;
}


hr{
	border-top:1px dashed #D8D8D8;
	border-bottom:1px dashed #D8D8D8;
	margin:5% 10%;
	justify-content: center;
}		

.topbtn ul{
	list-style-type:none;
}
.topbtn ul li{
	border-left:1px solid gray;
	display:inline-block;
	padding: 0% 2%;
}
.topbtn ul li:first-child{
	border-left:none;
}
.btmbtn ul{
	list-style-type:none;
	
}
.btmbtn ul li{
	border-left:1px solid gray;
	display:inline-block;
}

.btmbtn ul li:first-child{
	border-left:none;	/* bottom의 ul리스트의 li의 첫번째 요소의 좌측테두리 없애는것!! */
}

.siteK{
	height:50%;
	text-align:center;
	margin:0%;
	/* left:50%; 안먹힘*/
	position:absolute;
	right:45%;
	top:20%;
	color:white;
	height:15vh;	
	
}
.midbtn{
	position:relative;
	width:30vw;
	height:7vh;
	left:35%;
	bottom:5%;
	background-color:white;
	box-shadow: 2px 2px 2px 2px #F2F2F2;
	display: flex;
	justify-content: space-evenly;
	font-weight:600;
	top:-3%;
}
.midbox{
	border:1px solid #e1e1e1; 
	width:40vw; 
	height:112vh; 
	margin:auto;
	position:relative;
	top:3%;
	padding-bottom:5%;
	text-align:center;
	
	border-radius:3px;
}
/* .characters{
text-align:left;
} */
.characters{
position:absolute;
top:10%;

}
</style>

<body>
<header class="h1">
	<img src="/Img/banner/bnr_img2.png" style="z-index:-9999; height:49vh; width:100%; position:absolute; object-fit: cover;">
		<div>
			<a href="main.do"><img id="logo" src="/Img/logo/toplogo.png"></a>
		</div>
		
		<ul id=depth1 class="item">
		
			<li><a href="">협회소개</a>
				<ul class="depth2" style="width:78%;">
					<li><a href="">인사말</a></li>
					<li><a href="">조직도</a></li>
				</ul>
			</li>
			<li><a href="">협회활동</a>
				<ul class="depth2"  style="width:78%;">
					<li><a href="">자활복지</a></li>
				</ul>
			</li>
			<li><a href="">시설이용 및 회원시설안내</a>
				<ul class="depth2" style="width:78%;">
					<li><a href="">노숙인 시설의종류</a></li>
					<li><a href="">회원시설안내</a></li>
				</ul>
			</li>
			<li><a href="">오시는길</a></li>
			<li><a href="">공지사항</a>
				<ul class="depth2">
					<li><a href="">공지사항</a></li>
					<li><a href="">게시판</a></li>
				</ul>
			</li>
		</ul>

		<div class="topbtn">
			<ul>
			<li><a href="/Login.do" style="color:#FAFAFA;">Login</a></li>
			<li><a href="/Join.do" style="color:#FAFAFA;">&nbsp;Join</a></li>
			</ul>
		</div>

	</header>
	<div class="siteK">
		<h1 style="font-size:2rem;">사이트</h1>
		<span style="font-size:0.9rem;"><a href="">🏠</a>> 사이트 > 로그인</span>		
	</div>	
	<main class="m1">
		<div class="midbtn">
		<ul>
			<li><a href="" style="color:black;">사이트 맵</a></li>
		</ul>
		<ul>
			<li><a href="/Login.do" style="color:#1669ad;">로그인</a></li>
		</ul>
		<ul>	
			<li><a href="/Join.do" style="color:black;">회원가입</a></li>
		</ul>
	</div>
	
	<div class="midbox">
		<div>
		<h3 style="padding-top:10%; text-align:left; margin:8%; padding:0;">
		<span style="color:#0054a6;">SIGN</span>&nbsp;<span>UP</span>&nbsp;<span style="color:#aaa; font-size:0.9rem;">회원가입 정보입력</span>
		</h3>
		
		<div class="characters">
		<h3 style="padding-top:0%; position:relative; right:26%; margin:5px;">
		<span style="color:black; font-weight:600; font-size:1rem;">사이트 이용정보 입력</span>
		</h3>
		
		<input class="idbox" style="border:1px solid #e1e1e1!important; border-radius:3px; width:75%; padding:2.5%; margin:1%; position:relative;" placeholder="아이디">
		<span style="color:#666; font-size:0.8rem; position:relative; right:15%;"><br>영문자,숫자,_만 입력 가능. 최소 3자이상 입력하세요.</span>

		<input class="pwdbox" style="border:1px solid #e1e1e1!important; border-radius:3px; width:75%; padding:2.5%; margin:1%; position:relative;" placeholder="비밀번호">

		<input class="pwdbox" style="border:1px solid #e1e1e1!important; border-radius:3px; width:75%; padding:2.5%; margin:1%; position:relative;" placeholder="비밀번호 확인">

		<h3 style="padding-top:0%; position:relative; right:31%; margin:0px;">
		<span style="color:black; font-weight:600; font-size:1rem;">개인정보 입력</span>
		</h3>
		<input class="pwdbox" style="border:1px solid #e1e1e1!important; border-radius:3px; width:75%; padding:2.5%; margin:1%; position:relative;" placeholder="이름">

		<input class="pwdbox" style="border:1px solid #e1e1e1!important; border-radius:3px; width:75%; padding:2.5%; margin:1%; position:relative;" placeholder="닉네임">
		<span style="color:#666; font-size:0.8rem; position:relative; right:12%; margin:0px;"><br>공백없이 한글,영문,숫자만 입력 가능 (한글2자,영문4자 이상)</span>
		<span style="color:#666; font-size:0.8rem; position:relative; right:11%; margin:0px;"><br>닉네임을 바꾸시면 앞으로 60일 이내에는 변경 할 수 없습니다.</span>

		<input class="pwdbox" style="border:1px solid #e1e1e1!important; border-radius:3px; width:75%; padding:2.5%; margin:1%; position:relative;" placeholder="E-mail">
		<h3 style="padding-top:0%; position:relative; right:31%; margin:0px;">
		<span style="color:black; font-weight:600; font-size:1rem; position:relative;">기타 개인설정</span>
		</h3>
		<div class="midbox3" style="border:1px solid #e1e1e1; border-radius:3px; background-color:#f5f6f8; position:absolute; width:8vw; height:6vh; right:70%; top:98%;">
		<input type="checkbox"><span style="font-size:0.9rem; font-weight:600;">메일 수신 동의</span>	
		</div>
		<div class="midbox3" style="border:1px solid #e1e1e1; border-radius:3px; background-color:#f5f6f8; position:absolute; width:8vw; height:6vh; right:70%; top:108%;">
		<input type="checkbox"><span style="font-size:0.9rem; font-weight:600;">정보 공개 동의</span>	
		</div>
		<span style="color:#666; font-size:0.8rem; position:absolute; right:34%; top:115%;height:4vh;"><br>정보공개를 바꾸시면 앞으로 0일 이내에는 변경이 안됩니다.</span>	
		<h3 style="padding-top:0%; position:absolute;   right:74.5%; top:125%; margin:0px;">
		<span style="color:black; font-weight:600; font-size:1rem;">자동등록방지</span>
		</h3>
		<div style="border:1px solid black; left:9.7%; width:6.5vw; height:4.5vh; position:absolute; top:130%;"></div>
		<div></div>
		<input class="pwdbox" style="border:1px solid #e1e1e1!important; border-radius:3px;width:6.5vw; height:4.3vh; position:absolute; top:130%; left:27%;" placeholder=" ">
		<div style="border:1px solid #e1e1e1!important;background-color: #e1e1e1!important; border-radius:3px;width:2.3vw; height:4.5vh; position:absolute; top:130%; left:45%;">회전</div>
		<span style="color:#666; font-size:0.8rem; position:absolute; right:50%; top:135%;"><br>자동등록방지 숫자를 순서대로 입력하세요.</span>
		<br>
		</div>
		</div>
		</div>
		
		
		<br>
		<a href="/main.do"><input type="submit" value="취소" style="border-radius:3px; position:absolute; width:4.5vw; height:8vh; padding:1.5%; margin:1%; right:50.9%; top:167%; border:1px solid #bbb; background-color:#bbb; color:white; font-weight:600;"></a>
		<a href=""><input type="submit" value="회원가입" style="border-radius:3px; position:absolute; width:11.5vw; height:8vh; padding:1.5%; margin:1%; right:39%; top:167%; border:1px solid #0054a6; background-color:#0054a6; color:white; font-weight:600;"></a>
		
		
		
	
	
	</main>
	
		<footer class="f1">
		<div
			style="width: 13%; position: relative; top: 10%; left: 16%;">
			<img src="/Img/logo/footerlogo.png">
		</div>
		<div
			style=" width: 35%; height: 60%; position: relative; left: 33%; top: -5%;">
			주소:대구광역시 중구 중앙대로 366 반월센트럴타워<br>
			이메일:inyeong1233@naver.com/minku4820@gmail.com<br> *후원금
			계좌:111-2222-3333-44농협(예금주:전국노숙인시설협회)<br> <br>
			대표전화:053-000-1111/팩스 053)222-3333<br> ©전국노숙인시설협회All rights
			reserved.
		
		<div class="btmbtn" style="width:140%;text-align:right; margin:10%;">
			<ul>
				<li><a href="" style="font-size:0.8rem; font-weight:600; color:gray;">ADMIN</a></li>
				<li><a href="" style="font-size:0.8rem; font-weight:600; color:gray;">&nbsp;SITEMAP</a></li>
			</ul>
		</div>
		</div>
	</footer>
</body>
</html>
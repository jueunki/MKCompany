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
	height: 90vh;
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
	font-weight:600
}
.midbox{
	border:1px solid #e1e1e1; 
	width:30vw; 
	height:60vh; 
	margin:auto;
	position:relative;
	top:5%;
	padding-bottom:5%;
	text-align:center;
}
</style>

<body>
<header class="h1">
	<img src="/Img/banner/bnr_img2.png" style="z-index:-9999; height:49vh; width:100%; position:absolute; object-fit: cover;">
		<div>
			<a href="#"><img id="logo" src="/Img/logo/toplogo.png"></a>
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
			<li><a href="">게시판</a>
				<ul class="depth2">
					<li><a href="">공지사항</a></li>
				</ul>
			</li>
		</ul>

		<div class="topbtn">
			<ul>
			<li><a href="" style="color:#FAFAFA;">Login</a></li>
			<li><a href="" style="color:#FAFAFA;">&nbsp;Join</a></li>
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
			<li><a href="" style="color:#1669ad;">로그인</a></li>
		</ul>
		<ul>	
			<li><a href="" style="color:black;">회원가입</a></li>
		</ul>
	</div>
	
	<div class="midbox">
		<div>
		<h3 style="padding-top:10%;">
		<span style="color:#0054a6; font-weight:600">MEMBER</span>&nbsp;<span>LOGIN</span>
		</h3>
		<input class="idbox" style="border:1px solid #e1e1e1!important; border-radius:3px; width:65%; padding:4%; margin:1%;" placeholder="아이디">
		<br>
		<input class="pwdbox" style="border:1px solid #e1e1e1!important; border-radius:3px; width:65%; padding:4%; margin:1%;" placeholder="비밀번호">
		<br>
		<div style="left:20%; width:30%; position:relative; left:61%; color:gray;">
		<input type="checkbox">자동로그인
		</div>
		<br>
		<input type="submit" value="로그인" style="border:1px solid gray; border-radius:3px; width:75%; padding:4%; margin:1%; background-color:#0054a6; color:white; font-weight:600;">
		<div class="midbtn2" style="font-size:0.8em; font-weight:600">
			<span><a href=""  style="color:gray;">회원가입</a></span>
			<span><a href="" style="color:gray;">아이디 찾기</a></span>
			<span><a href="" style="color:gray;">비밀번호 찾기</a></span>
		</div>
		<div class="midbox2" style="border:1px solid #e1e1e1; border-radius:3px; background-color:#f5f6f8; position:absolute; width:22.4vw; height:8vh; left:12.5%; top:75%;">
			<div style="width:7vw; position:relative; top:20%;"><img id="bnr_logo" src="/Img/banner/bnr_img1.png" style="width:4.7vw; height:5vh;"></div>
			<div style="width:15vw; position:relative; left:30%; top:-50%; font-size:0.8rem;">
			<span style="color:#0054a6;">현대이지웹</span><span style="font-weight:600; color:#0054a6;">1544-6062</span><br>
			<span>홈페이지 제작 및 문의</span>
			</div>
		</div>
		</div>
	</div>
	
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
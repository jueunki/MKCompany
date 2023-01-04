<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인사말</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

</head>
<style>
@
keyframes dropdown {from { opacity:0;
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
	margin-top: 30%;
	padding: 0 2%;
	width: 100%;
	left: 0%;
	position: relative;
}

.topbtn {
	font-size: 0.8em;
	font-weight: 800;
	background-color: rgba(255, 255, 255, .2);
	border-radius: 28px;
	padding: 0 2%;
	z-index: 3;
	width: 5%;
	height: 5.5vh;
	margin-top: 4.5%;
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
	height: 135vh;
	margin: 0px auto;
}

.f1 {
	width: 100%;
	height: 30vh;
	margin: 0px auto;
	background-color: white;
	z-index: -999;
	border: 1px solid gray;
}

#depth1 {
	padding-top: 4%;
	display: flex;
	justify-content: space-evenly;
	width: 55%;
	height: 20%;
}

#depth1:hover .depth2 {
	animation-name: dropdown;
	animation-duration: 0.5s;
}

.depth2 {
	display: none;
	font-size: 0.7em;
	color: white;
	text-align: center;
	z-index: 10;
	position: relative;
	top: 10%;
	width: 95%;
	height: 30%;
}

.depth2 a {
	padding: 15%;
	background-color: black;
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
	display: block;
	width: 100%;
	font-size: 1em;
	font-weight: 600;
}

.min1 {
	padding-left: 10%;
	padding-top: 10%;
	font-size: 1.2rem;
	font-weight: 800;
}

a {
	text-decoration-line: none;
}

hr {
	border-top: 1px dashed #D8D8D8;
	border-bottom: 1px dashed #D8D8D8;
	margin: 5% 10%;
	justify-content: center;
}

.topbtn ul {
	list-style-type: none;
}

.topbtn ul li {
	border-left: 1px solid gray;
	display: inline-block;
	padding: 0% 2%;
}

.topbtn ul li:first-child {
	border-left: none;
}

.btmbtn ul {
	list-style-type: none;
}

.btmbtn ul li {
	border-left: 1px solid gray;
	display: inline-block;
}

.btmbtn ul li:first-child {
	border-left: none; /* bottom의 ul리스트의 li의 첫번째 요소의 좌측테두리 없애는것!! */
}

.siteK {
	height: 50%;
	text-align: center;
	margin: 0%;
	/* left:50%; 안먹힘*/
	position: absolute;
	right: 45%;
	top: 20%;
	color: white;
	height: 15vh;
}

.midbtn {
	position: relative;
	width: 30vw;
	height: 7vh;
	left: 35%;
	bottom: 5%;
	background-color: white;
	box-shadow: 2px 2px 2px 2px #F2F2F2;
	display: flex;
	justify-content: space-evenly;
	font-weight: 600
}

.midbox {
	border: 1px solid #e1e1e1;
	width: 30vw;
	height: 60vh;
	margin: auto;
	position: relative;
	top: 5%;
	padding-bottom: 5%;
	text-align: center;
}

.midbtn2 ul {
	list-style-type: none;
}

.midbtn2 ul li {
	border-left: 1px solid gray;
	display: inline-block;
	padding: 0% 2%;
}

.midbtn2 ul li:first-child {
	border-left: none;
}
</style>

<body>
	<header class="h1">
		<img src="/Img/banner/bnr_img2.png"
			style="z-index: -9999; height: 49vh; width: 100%; position: absolute; object-fit: cover;">
		<div>
			<a href="main.do"><img id="logo" src="/Img/logo/toplogo.png"></a>
		</div>

		<ul id=depth1 class="item">

			<li><a href="">협회소개</a>
				<ul class="depth2" style="width: 78%;">
					<li><a href="">인사말</a></li>
					<li><a href="">조직도</a></li>
				</ul></li>
			<li><a href="">협회활동</a>
				<ul class="depth2" style="width: 78%;">
					<li><a href="">자활복지</a></li>
				</ul></li>
			<li><a href="">시설이용 및 회원시설안내</a>
				<ul class="depth2" style="width: 78%;">
					<li><a href="">노숙인 시설의종류</a></li>
					<li><a href="">회원시설안내</a></li>
				</ul></li>
			<li><a href="">오시는길</a></li>
			<li><a href="">공지사항</a>
				<ul class="depth2">
					<li><a href="">공지사항</a></li>
					<li><a href="">게시판</a></li>
				</ul></li>
		</ul>

		<div class="topbtn">
			<ul>
				<li><a href="/Login.do" style="color: #FAFAFA;">Login</a></li>
				<li><a href="/Join.do" style="color: #FAFAFA;">&nbsp;Join</a></li>
			</ul>
		</div>

	</header>
	<div class="siteK">
		<h1 style="font-size: 2rem;">사이트</h1>
		<span style="font-size: 0.9rem;"><a href="/main.do">🏠</a>> 사이트</span>
	</div>
	<main class="m1">
		<div class="midbtn">
			<ul>
				<li><a href="" style="color: black;">사이트 맵</a></li>
			</ul>
			<ul>
				<li><a href="/Login.do" style="color: black;">로그인</a></li>
			</ul>
			<ul>
				<li><a href="/Join.do" style="color: black;">회원가입</a></li>
			</ul>
		</div>

		<div class="memberimg">
			<img src="/Img/member/memberjek.jpg"
				style="width: 20vw; height: 50vh; position: absolute; top: 65%; left: 10%;">
			<div
				style="position: absolute; width: 50vw; height: 110vh; left: 40%; top: 65%;">
				<h5>
					안녕하세요.<br>
					<br>
					<br>
					<br> 전국노숙인시설협회 주은기 회장입니다.<br>
					<br> 저희 협회 홈페이지를 방문해주신 여러분을 정성스럽게 맞이하고 환영합니다.<br>
					<br> 저희 협회는 전국의 노숙인복지시설들이 회원기관으로 함께하고 있습니다.<br>
					<br> 회원기관의 연대와 협력을 통해 노숙인들의 복지증진과 노숙인복지시설의 전문적인 운영을 지원하여<br>
					<br> 우리사회에서 노숙과 빈곤으로 힘든 이웃들이 환하게 웃을 수 있도록 협회가 함께 할 것을 약속드리며<br>
					<br> 몇 가지 인사말씀을 드립니다.<br>
					<br> 첫째, 소통과 협력으로 회원시설 상호간 힘이 되고자 합니다.<br>
					<br> 전국의 지역협회와 동반성장하며 민첩한 노숙인 복지현안대응과 전문화된 위기노숙인 지원시스템구축,<br>
					<br> 종사자의 권익보장과 성장지원, 전문성과 투명성으로 인정받는 협회로 발돋움하여<br>
					<br> 회원시설에 힘이 되고자 합니다. 둘째, 노숙인복지정책을 선도하며 회원시설과 함께 발전하고자 합니다.<br>
					<br> 강점에 기반한 노숙인복지시설의 순기능을 더욱 강화하며 거리 노숙인들을 지원하는 전문적인 시스템을
					구축하고<br>
					<br> 정부가 요구하는 노숙인 복지정책에 선도적으로 대웅하여 협회의 실력과 영향력을 확대하여<br>
					<br> 회원시설의 발전에 앞장서고자 합니다.<br>
					<br> 셋째. 노숙인복지의 전문성을 강화하여 한단계 도약하는 협회로 발전하고자 합니다.<br>
					<br> 노숙인 복지환경이 다양하게 분화하고 전문화되면서 사례관리, 지역복지차원의 조직화, 마을공동체 등<br>
					<br> 복지환경의 변화하고 있지만 망설이거나 두려워하지 않고 그동안의 노숙인복지의 경험과 노하우를 바탕으로<br>
					<br> 새로운 환경속에 노숙인복지발전을 이뤄낼 수 있는 협회로 발전하고자 합니다.<br>
					<br> 전국의 회원시설과 종사자여러분, 우리의 협력과 연대를 바탕으로 뜻과 의지를 담아<br>
					<br> 우리에게 부여된 노숙인복지의 시대적사명을 감당하는 협회로 발전하기 위해 최선을 다할 것입니다. <br>
					<br>감사합니다.<br>
					<br>
					<br>
					<br>(사)전국노숙인시설협회 이사 주은기
				</h5>
			</div>



		</div>

	</main>

	<footer class="f1">
		<div style="width: 13%; position: relative; top: 10%; left: 16%;">
			<img src="/Img/logo/footerlogo.png">
		</div>
		<div
			style="width: 35%; height: 60%; position: relative; left: 33%; top: -5%;">
			주소:대구광역시 중구 중앙대로 366 반월센트럴타워<br>
			이메일:inyeong1233@naver.com/minku4820@gmail.com<br> *후원금
			계좌:111-2222-3333-44농협(예금주:전국노숙인시설협회)<br> <br>
			대표전화:053-000-1111/팩스 053)222-3333<br> ©전국노숙인시설협회All rights
			reserved.

			<div class="btmbtn"
				style="width: 140%; text-align: right; margin: 10%;">
				<ul>
					<li><a href=""
						style="font-size: 0.8rem; font-weight: 600; color: gray;">ADMIN</a></li>
					<li><a href=""
						style="font-size: 0.8rem; font-weight: 600; color: gray;">&nbsp;SITEMAP</a></li>
				</ul>
			</div>
		</div>
	</footer>
</body>
</html>
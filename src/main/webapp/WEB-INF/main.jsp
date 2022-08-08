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

#bgimg {
	position: absolute;
	width: 100%;
	height: 112.5vh;
	top: 0%;
	z-index: -9999;
	object-fit: cover;
	box-sizing: border-box;
}

.h1 {
	padding-top: 0%;
	width: 100%;
	height: 22vh;
	display: flex;
	justify-content: center;
}

.m1 {
	width: 100%;
	height: 90vh;
	margin: 0px auto;
	/* border: 1px solid gray; */
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
    margin:auto 0;

}

.square {
	justify-content: space-evenly;
	border-radius: 30px;
	
}

.square>div {
	justify-content: space-evenly;
	border-radius: 30px;
}

.banner {
	border: 1px solid gray;
	width: 30vw;
	border-radius: 5%;
	position: relative;
	left: 15px;
}

#atc01 .box {
	border: 1px solid green;
}

#wrapper {
	display: flex;
	justify-content: center;
	height: 600px;
}

#wrapper>* {
	margin: 20px;
}

.include {
	position: relative;
	left: -10px;
}

#atc01 {
	display: flex;
}

#atc01>.left {
	width: 20vw;
	height: 69vh;
}

#atc01>.right {
	width: 20vw;
	height: 69vh;
}

.left>* {
	height: 33.7vh;
	border-radius: 5%;
	position: relative;
	margin: 0px 5px 10px 5px;
}

.right>* {
	height: 33.7vh;
	border-radius: 5%;
	position: relative;
	margin: 0px 5px 10px 5px;
}

.MainSlick {
	width: 30vw;
	height: 69vh;
}

.MainSlick .post {
	display: inline-block;
	width: 30vw;
	border-radius: 5%;
	height: 69vh;
	border-radius: 5%;
	font-size: 3em;
	text-align: center;
}

.slick-dots {
	display: flex;
	justify-content: center;
	list-style: none;
	padding-left: 0px;
	position: absolute;
	top: 63vh;
	left: 5vw;
	right: 5vw;
}

.slick-dots li button {
	background: rgb(255, 255, 255, 60);
	width: 12x;
	height: 12px;
	margin: 0.15vw;
	border-radius: 50%;
	border: none;
	text-indent: -9999px;
}

.MainSlick .post img {
	width: 100%;
	height: 100%;
	object-fit: cover;
	border-radius: 5%;
}
.m1 img {
	border-radius: 5%;
}
.box01 {
	background-color: white;
}

.box02 {
	background-color: #dbefff;
}

.box03 {
	background-color: white;
}

.box04 {
	background-color: white;
	display:flex;
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

.box01list{
	padding-top:5%;
	padding-left: 15%;
	list-style:disc; /* disc : 색상채우기 //circle : 안채우기 */
	
}
.box01list li::marker{	/* ::marker : 가상선택자 블릿을 일컬음 */
	color:#94bee0;
}

hr{
	border-top:1px dashed #D8D8D8;
	border-bottom:1px dashed #D8D8D8;
	margin:5% 10%;
	justify-content: center;
}		

.slick-slide img
  {
	border-radius: 5%;
  
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
</style>
<body>
	<img
		src="http://www.koreahomeless.co.kr/sh_img/index/main_banner/bg.jpg"
		id="bgimg">

	<header class="h1">

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

	<main class="m1" style="display: flex; justify-content: space-around;">
		<div id=wrapper>
			<div class=banner>
				<section class="MainSlick">
					<div class="post">
						<img src="/Img/help/help1.jpg">
					</div>
					<div class="post">
						<img src="/Img/help/help2.jpg">
					</div>
					<div class="post">
						<img src="/Img/help/help3.jpg">
					</div>
					<div class="post">
						<img src="/Img/help/help4.jpg">
					</div>
					<div class="post">
						<img src="/Img/job/work1.jpg">
					</div>
					<div class="post">
						<img src="/Img/job/work2.jpg">
					</div>
				</section>
			</div>

			<div class=include>
				<div id="atc01">
					<div class="left">
						<div class="box box01">
							<div class="min1">시설이용안내</div>
							<ul class="box01list">
							<li>
								<a href="" style="font-size:0.8rem; font-weight:600; color:gray;">노숙인 시설의 종류</a>
								</li>
							</ul>
							<hr>
							<ul class="box01list">
								<li>
								<a href="" style="font-size:0.8rem; font-weight:600; color:gray;">회원시설안내</a>
								</li>
							</ul>
							<hr>
						</div>
						<div class="box box02">
							<div class="min1">후원안내</div>
							<br><br>
							<div style="text-align: center; font-weight: 800;">후원계좌</div>
							<div style="text-align: center; font-size: 1.5rem; font-weight: 1000; color: #217397;">351-1126-4798-13</div>
							<div style="text-align: center; font-size: 0.8rem; color:gray;">
								<img src="http://www.koreahomeless.co.kr/sh_img/make24/include_01/img/nh_ci.png">예금주:전국노숙인시설협회
							</div>
						</div>
					</div>
					<div class="right">
						<div class="box box03">
							<div class="min1">오시는길</div>
						</div>
						<div class="box box04">
							<div class="min1">공지사항</div>
								<div style="text-align:right; margin:10%;">
								<div class="view">
									<a href="" style="color:gray; font-size:0.8rem; font-weight:600; margin-left:70%;">VIEW&nbsp;MORE</a>
								</div>
							</div>	
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
	<script>
		$('.MainSlick').slick({
			slidesToShow : 1,
			slidesToScroll : 1,
			fade : true,
			speed: 2000,
			autoplay : true,
			autoplaySpeed : 2000,
			dots : true,
			arrows : false
		});
	</script>

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
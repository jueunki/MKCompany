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
body{
	margin:0px;
	overflow-x:hidden;	/* scroll설정하는거! */
}
#bgimg{
	border:1px solid gray;
	position:absolute;
	width:100%;
	height:110vh;
	top:0%;
	z-index:-9999;
	object-fit:cover;
	box-sizing:border-box;
}
.h1{
	padding-top:1%;
	width:100%;
	height:20vh;
	margin:0px auto;
	border:1px solid gray;
	display:flex;
	justify-content:center;
	align-items:center;
}
.m1{
	width:100%;
	height:90vh;
	margin:0px auto;
	border:1px solid gray;
}
.f1{
	width:100%;
	height:35vh;
	margin:0px auto;
	border:1px solid gray;
	
}
#depth1{
	padding-top:2%;
	display:flex;
	justify-content: space-evenly;
	width:55%;
}
.depth2{
	display:none;
	font-size:0.9em;
}
#depth1:hover .depth2{
	display:block;
	position:relative;
	left:0px;
	top:5%;
}
ul{
	list-style:none;
	padding-left:0px;
}
#depth1 a{
	text-decoration:none;
	color:black;
	display:block;
	font-size:1em;
	font-weight:600;
}
#logo{
	padding-top:2%;
	width:90%;
}
.topbtn{
	/* 꾸미는 옵션넣기 *//* 
    z-index: 3;
    padding: 0 30px;
    border-radius: 28px;
    background-color: rgba(255,255,255,.2); */
}
/* #topbtn a:before {
    position: absolute;
    right: 0;
    top: 3px;
    width: 1px;
    height: 8px;
    content: '';
    background-color: rgba(255,255,255,.5);
} */
.square{
	justify-content: space-evenly;
	border-radius:30px;
}
.square > div{
	justify-content: space-evenly;
	border-radius:30px;
}
.banner{
	border : 1px solid gray;
}
#atc01 .box{
	
	border : 1px solid green;
}
#wrapper{
	display:flex;
	justify-content:center;
	height:600px;
	margin-top:35px;
}
#wrapper > *{
	margin:20px;
}
.banner {
	width : 30vw;
	border-radius:5%;	
	position:relative;
	left:15px;		 
}
.include{
	position:relative;
	left:-10px;
}
#atc01{
	display:flex;
}
#atc01>.left{
	width:20vw;
	height:69vh;
}
#atc01>.right{
	width:20vw;
	height:69vh;
} 
.left >*{
	height:33.7vh;
	border-radius:5%;
	position:relative;
	margin : 0px 5px 10px 5px; 
}
.right >*{
	height:33.7vh;
	border-radius:5%;	
	position:relative;
	margin : 0px 5px 10px 5px; 
}
.MainSlick
{
   width : 30vw;
   height :69vh;
}

.MainSlick .post{
  display:inline-block;
  width : 30vw;
  border-radius:5%;
  height:69vh;
  border-radius:5%; 
  font-size : 3em;
  text-align : center;
}

.slick-dots{
   display:flex;
   justify-content :center;
   list-style:none;
   padding-left:0px;
   position:absolute;
   top:63vh;
   left:5vw;
   right:5vw;
   
}
.slick-dots li button 
{ 
   background: rgb(255,255,255,60); 
   width: 12x; 
   height: 12px;
   margin: 0.15vw;   
   border-radius: 50%; 
   border: none;
   
   text-indent: -9999px;
} 

.MainSlick .post img
{
   width:100%;
   height:100%;
   object-fit:cover; 
   border-radius:5%;
}

</style>
<body>
<img src="http://www.koreahomeless.co.kr/sh_img/index/main_banner/bg.jpg" id="bgimg">

<header class="h1">

	<div><a href="#"><img id="logo" src="/Img/logo/toplogo.png"></a></div>
		<ul id=depth1 class="item">
			<li>
				<a href="">협회소개</a>
				<ul class="depth2">
					<li>인사말</li>
					<li>조직도</li>
				</ul>
			</li>
			<li>
				<a href="">협회활동</a>
				<ul class="depth2">
					<li>자활복지</li>
				</ul>
			</li>
			<li>
				<a href="">시설이용 및 회원시설안내</a>
				<ul class="depth2">
					<li>노숙인 시설의종류</li>
					<li>회원시설안내</li>
				</ul>
			</li>
			<li>
				<a href="">오시는길</a>
			</li>
			<li>
				<a href="">게시판</a>
				<ul class="depth2">
					<li>공지사항</li>
				</ul>
			</li>
		</ul>
	<div class="topbtn">
		<a href="">
		::before
			Login
		</a>
		
		<a href="">
			Join
		</a>
	</div>
</header>

<main class="m1" style="display:flex; justify-content:space-around;">
	<div id=wrapper>
		<div class=banner>
			<section class="MainSlick">
		         <div class="post"><img src="/Img/help/help1.jpg"></div>
		         <div class="post"><img src="/Img/help/help2.jpg"></div>
		         <div class="post"><img src="/Img/help/help3.jpg"></div>
		         <div class="post"><img src="/Img/help/help4.jpg"></div>
		         <div class="post"><img src="/Img/job/work1.jpg"></div>
		         <div class="post"><img src="/Img/job/work2.jpg"></div>
		    </section>			
		</div>
		<div class=include>
			<div id="atc01">
				<div class="left">
					<div class="box box01">
			         	1
			    	</div>
			    	<div class="box box02">
			        	2
			    	</div>
			    	</div>
					<div class="right">
					<div class="box box03">
			            3
			    	</div>
			    	<div class="box box04">
			    		4
			        </div>
			    </div>
			</div>
		</div>
	</div>
</main>
<script>
$('.MainSlick').slick({
    slidesToShow: 1,
    slidesToScroll: 1,
    autoplay: true,
    autoplaySpeed: 2000,
    dots: true,
    arrows:false
  });
</script>
<footer class="f1">
	<div style="width:13%; border:1px solid gray; position:relative; top:10%; left:16%;">
	<img src="/Img/logo/footerlogo.png">
	</div>
	<div style="border:1px solid gray; width:35%; height:60%; position:relative; left:33%; top:-5%;">
	주소:대구광역시 중구 중앙대로 366 반월센트럴타워<br>
	이메일:inyeong1233@naver.com/minku4820@gmail.com<br>
	*후원금 계좌:111-2222-3333-44농협(예금주:전국노숙인시설협회)<br>
	<br>
	대표전화:053-000-1111/팩스 053)222-3333<br>
	©전국노숙인시설협회All rights reserved.
	</div>
</footer>

</body>
</html>
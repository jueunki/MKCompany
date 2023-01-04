<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>map</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<!-- icon경로 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
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
.midbtn2 ul{
	list-style-type:none;
}
.midbtn2 ul li{
	border-left:1px solid gray;
	display:inline-block;
	padding: 0% 2%;
}
.midbtn2 ul li:first-child{
	border-left:none;
}





body {
	margin: 0px;
}

.wrap {
	position: absolute;
	left: 0;
	bottom: 40px;
	width: 288px;
	height: 132px;
	margin-left: -144px;
	text-align: left;
	overflow: hidden;
	font-size: 12px;
	font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
	line-height: 1.5;
}

.wrap * {
	padding: 0;
	margin: 0;
}

.wrap .info {
	width: 286px;
	height: 120px;
	border-radius: 5px;
	border-bottom: 2px solid #ccc;
	border-right: 1px solid #ccc;
	overflow: hidden;
	background: #fff;
}

.wrap .info:nth-child(1) {
	border: 0;
	box-shadow: 0px 1px 2px #888;
}

.info .title {
	padding: 5px 0 0 10px;
	height: 30px;
	background: #eee;
	border-bottom: 1px solid #ddd;
	font-size: 18px;
	font-weight: bold;
}

.info .close {
	position: absolute;
	top: 10px;
	right: 10px;
	color: #888;
	width: 17px;
	height: 17px;
	background:
		url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');
}

.info .close:hover {
	cursor: pointer;
}

.info .body {
	position: relative;
	overflow: hidden;
}

.info .desc {
	position: relative;
	margin: 13px 0 0 90px;
	height: 75px;
}

.desc .ellipsis {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.desc .jibun {
	font-size: 11px;
	color: #888;
	margin-top: -2px;
}

.info .img {
	position: absolute;
	top: 6px;
	left: 5px;
	width: 73px;
	height: 71px;
	border: 1px solid #ddd;
	color: #888;
	overflow: hidden;
}

.info:after {
	content: '';
	position: absolute;
	margin-left: -12px;
	left: 50%;
	bottom: 0;
	width: 22px;
	height: 12px;
	background:
		url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')
}

.info .link {
	color: #5085BB;
}

.mid {
	height: 60vh;
}

.house>a {
	border: 1px solid red;
	font-size: 2rem;
	color: black;
	padding-left: 30%;
	margin: 0;
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
		<span style="font-size:0.9rem;"><a href="/main.do">🏠</a>> 오시는길</span>		
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
		<h3 style="padding-top:10%;">
		<span style="color:#0054a6; font-weight:600">오시는길</span>
		</h3>

			<div class="mid">


		<div>

			<div id="map" style=" border:1px solid #e1e1e1; width: 350px; height: 300px; margin: 0px auto;">
			</div>
		</div>

		<script type="text/javascript"
			src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e9556ec8a3c0c4bef732cf3f162d7c0b"></script>
		<script>
			var mapContainer = document.getElementById('map'), // 지도의 중심좌표
			mapOption = {
				center : new kakao.maps.LatLng(35.86719, 128.5961), // 지도의 중심좌표
				level : 3
			// 지도의 확대 레벨
			};

			var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

			// 지도에 마커를 표시합니다 
			var marker = new kakao.maps.Marker({
				map : map,
				position : new kakao.maps.LatLng(35.86719, 128.5961)
			});

			// 커스텀 오버레이에 표시할 컨텐츠 입니다
			// 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
			// 별도의 이벤트 메소드를 제공하지 않습니다 
			var content = '<div class="wrap">'
					+ '    <div class="info">'
					+ '        <div class="title">'
					+ '            전국노숙인협회(코리아IT)'
					+ '            <div class="close" onclick="closeOverlay()" title="닫기"></div>'
					+ '        </div>'
					+ '        <div class="body">'
					+ '            <div class="img">'
					+ '                <img src="/Img/logo/toplogo.png" width="73" height="70">'
					+ '           </div>'
					+ '            <div class="desc">'
					+ '                <div class="ellipsis">반월당 13번출구 앞</div>'
					+ '                <div class="jibun ellipsis">(우) 63309 (지번) 영평동 2181</div>'
					+ '                <div><a href="https://www.kakaocorp.com/main" target="_blank" class="link">홈페이지</a></div>'
					+ '            </div>' + '        </div>' + '    </div>'
					+ '</div>';

			// 마커 위에 커스텀오버레이를 표시합니다
			// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
			var overlay = new kakao.maps.CustomOverlay({
				content : content,
				map : map,
				position : marker.getPosition()
			});

			// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
			kakao.maps.event.addListener(marker, 'click', function() {
				overlay.setMap(map);
			});

			// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
			function closeOverlay() {
				overlay.setMap(null);
			}
		</script>
	</div>
		
		
		
		
		<div class="midbtn2" style="font-size:0.8em; font-weight:600">
		<ul>
			<li><span><a href="/Join.do"  style="color:gray;">회원가입</a></span></li>
			<li><span><a href="" style="color:gray;">아이디 찾기</a></span></li>
			<li><span><a href="" style="color:gray;">비밀번호 찾기</a></span></li>
		</ul>
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
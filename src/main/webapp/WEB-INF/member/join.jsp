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
	height: 110vh;
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
	width:50vw; 
	height:85vh; 
	margin:auto;
	position:relative;
	top:3%;
	padding-bottom:5%;
	text-align:center;
	font-weight:bold;
	border-radius:3px;
}

table{
width:33.5vw;
height:15vh;
position:absolute;
top:140%;
display:table; 
border-collapse:collapse;
}


th,td{
border:1px solid #e1e1e1;
font-size:0.8rem;
text-align:center;
}

th{
height:4.5vh;
background-color:#555;
color:white;
border:1px solid #555;
}
td{
border-left: 1px #e1e1e1 solid;
border-right: 1px #e1e1e1 solid;
color:	#666666;
font-size:0.8rem;
height:4.5vh;
}
/* 테이블 양옆 테두리 없애는것 구글링! */
table th:first-child, 
table td:first-child {
	border-left: 0;
}
table th:last-child, 
table td:last-child {
	border-right: 0;
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
		<span style="font-size:0.9rem;"><a href="/main.do">🏠</a>> 사이트 > 로그인</span>		
	</div>	
	<main class="m1">
	<div class="midbtn">
		<ul>
			<li><a href="" style="color:black;">사이트 맵</a></li>
		</ul>
		<ul>
			<li><a href="/Login.do" style="color:black;">로그인</a></li>
		</ul>
		<ul>	
			<li><a href="/Join.do" style="color:#1669ad;">회원가입</a></li>
		</ul>
	</div>
	
	<div class="midbox">
		<div>
		<h3 style="padding-top:10%; text-align:left; margin:8%; padding:0;">
		<span style="color:#0054a6;/*  font-weight: */">SIGN</span>&nbsp;<span>UP</span>&nbsp;<span style="color:#aaa; font-size:0.9rem;">회원가입약관 및 개인정보처리방침</span>
		</h3>
		
		<div class="midbox2" style="border:1px solid #f5f6f8; border-radius:3px; background-color:#f5f6f8; position:absolute; width:41vw; height:75vh; right:9%; top:15%;">
			
			</div>
		</div>
		</div>
		
		
		<div style="position:relative; left:31.5%; color:black;width:55%; top:-65%; ">
		<input type="checkbox"><span style="font-size:0.9rem; font-weight:600;">회원가입약관,개인정보처리방침에 모두 동의합니다.</span>
		<div style="position:absolute; border:1px solid #e1e1e1; background-color:white; left:0.2%; color:black;width:36.3vw; height:20vh; top:170%; border-radius:3px;">
		<div  style="position:relative; left:4%; top:10%;">
		<input type="checkbox"><span style="font-size:0.8rem; font-weight:600;">회원가입약관 동의</span><span style="color:#0054a6; font-size:0.8rem; font-weight:600;">(필수)</span>
		<div style="margin:0px; overflow-y:scroll; position:absolute; border:1px solid #f5f6f8; background-color:#f5f6f8; left:0.2%; color:black;width:33.3vw; height:11.5vh; top:150%; border-radius:3px;">
		<div style="font-size:0.8rem; color:#777; ">서비스 기본약관 』 

  【제 1 장 총 칙】 
 <br>
 <br>
    제 1 조 (목적)  
 <br>
 <br>	
    이 약관은 전기통신사업법 및 동법 시행령에 의하여 전국노숙인협회(이하 "회사"라고 합니다)가 제공하는 인터넷 서비스의 이용조건 및 절차에 관한 사항을 규정함을 목적으로 합니다.  
 <br>
 <br>
    제 2 조 (약관의 공지 및 변경)  
 <br>
 <br>
     1. 이 약관은 회사가 제공하는 서비스 화면에 게시하거나 전자우편(E-mail) 등 기타의 방법으로 이용고객 또는 회원에게 공지함으로써 효력을 발생합니다.  
 <br>
 <br>
     2. 회사는 필요한 경우 이 약관을 임의로 변경할 수 있으며 변경된 약관은 제2조의 1항과 같은 방법으로 공지함으로써 효력을 발생합니다.  
 <br>
 <br>
    제 3 조 (약관 외 준칙)  
 <br>
 <br>
    이 약관에 명시되지 않은 사항은 전기통신기본법, 전기통신사업법 및 기타 관련법령의 규정에 의합니다.  
  <br>
 <br>
    제 4 조 (용어의 정의)  
  <br>
 <br>
    이 약관에서 사용하는 용어의 정의는 다음과 같습니다.  
  <br>
 <br>
     1. 회원 : 회사와 서비스 이용계약을 체결한 자를 말합니다.  
  <br>
 <br>
     2. 아이디(ID:회원번호) : 회원 식별과 회원의 서비스 이용을 위하여 회원이 선정하고 회사가 승인한 회사에 등록된 문자와 숫자의 조합을 말합니다.  
  <br>
 <br>
     3. 비밀번호(Password) : 회원의 동일인 확인과 비밀 보호를 위해 회원 자신이 설정한 문자와 숫자의 조합을 말합니다.  
  <br>
 <br>
     4. 운영자 : 서비스의 전반적인 관리와 원활한 운영을 위하여 회사에서 선정한 사람을 말합니다. 
  <br>
 <br>
     5. 서비스 : 당 홈페이지를 통하여 제공되는 모든 컨텐츠와 정보를 말합니다.  
  <br>
 <br>
     6. 해지 : 회사 또는 회원이 서비스 개통 후 서비스 이용계약을 종료 시키는 것을 말합니다. 
  <br>
 <br>
  【제 2 장 서비스 이용계약】 
  <br>
 <br>
    제 5 조 (이용계약의 성립)  
  <br>
 <br>
     1. 이용계약은 서비스 이용 신청자의 이용신청에 대하여 회사가 승낙함으로써 성립합니다.  
  <br>
 <br>
     2. 회사의 서비스 이용신청시 회원이 "동의함" 단추를 누르면 이 약관에 동의하는 것으로 간주됩니다.  
  <br>
 <br>
    제 6 조 (이용신청)  
  <br>
 <br>
    이용신청자는 온라인으로 회사 소정의 가입 양식에 사실과 다름없이 기록하여 신청하여야 합니다.  
  <br>
 <br>
    제7 조 (이용신청의 승낙)  
  <br>
 <br>
     1. 회사는 회원이 제 6 조에 따른 이용신청을 하였을 때 제2항과, 제3항의 경우를 제외하고는 이용신청을 승낙합니다.  
  <br>
 <br>
     2. 회사는 다음 각 호에 해당하는 이용신청에 대하여는 승낙을 제한 또는 유보할 수 있습니다.  
    <br>
 <br>
        ①서비스 관련 설비의 여유가 부족한 경우  
        ②서비스 기술상 장애 사유가 있는 경우  
        ③기타 회사가 필요하다고 인정되는 경우  
  <br>
 <br>
     3. 회사는 다음 각 호에 해당하는 이용신청에 대하여는 이를 승낙하지 아니 할 수 있습니다.  
  <br>
 <br>
        ①본인의 실명으로 신청하지 않았을 때 
        ②타인의 명의를 사용하여 신청한 경우  
        ③이용신청 시 내용을 허위로 기재하여 신청한 경우  
        ④사회의 안녕질서 또는 미풍양속을 저해할 목적으로 신청한 경우  
        ⑤기타 회사가 정한 이용신청요건에 충족되지 아니할 경우  
  <br>
 <br>
    제 8 조 (계약사항의 변경)  
  <br>
 <br>
     1. 회원은 이용신청시 기재한 사항이 변경되었을 경우에는 즉시 온라인으로 수정을 해야 합니다.  
  <br>
 <br>
     2. 1항의 경우 수정하지 않은 정보로 인한 각종 손해는 해당 회원이 부담하며 회사는 이에 대해 책임을 지지 않습니다. 
  <br>
 <br>
  【제 3 장 서비스의 의무】 
  <br>
 <br>
    제 9 조 (아이디(ID)와 비밀번호 관리)  
  <br>
 <br>
     1. 회원에게 부여된 아이디(ID)와 비밀번호의 관리소홀 및 부정사용에 의하여 발생하는 모든 결과에 대한 책임은 회원에게 있습니다.  
  <br>
 <br>
     2. 자신의 아이디(ID)가 부정하게 사용된 경우 회원은 반드시 회사에 그 사실을 통보해야 합니다.  
  <br>
 <br>
    제 10 조 (회원의 게시물)  
  <br>
 <br>
    회사는 회원이 게시하거나 등록하는 서비스의 내용이 다음 각 호에 해당한다고 판단되는 경우에 사전통지 없이 삭제할 수 있습니다.  
  <br>
 <br>
     1. 공공질서 및 미풍양속을 해친다고 판단되는 경우  
  <br>
 <br>
     2. 다른 회원 또는 제3자를 비방하거나 명예를 손상시키는 내용인 경우   
  <br>
 <br>
     3. 범죄 행위에 결부된다고 판단되는 내용일 경우  
  <br>
 <br>
     4. 회사의 저작권, 제 3 자의 저작권 등 기타 권리를 침해하는 내용인 경우  
  <br>
 <br>
     5. 회사에서 규정한 게시기간을 초과한 경우  
  <br>
 <br>
     6. 기타 관계법령에 위반된다고 판단되는 경우  
  <br>
 <br>
    제 11 조 (서비스 이용요금) 
  <br>
 <br>
     1. 회사가 제공하는 기본서비스는 회원가입시 무료로 이용합니다.  
        (단, 회사에서 정한 별도의 정보와 서비스에 대해서는 유료서비스로 운영되며, 회사가 정한 유료서비스 정책에 따릅니다.) 
  <br>
 <br>
     2. 기 납입한 유료서비스 이용요금은 환불되지 않습니다.  
  <br>
 <br>
    제 12 조 (서비스 이용시간)  
  <br>
 <br>
     1. 서비스의 이용은 회사의 업무상 또는 기술상 장애 등 기타 특별한 지장이 없는 한 연중무휴 1일 24시간을 원칙으로 합니다. 다만 설비의 점검 등 회사가  필요한 경우 또는 설비의 장애, 서비스 이용의 폭주 등 불가항력 사항으로  인하여 서비스 이용에 지장이 있는 경우 예외적으로 서비스 이용의 전부 또는 일부에 대하여 제한할 수 있습니다. 
  <br>
 <br>
     2. 회사는 제공하는 서비스 중 일부에 대한  서비스이용시간을 별도로 정할 수 있으며, 이 경우 그 이용시간을 사전에 회원에게 공지 또는 통지합니다.  
  <br>
 <br>
    제 13조 (서비스 이용 책임)  
  <br>
 <br>
    회원은 서비스를 이용하여 영리목적을 위한 어떠한 수단으로도 사용할수 없으며 특히 해킹, 돈벌기 광고, 음란사이트를 통한 상업행위, 상용S/W 불법배포 등을 할 수 없습니다. 이를 어기고 발생한 영업활동의 결과 및 손실, 관계기관에 의한 구속등 법적 조치등에 관해서는 회사가 책임을 지지 않습니다.  
  <br>
 <br>
    제 14 조 (서비스 제공의 중지)  
  <br>
 <br>
    회사는 다음 각 호에 해당하는 경우 서비스 제공을 중지할 수 있습니다.  
  <br>
 <br>
     1. "회사"는 컴퓨터 등 정보통신설비의 보수점검·교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다. 이러한 서비 스 중단의 경우에는 회사는 인터넷 및 기타 방법을 통해 "사업자"에게 통지합니다.  
  <br>
 <br>
     2. 기타 불가항력적 사유가 있는 경우  
  <br>
 <br>
     3. 회사는 서비스중지에 의한 회원 및 제3자가 입은 손해에 대하여 배상하지 않습니다. 
  <br>
 <br>
  【제 4 장 이용 계약자에 대한 권리와 의무】 
  <br>
 <br>
    제 15조 (회사의 의무)  
  <br>
 <br>
     1. 회사는 서비스에 관련된 설비를 항상 운용할 수 있는 상태로 유지·보수하고, 장애가 발생하는 경우 지체없이 이를 수리·복구할 수 있도록 최선의 노력을 다하여야 합니다. 
  <br>
 <br>
     2. 회사는 회원으로부터 소정의 절차에 의해 제기되는 의견에 대해서는 적절한 절차를 거처 처리하며, 처리시 일정 기간이 소요될 경우 회원에게 그 사유와 처리 일정을 알려주어야 합니다. 
  <br>
 <br>
     3. 전자우편정보나 서비스등 회원에게 제공되는 정보가 회사의 사정에 의해 유실되거나 서비스를 중지해야 하는 경우, 회사는 별도의 책임을 지지 않습니다. 
  <br>
 <br>
    제 16 조 (회원의 의무)  
  <br>
 <br>
     1. 회원은 관계법령, 이 약관의 규정, 이용안내 및 주의사항 등 회사가 통지하는 사항을 준수하여야 하며, 기타 회사의 업무에 방해되는 행위를 하여서는 아니 됩니다. 
  <br>
 <br>
     2. 회원은 서비스를 이용하여 얻은 정보를 회사의 사전 승낙없이 복사, 복제, 변경, 번역, 출판·방송 기타의 방법으로 사용하거나 이를 타인에게 제공할 수 없습니다. 
  <br>
 <br>
     3. 회원은 이용신청서의 기재내용 중 변경된 내용이 있는 경우 서비스를 통하여 그 내용을 회사에 통지하여야 합니다. 
  <br>
 <br>
     4. 회원은 서비스 이용과 관련하여 다음 각 호의 행위를 하여서는 아니 됩니다. 
  <br>
 <br>
        ①다른 회원의 아이디(ID)를 부정사용하는 행위 
        ②범죄행위를 목적으로 하거나 기타 범죄행위와 관련된 행위 
        ③선량한 풍속, 기타 사회질서를 해하는 행위 
        ④타인의 명예를 훼손하거나 모욕하는 행위 
        ⑤타인의 지적재산권 등의 권리를 침해하는 행위  
        ⑥해킹행위 또는 컴퓨터바이러스의 유포행위 
        ⑦타인의 의사에 반하여 광고성 정보 등 일정한 내용을 지속적으로 전송하는 행위 
        ⑧서비스의 안전적인 운영에 지장을 주거나 줄 우려가 있는 일체의 행위 
        ⑨기타 관계법령에 위배되는 행위 
  <br>
 <br>
     5. 회원은 서비스의 일부로 보내지는 전자우편을 받는 것에 동의합니다 
  <br>
 <br>
     6. 회원은 서비스의 이용권한과 정보(게시물) 및 회원지위를 타인에게 양도, 증여할 수 없습니다. 
  <br>
 <br>
  【제 5 장   기  타】 
  <br>
 <br>
    제 17 조 (광고의 게재) 
  <br>
 <br>
    회사는 서비스의 운용과 관련하여 서비스 화면, 전자우편 등에 광고 등을 게재할 수 있습니다. 
  <br>
 <br>
    제 18 조 (계약해지 및 이용제한) 
  <br>
 <br>
     1. 회원이 이용계약을 해지하고자 하는 때에는 본인이 서비스 또는 전자우편을 통해 회사에 해지 신청을 하여야 합니다.해지 신청시 본인임을 알 수 있는 이름, 주민등록번호, ID, 전화번호, 해지사유를 알려주면, 가입기록과 일치여부를 확인한 후 가입을 해지하여 드립니다. 
  <br>
 <br>
     2. 회사는 회원이 제 16 조 및 기타 이 약관의 내용에 위반되는 행위를 하였을 경우 사전통지 없이 이용계약을 해지하거나 일정 기간 동안 서비스 이용을 중지할 수 있습니다.  
   <br>
 <br>
    제 19 조 (손해배상) 
  <br>
 <br>
     1. 회사는 무료로 제공되는 서비스에 대하여 회원에게 발생한 어떠한 손해에 관하여도 책임을 지지 않습니다. 단, 유료서비스의 경우 제14조의 항목을 제외한 회사의 귀책사유로 회원이 입은 손해에 대해서는 동배수의 이용기간 연장을 원칙으로 합니다. 
  <br>
 <br>
     2. 회원이 본 약관 상의 의무를 위반함으로 인하여 "회사"에 손해가 발생한 경우, 또는 회원이 서비스를 이용함에 있어 회사에 손해를 입힌 경우에는 회원은 회사에 그 손해를 배상하여야 합니다 
    <br>
 <br>
    제 20 조 (면책) 
  <br>
 <br>
     1. 회사는 천재지변 또는 이에 준하는 불가항력적인 사항으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 관한 책임이 면제됩니다.  
  <br>
 <br>
     2. 회사는 회원의 잘못으로 인한 서비스 이용의 장애에 대하여 책임을 지지 않습니다.  
  <br>
 <br>
     3. 회사는 회원이 서비스에 게재한 정보, 자료, 사실의 정확성, 신뢰성 등 그 내용에 관하여는 어떠한 책임을 부담하지 아니하고, 회원은 자기의 책임아래 서비스를 이용하며, 서비스를 이용하여 게시 또는 전송한 자료 등에 관하여 손해가 발생하거나 자료의 취사선택, 기타 서비스이용과 관련하여  어떠한 불이익이 발생하더라도 이에 대한 모든 책임은 회원에게 있습니다. 
  <br>
 <br>
     4. 회사는 회원상호간 또는 회원과 제3자간에 발생한 분쟁에 대해서는 개입할 의무가 없으며 이로 인한 손해를 배상할 책임도 없습니다. 
     <br>
 <br>
    제 21조 (분쟁의 해결)  
  <br>
 <br>
     1. 회사와 회원은 서비스와 관련하여 발생한 분쟁을 원만하게 해결하기 위하여 필요한 모든 노력을 하여야 합니다. 
  <br>
 <br>
     2. 제1항의 규정에도 불구하고, 동 분쟁으로 인하여 소송이 제기될 경우 동 소송은 회사의 본사 소재지를 관할하는 법원의 관할로 합니다  
  <br>
 <br>   
  【부칙】  
  <br>
 <br>
    제 1 조 (시행일) 
  <br>
 <br>
     이 약관은 2018년 11월 15일부터 시행합니다.</div>
		
		</div>
		</div>
		</div>
		<div style="position:absolute; border:1px solid #e1e1e1; background-color:white; left:0.2%; color:black;width:36.3vw; height:24vh; top:980%; border-radius:3px;">
		<div  style="position:relative; left:4%; top:10%;">
		<input type="checkbox"><span style="font-size:0.8rem; font-weight:600;">개인정보처리방침 동의</span><span style="color:#0054a6; font-size:0.8rem; font-weight:600;">(필수)</span>
		<table>
			<tbody>
			<tr>
				<th>목적</th>
				<th>항목</th>
				<th>보유기간</th>
			</tr>
			<tr>
				<td>이용자 식별 및 본인여부 확인</td>
				<td>아이디,이름,비밀번호</td>
				<td>회원 탈퇴 시까지</td>
			</tr>
			<tr>
				<td>고객서비스 이용에 관한 통지,<br>CS대응을 위한 이용자 식별</td>
				<td>연락처(이메일,휴대전화번호)</td>
				<td>회원 탈퇴 시까지</td>
			</tr>
			</tbody>	
		</table>
		</div>
		</div>
		</div>
		<br> 
		<div style=" border-radius:3px;  text-align:center; position:absolute; width:8.5vw; height:1.8vh; padding:1.5%; margin:1%; right:43%; top:132%; border:1px solid #0054a6; background-color:#0054a6;"><a href="/Joinus.do" style="position:relative; color:white; font-weight:600; font-size:0.9rem; top:-20%;">회원가입</a></div>
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>페이지 제목</title>
<style>
* {
	list-style: none;
	margin: 0;
	padding: 0;
}

.home-button {
	padding: 43px 22px 34px;
	margin-right: 80px;
	border-radius: 20%;
}

header {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 20px;
	background-color: transparent; /* 배경을 투명하게 설정 */
}

.nav {
	width: 80%;
	height: 45px;
	display: flex;
	font-weight: bold;
	justify-content: space-around;
	align-items: center;
}

.nav-group {
	display: flex;
	align-items: center;
}

.nav-group.left {
	flex-grow: 1; /* 왼쪽 그룹이 가능한 공간을 채우도록 함 */
	justify-content: flex-start; /* 왼쪽 정렬 */
}

.nav-group.right {
	flex-grow: 1;
	justify-content: flex-end; /* 오른쪽 정렬 */
}

.nav li {
	margin-right: 40px;
	position: relative;
}

.nav li:hover::before {
	transform: scaleX(2.7);
	background-color: rgb(171, 171, 171);
}

.nav a {
	text-decoration: none;
	color: gray;
	display: inline-block;
	transition: color 0.2s, transform 0.2s;
	padding: 10px;
}

.nav a:hover {
	color: black;
	transform: scale(1.05);
}

/* 드랍다운 스타일 */
.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: whitesmoke;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 100;
	padding-top: 20px; /* 드롭다운의 상단 여백 추가 */
	left: 50%; /* 왼쪽에서 50%만큼 드롭다운을 이동시킴 */
	transform: translateX(-50%);
	/* 드롭다운의 중심을 정확히 위치시키기 위해 X축 기준으로 -50% 이동 */
	border-radius: 5px;
	opacity: 0.9;
	
}

.dropdown-content a {
	color: gray;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	white-space: nowrap;
	transition: color 0.2s;
	text-align: center;
	margin-bottom: 10px;
	border-top: 1px solid rgba(0, 0, 0, 0.1);
}

.dropdown-content a:first-child::before {
  content: ''; /* 가상 요소의 내용을 비움 */
  display: block; /* 블록 레벨 요소로 만듦 */
  height: 1px; /* 테두리의 높이 */
  background-color: rgba(0, 0, 0, 0.1); /* 테두리 색상을 옅게 설정 */
  width: 70%; /* 너비를 70%로 설정 */
  margin: 0 auto; /* 좌우 마진을 자동으로 설정하여 중앙 정렬 */
  position: absolute; /* 부모 요소(.dropdown-content a)에 대해 절대 위치 설정 */
  top: 0; /* 상단에서 0의 위치 */
  left: 15%; /* 왼쪽에서 15%의 위치 (100% - 70%)/2 */
}

.dropdown-content a:hover {
	color: gray;
}

.dropdown:hover .dropdown-content {
	display: block;
}
</style>
</head>
<body>
	<header>
		<div class="logo">
			<a href="main.jsp" class="home-button"> <img
				src="img/logo/logo_lexus.png" alt="로고" />
			</a>
		</div>

		<ul class="nav">
			<div class="nav-group left">
				<li><a href="main.jsp">HOME</a></li>

				<li class="dropdown"><a href="#" type="button"
					onclick="location.href='/CarCare/carList.car'">시승 신청</a>
					<div class="dropdown-content">
						<a href="applyModify.jsp">조회 및 조회</a></li>

				<li class="dropdown"><a href="#" class="dropbtn">서비스 지원</a>
					<div class="dropdown-content">
						<a href="#">서비스 프로그램</a> <a href="#">서비스 캠페인</a> <a href="#">차량안내ㆍ교육</a>
					</div></li>
				<li><a href="#">전시장 찾기</a></li>	
			</div>

			<div class="nav-group right">

				<li class="dropdown"><a href="#" class="dropbtn">공지 사항</a>
					<div class="dropdown-content">
						<a href="#">회사 소개</a> <a href="#">뉴스 & 이벤트</a> <a href="#">인재 채용</a>
					</div></li>
				<li><a href="customerService.jsp">고객 센터</a></li>
			</div>
		</ul>
	</header>
</body>
</html>

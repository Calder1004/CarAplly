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

body {
    padding-top: 70px;
  }
  
.home-button {
	padding: 43px 22px 34px;
	margin-right: 80px;
	border-radius: 20%;
}

header {
	position: fixed;
	top: 0;
	left: 0;
	display: flex;
	width: 100%;
	justify-content: space-between;
	align-items: center;
	padding: 13px;
	background-color: white;
	z-index: 1000;
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
	flex-grow: 1;
	justify-content: flex-start;
}

.nav-group.right {
	flex-grow: 1;
	justify-content: flex-end;
	font-size: 12px;
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
	transform: scale(1.03);
}

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
	padding-top: 20px;
	left: 50%;
	transform: translateX(-50%);
	border-radius: 5px;
	opacity: 0.95;
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
	content: '';
	display: block;
	height: 1px;
	background-color: rgba(0, 0, 0, 0.1);
	width: 70%;
	margin: 0 auto;
	position: absolute; /* 부모 요소(.dropdown-content a */
	top: 0;
	left: 15%;
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
				src="img/logo/newlogo.png" alt="로고" />
			</a>
		</div>

		<ul class="nav">
			<div class="nav-group left">
				<li><a href="main.jsp">홈</a></li>

				<li><a href="#" type="button"
					onclick="location.href='/CarCare/carList.car'">시승 신청</a></li>

				<li class="dropdown"><a href="#" class="dropbtn">서비스 지원</a>
					<div class="dropdown-content">
						<a href="#">서비스 프로그램</a> <a href="#">서비스 캠페인</a> <a href="#">차량안내ㆍ교육</a>
					</div></li>
			</div>

			<div class="nav-group right">

				<li class="dropdown"><a href="#" class="dropbtn">공지 사항</a>
					<div class="dropdown-content">
						<a href="#">회사 소개</a> <a href="#">뉴스 & 이벤트</a> <a href="#">인재
							채용</a>
					</div></li>
				<li><a href="customerService.jsp">고객 센터</a></li>
			</div>
		</ul>
	</header>
</body>
</html>

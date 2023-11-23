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
	padding: 56px 41px 43px;
	margin-right: 100px;
	border-radius: 50%;
	transition: background-color 0.7s;
}

.home-button:hover {
	background-color: white;
}

header {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 20px;
	background-color: rgb(65, 63, 63); /* 푸터의 배경색과 일치시켜야 함 */
}

.nav {
	width: 100%;
	height: 45px;
	display: flex;
	font-weight: bold;
	justify-content: space-around;
	align-items: center;
	background-color: whitesmoke;
}

.nav li {
	margin-right: 40px;
	position: relative;
}

.nav li::before {
	content: "";
	position: absolute;
	bottom: 4;
	left: 0;
	width: 100%;
	height: 25px; /*네모 효과의 크기 조절*/
	border-radius: 7%; /* 타원으로 변경 */
	background-color: rgb(14, 14, 14); /* 효과의 기본 색상, 테마에 맞게 수정해 */
	transform: scaleX(0); /* 처음에는 안보이게 설정 */
	transform-origin: bottom center;
	transition: transform 0.3s ease-in-out;
}

.nav li:hover::before {
	transform: scaleX(2.7); /* 타원이 확대되어 나타나도록 설정 */
	background-color: rgb(75, 74, 74);; /* 네모의 색상 */
}
.nav a {
	text-decoration: none;
	color: gray;
	display: inline-block;
	transition: color 0.3s, transform 0.3s;
}

.nav a:hover {
	color: white;
	transform: scale(1.5, 1.5);
}
</style>
  </head>
  <body>
    <header>
      <div class="logo">
        <a href="main.jsp" class="home-button">
          <img src="img/logo/logo_lexus.png" alt="로고" />
        </a>
      </div>

      <ul class="nav">
        <li><a href="#">링크2</a></li>
        <li><a href="#">링크3</a></li>
        <li><a href="#">링크4</a></li>
        <li><a href="customerService.jsp">고객지원</a></li>
      </ul>
    </header>
  </body>
</html>


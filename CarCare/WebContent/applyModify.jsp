<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="shortcut icon" href="img/favicon.ico">
<title>시승 신청</title>
<!-- 스타일시트 및 기타 메타 태그는 여기에 추가 -->

<style>
/* 기본 스타일 */
body {
	font-family: "Arial", sans-serif;
	color: #333;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
}

h1 {
	background-color: #333;
	color: white;
	padding: 20px;
	margin: 0;
	text-align: center;
}

h2 {
	color: #000;
}

/* 섹션 스타일 */
section {
	padding: 20px;
	margin: 20px;
}

/* 양식 스타일 */
form {
	background-color: white;
	padding: 20px;
	margin: 20px;
	border-radius: 5px;
}

label {
	display: block;
	margin-bottom: 5px;
}

input[type="text"], input[type="number"], input[type="tel"], input[type="date"],
	input[type="email"], select {
	width: 100%;
	padding: 10px;
	margin-bottom: 10px;
	border-radius: 5px;
	border: 1px solid #ddd;
}

button {
	background-color: #000;
	color: white;
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	font-size: 16px;
}

button:hover {
	background-color: #333;
}
/* 기존 스타일은 그대로 유지 */

/* 반응형 미디어 쿼리 */
@media ( max-width : 768px) {
	/* 태블릿 및 모바일 화면 크기 대응 */
	body {
		margin: auto 10px;
	}
	/* 양식과 섹션의 여백 및 패딩 조정 */
	form, section {
		margin: 10px;
		padding: 15px;
	}

	/* 폼 요소 크기 조정 */
	input[type="text"], input[type="number"], input[type="tel"], input[type="date"],
		input[type="email"], select, button {
		width: 100%;
	}
}

@media ( max-width : 480px) {
	/* 모바일 화면 크기 대응 */
	/* 폰트 크기 조정 */
	label {
		font-size: 14px;
	}

	/* 버튼 크기 조정 */
	button {
		padding: 10px;
		font-size: 14px;
	}
}
</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<h1>Drive-Reservation</h1>
	<section>
		<h2>선택한 차량</h2>
		<img src="http://placehold.it/300X200" />
	</section>

	<form id="testDriveForm">
		<h2>시승 예약 조회</h2>

		<label for="location">시승 장소:</label> <input type="text" id="location"
			name="location" /> <label for="name">이름:</label> <input type="text"
			id="name" name="name" /> <label for="phone">연락처:</label> <input
			type="tel" id="phone" name="phone" /> <label for="email">이메일:</label>
		<input type="email" id="email" name="email" />

		<button type="submit">확인Home</button>
	</form>
	<jsp:include page="footer.jsp" />
</body>
</html>

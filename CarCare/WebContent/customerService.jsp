<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>고객지원</title>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		$(".question").click(function() {
			$(this).next(".answer").slideToggle();
		});
	});
</script>
<style>
body {
	background-color: #f5f5f5; /* 연회색 배경 */
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
}

.customer-service {
	max-width: 800px;
	margin: auto;
	padding: 20px;
	background-color: #fff; /* 밝은 배경으로 내용 강조 */
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* 가벼운 그림자 효과 */
}

.title {
	color: #000;
	text-align: center;
}

.contact-info, .faq-section, .inquiry-section {
	border-top: 2px solid #ddd; /* 섹션 구분선 */
	padding: 20px;
}

.question {
	font-weight: bold;
	color: #555;
	cursor: pointer;
}

.answer {
	color: #777;
	display: none; /* 기본적으로 숨김 */
	padding: 10px;
}

button {
	background-color: #1a73e8; /* 버튼 색상 */
	color: white;
	border: none;
	padding: 10px 20px;
	cursor: pointer;
	display: block;
	margin: 20px auto; /* 중앙 정렬 */
}

button:hover {
	background-color: #0f62fe; /* 호버 효과 */
}
</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="customer-service">
		<h1 class="title">고객센터</h1>

		<div class="contact-info">
			<h2>연락처 정보</h2>
			<p>전화번호: 080-600-6000</p>
			<p>운영시간: 평일 09:00 - 18:00 (점심시간 12:00 - 13:00)</p>
		</div>

		<div class="faq-section">
			<h2>자주 묻는 질문</h2>
			<div class="faq-item">
				<h3 class="question">Q1. 차량관리를 어떻게 해야 하나요?</h3>
				<p class="answer">차량 관리에 대한 답변입니다.</p>
			</div>
			<!-- 여러 개의 FAQ 항목 추가 -->
		</div>

		<div class="inquiry-section">
			<h2>문의하기</h2>
			<button type="button">1:1 문의하기</button>
		</div>
	</div>
<jsp:include page="footer.jsp" />
</body>
</html>

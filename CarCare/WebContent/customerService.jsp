<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<link rel="shortcut icon" href="img/favicon.ico">
<title>고객센터</title>

<script>
	document.addEventListener("DOMContentLoaded", function() {
		const questions = document.querySelectorAll(".question");

		questions.forEach(function(question) {
			question.addEventListener("click", function() {
				this.classList.toggle("active"); // 활성화된 질문에 대해 클래스 토글
				var answer = this.nextElementSibling;
				if (answer.style.display === "block") {
					answer.style.display = "none";
				} else {
					answer.style.display = "block";
				}

				// 화살표 아이콘 회전
				var arrow = this.querySelector(".arrow");
				if (arrow) {
					arrow.classList.toggle("rotate");
				}
			});
		});
	});
</script>

<style>
body {
	background-color: #f0f0f0;
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
}

.customer-service {
	max-width: 800px;
	margin: 20px auto;
	padding: 20px;
	background-color: #fff;
	box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
}

.title {
	color: #333;
	text-align: center;
	margin-bottom: 1rem;
}

h2 {
	border-top: 2px solid #eaeaea;
	padding: 20px;
	margin-top: 20px;
}

.answer {
	color: #666;
	display: none;
	padding: 10px 0;
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

label {
	display: block;
	margin-top: 10px;
	color: #333;
}

input[type="text"], input[type="email"], select, textarea {
	width: calc(100% - 22px);
	padding: 10px;
	margin-top: 5px;
	margin-bottom: 20px;
	border: 1px solid #ccc;
	border-radius: 3px;
}

input[type="text"]:focus, input[type="email"]:focus, select:focus,
	textarea:focus {
	outline: none;
	border-color: #4caf50;
	box-shadow: 0 0 0 2px rgba(76, 175, 80, 0.2);
}

textarea {
	resize: vertical;
}

.question {
	font-weight: 600;
	color: #535353;
	cursor: pointer;
	position: relative;
	padding-right: 20px;
}

.arrow {
	position: absolute;
	transition: transform 0.3s ease;
	color: #535353;
}

.rotate {
	transform: rotate(180deg);
}

@media only screen and (max-width: 600px) {
	.customer-service {
		box-shadow: none;
		margin: 10px;
		padding: 10px;
	}
	input[type="text"], input[type="email"], select, textarea, button {
		width: 100%;
		box-sizing: border-box;
	}
	.title, .contact-info h2, .faq-section h2 {
		margin-top: 0;
	}
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
				<h3 class="question">
					Q1. 시승접수를 어떻게 해야 하나요?<span class="arrow">▼</span>
				</h3>
				<p class="answer">Lorem ipsum dolor sit amet consectetur
					adipisicing elit. Amet, ullam?</p>
			</div>
			<div class="faq-item">
				<h3 class="question">
					Q2. 시승후 반납을 어떻게 해야 하나요?<span class="arrow">▼</span>
				</h3>
				<p class="answer">Lorem ipsum dolor sit amet consectetur
					adipisicing elit. Dicta, amet!</p>
			</div>
			<div class="faq-item">
				<h3 class="question">
					Q3. 차량관리를 어떻게 해야 하나요?<span class="arrow">▼</span>
				</h3>
				<p class="answer">Lorem, ipsum dolor sit amet consectetur
					adipisicing elit. Esse, molestias?</p>
			</div>
		</div>
		<h2>1:1 문의하기</h2>
		<form action="/submit_inquiry" method="post">
			<label for="inquiryType">문의 유형</label> <select name="inquiryType"
				id="inquiryType">
				<option value="order">시승 전 문의</option>
				<option value="delivery">시승 후 문의</option>
				<option value="refund">모델 관련</option>
				<option value="product">결함 관련</option>
				<option value="other">기타</option>
			</select> <label for="title">제목</label> <input type="text" id="title"
				name="title" required /> <label for="email">이메일</label> <input
				type="email" id="email" name="email" required /> <label
				for="content">내용</label>
			<textarea id="content" name="content" rows="5" required></textarea>

			<button type="submit">문의하기</button>
		</form>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>


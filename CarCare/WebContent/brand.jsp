<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<title>Brand</title>
<meta name="description" content="Figma htmlGenerator" />
<meta name="author" content="htmlGenerator" />
<link href="https://fonts.googleapis.com/css?family=Inter&display=swap"
	rel="stylesheet" />
<link rel="stylesheet" href="css/brand.css" />
<link rel="shortcut icon" href="img/favicon.ico">
</head>
<body>
<jsp:include page="header.jsp" />
	<div class="page-container">

		<!-- 네비게이션 -->
		<div class="navigation-container">
			<img src="img/brand/div_c1ci_0.png" alt="images0" />
			<ul class="navigation-label">
				<li>브랜드 |&nbsp;</li>
				<li>브랜드 스토리 |&nbsp;</li>
				<li>브랜드 철학</li>
			</ul>
		</div>

		<!-- 첫 히어로 섹션 -->
		<div class="hero-section">
			<div class="hero-inner">
				<img src="img/brand/keyvisual-w_1.png" alt="1">
				<div class="brand-philosophy-container">
					<span class="brand-philosophy-title">브랜드 철학</span><br> <br>
					<br> <br> <br> <br> <span
						class="brand-philosophy-text"> 모든 인류의 더 나아진 삶을 위해, 더 나은 방향의
						진보를 시작합니다. </span>
				</div>
			</div>
		</div>

		<!-- 비전 섹션 -->
		<div class="vision-section">
			<span class="vision-title">미래에 대한 우리의 비전</span> <span
				class="vision-text"> 현대자동차는 모빌리티 솔루션 기업으로서<br> 자동차 제조를
				넘어서서 모든 사람들에게 이동의 자유를 제공하고자 합니다.
			</span> <span class="vision-detail"> 또한 현대자동차는 경제적인 에너지 자원으로써 수소의
				가능성을 높여 청정 에너지로 전환되는 사회의 변화에서 중추적인 역할을 할 것 입니다. </span> <img
				src="img/brand/vision_oginal_2.png" alt="2">
		</div>


		<!-- 철학 섹션 -->
		<div class="philosophy-section">
			<div class="philosophy-content">
				<img src="img/brand/div_text_with_bg_3.png" alt="3"> <span
					class="philosophy-text1"> 브랜드 철학<br> <br> <br>
					미래 모빌리티에 대한 우리의 생각은 이 사회에 대한 강한 헌신에 기반합니다.<br>우리는 인류를 위해 옳은 일을
					하고자 존재합니다.
				</span> <span class="philosophy-text2"> 휴머니티의 실현은 사람들의 일상을 이해하는 것에서
					시작됩니다.<br> 현대인들은 한정된 일상의 시간을 의미 있게 보내는 것을 원하며, 우리는 이러한 시간의
					소중함을 알고 있습니다.<br>그렇기 때문에 단순히 시간을 보내는 것보다 의미 있게 보내는 것이 중요하다는 것을
					우리는 알고 있습니다.<br>모든 인류의 더 나아진 삶을 위해 우리는 시간에 대한 이해를 바탕으로 더 나은
					방향의 진보를 시작합니다.
				</span> <span class="philosophy-text3"> 우리의 목표는 모두에게 똑같이 주어진 하루
					24시간을 가치 있는 시간으로 새롭게 바꾸고, 모든 순간 을 보다 의미 있게 만드는 것입니다.<br>단지 이동을
					위한 것이 아닌, 모두의 삶을 가장 가치 있는 순간 으로 이어주는 것으로 만드는 것입니다.<br>이것이 우리가
					생각하는 미래 모빌리티 입니다.
				</span> <img src="img/brand/original_4.png" alt="4">
				<p>우리는 인류를 위해 옯은 일을 하고자 존재합니다.</p>
				<img src="img/brand/original_5.png" alt="5">
			</div>
		</div>
	</div>
<jsp:include page="footer.jsp" />
</body>
</html>
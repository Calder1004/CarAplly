<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=Chrome" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>MotionVolt</title>
<link rel="shortcut icon" href="img/favicon.ico">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
<link rel="stylesheet" href="css/main.css" />
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
<script src="js/main.js"></script>
</head>
<body>
	<jsp:include page="header.jsp" />
	<%-- <jsp:include page="header.jsp" /> --%>
	<!-- 큰 슬라이더 시작-->
	<div class="swiper banner-swiper">
		<div class="swiper-wrapper">
			<div class="swiper-slide">
				<a href="#"><img src="img/carList/CAR_E2.jpg" alt="1" /></a>
			</div>
			<div class="object-text">
				<img src="img/logo/logo2023_kv.png" alt="logo2023">
			</div>
			<div class="swiper-slide">
				<a href="#"><img src="img/carList/CAR_B.jpg" alt="1" /></a>
			</div>
			<div class="swiper-slide">
				<a href="#"><img src="img/carList/CAR_C.jpg" alt="1" /></a>
			</div>
			<div class="swiper-slide">
				<a href="#"><img src="img/carList/CAR_D.jpg" alt="1" /></a>
			</div>
			<div class="swiper-slide">
				<a href="#"><img src="img/carList/CAR_A.jpg" alt="1" /></a>
			</div>
			<div class="swiper-slide">
				<a href="#"><img src="img/carList/CAR_F2.jpg" alt="1" /></a>
			</div>
			<div class="swiper-slide">
				<a href="#"><img src="img/carList/CAR_G.jpg" alt="1" /></a>
			</div>
			<div class="swiper-slide">
				<a href="#"><img src="img/carList/CAR_H.jpg" alt="1" /></a>
			</div>
			<div class="swiper-slide">
				<a href="#"><img src="img/carList/CAR_I.jpg" alt="1" /></a>
			</div>
			<div class="swiper-slide">
				<a href="#"><img src="img/carList/CAR_K.jpg" alt="1" /></a>
			</div>
			<div class="swiper-slide">
				<a href="#"><img src="img/carList/CAR_N.jpg" alt="1" /></a>
			</div>
			<div class="swiper-slide">
				<a href="#"><img src="img/carList/CAR_O.jpg" alt="1" /></a>
			</div>
			<div class="swiper-slide">
				<a href="#"><img src="img/carList/CAR_P.jpg" alt="1" /></a>
			</div>
			<div class="swiper-slide">
				<a href="#"><img src="img/carList/CAR_Q.jpg" alt="1" /></a>
			</div>
			<div class="swiper-slide">
				<a href="#"><img src="img/carList/CAR_R.jpg" alt="1" /></a>
			</div>
		</div>
	</div>
	<!-- 큰 슬라이더 끝-->

	<!-- 작은 슬라이더 시작 -->
	<div class="swiper content-swiper">
		<div class="swiper-wrapper">
			<div class="swiper-slide">
				<a href="#"><img src="img/carList/LC500h.png" alt="" /></a>
				<div class="tooltip">
					<p>LC500</p>
				</div>
			</div>
			<div class="swiper-slide">
				<a href="#"><img src="img/carList/UX250hFSPORT.png" alt="" /></a>
				<div class="tooltip">
					<p>UX250hFSPORT</p>
				</div>
			</div>
			<div class="swiper-slide">
				<a href="#"><img src="img/carList/UX250h2WD.png" alt="" /></a>
				<div class="tooltip">
					<p>UX250h2WD</p>
				</div>
			</div>
			<div class="swiper-slide">
				<a href="#"><img src="img/carList/LS500.png" alt="" /></a>
				<div class="tooltip">
					<p>LS500</p>
				</div>
			</div>
			<div class="swiper-slide">
				<a href="#"><img src="img/carList/ES300.png" alt="" /></a>
				<div class="tooltip">
					<p>ES300</p>
				</div>
			</div>
			<div class="swiper-slide">
				<a href="#"><img src="img/carList/ES300h.png" alt="" /></a>
				<div class="tooltip">
					<p>ES300h</p>
				</div>
			</div>
			<div class="swiper-slide">
				<a href="#"><img src="img/carList/NX450h.png" alt="" /></a>
				<div class="tooltip">
					<p>NX450h</p>
				</div>
			</div>
			<div class="swiper-slide">
				<a href="#"><img src="img/carList/NX450h+FSPORT.png" alt="" /></a>
				<div class="tooltip">
					<p>NX450h+FSPORT</p>
				</div>
			</div>
			<div class="swiper-slide">
				<a href="#"><img src="img/carList/RX350h.png" alt="" /></a>
				<div class="tooltip">
					<p>RX350h</p>
				</div>
			</div>
			<div class="swiper-slide">
				<a href="#"><img src="img/carList/RX450h+.png" alt="" /></a>
				<div class="tooltip">
					<p>RX450h+</p>
				</div>
			</div>
		</div>
		<div class="swiper-button-next"></div>
		<div class="swiper-button-prev"></div>
		<div class="swiper-pagination"></div>
	</div>
	<!-- 작은 슬라이더 끝 -->

	<!-- Youtube 시작 -->
	<div class="brand-film-container">
		<div class="brand-film-list">
			<a href="https://www.youtube.com/watch?v=lTmMs-EJGxM"
				class="gtm-main-brand-film-0">
				<figure class="mod-covered-bg"
					style="background-image: url(&quot;img/Thumbnail.jpg&quot;);">
					<figcaption>영상 썸네일입니다.</figcaption>
				</figure>
			</a>
		</div>
	</div>
	<!-- Youtube 끝 -->

	<!-- Support Card 시작-->
	<div class="support-section">
		<h2 class="support-title">SUPPORT</h2>

		<div class="card-container">
			<div class="card">
				<h3>예약 접수</h3>
				<p>예약 일정, 소요 시간 등에 대한 자세한 안내를 드리고 예약을 진행합니다.</p>
			</div>

			<div class="card">
				<h3>예약 조회</h3>
				<p>고객님 차량에 적합한 서비스 테크니션을 배정하고, 예약일 하루전 사전 확인 전화를 드립니다.</p>
			</div>

			<div class="card">
				<h3>고객 상담</h3>
				<p>서비스를 파악하며, 점검 및 정비 내역에 대하여 상세한 설명과 적절한 서비스 상품을 제안 드립니다.</p>
			</div>

			<div class="card">
				<h3>시승신청</h3>
				<p>고객님과 고객님 차량의 가치를 생각하며 보이지 않는 곳까지 배려하는 서비스 정신</p>
			</div>
		</div>
	</div>
	<!-- Support Card 끝 -->
	<jsp:include page="footer.jsp" />
</body>
</html>

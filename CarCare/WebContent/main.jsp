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
	<jsp:include page="test333.jsp" />
	<%-- <jsp:include page="header.jsp" /> --%>
	<!-- 큰 슬라이더 시작-->
	<div class="swiper banner-swiper">
		<div class="swiper-wrapper">
			<div class="swiper-slide">
				<a href="#"><img src="img/carList/LEXUS_CARS.jpg" alt="1" /></a>
			</div>
			<div class="object-text">
				<img src="img/logo/logo2023_kv.png" alt="logo2023">
			</div>
			<div class="swiper-slide">
				<a href="#"><img src="img/carList/LEXUS_CAR2.jpg" alt="1" /></a>
			</div>
			<div class="swiper-slide">
				<a href="#"><img src="img/carList/LEXUS_CAR2.jpg" alt="1" /></a>
			</div>
			<div class="swiper-slide">
				<a href="#"><img src="img/carList/LEXUS_CAR2.jpg" alt="1" /></a>
			</div>
			<div class="swiper-slide">
				<a href="#"><img src="img/carList/LEXUS_CAR2.jpg" alt="1" /></a>
			</div>
		</div>
	</div>
	<!-- 큰 슬라이더 끝-->

	<!-- 작은 슬라이더 시작 -->
	<div class="swiper content-swiper">
		<div class="swiper-wrapper">
			<div class="swiper-slide">
				<a href="#"><img src="img/carList/LC500.png" alt="" /></a>
				<div class="tooltip">
					<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
						Deleniti, pariatur autem dolorum magni voluptatum harum dicta
						itaque ea delectus voluptatem!</p>
				</div>
			</div>
			<div class="swiper-slide">
				<a href="#"><img src="img/carList/UX250hFSPORT.png" alt="" /></a>
				<div class="tooltip">
					<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit.
						Voluptatem odio iste maxime id dolor? Earum odit fugiat vitae
						architecto dolorem?</p>
				</div>
			</div>
			<div class="swiper-slide">
				<a href="#"><img src="img/carList/UX250h2WD.png" alt="" /></a>
				<div class="tooltip">
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Perspiciatis ratione ea placeat. Recusandae dolor repudiandae
						ratione vero tenetur culpa cumque.</p>
				</div>
			</div>
			<div class="swiper-slide">
				<a href="#"><img src="img/carList/LS500.png" alt="" /></a>
				<div class="tooltip">
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
						Natus dicta optio ex totam soluta aliquid sit quasi praesentium,
						vero ullam!</p>
				</div>
			</div>
			<div class="swiper-slide">
				<a href="#"><img src="img/carList/ES300.png" alt="" /></a>
				<div class="tooltip">
					<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit.
						Repudiandae alias inventore magnam aperiam odit quibusdam
						praesentium fuga itaque. Quas, dicta!</p>
				</div>
			</div>
			<div class="swiper-slide">
				<a href="#"><img src="img/carList/ES300h.png" alt="" /></a>
				<div class="tooltip">
					<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit.
						Iste ut eaque itaque maxime praesentium quidem dolorem, minima aut
						id omnis.</p>
				</div>
			</div>
			<div class="swiper-slide">
				<a href="#"><img src="img/carList/NX450h+.png" alt="" /></a>
				<div class="tooltip">
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
						Ipsum tempora, quo voluptatum corporis corrupti fugit? Veniam
						vitae cumque placeat officia?</p>
				</div>
			</div>
			<div class="swiper-slide">
				<a href="#"><img src="img/carList/NX450h+FSPORT.png" alt="" /></a>
				<div class="tooltip">
					<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit.
						Dignissimos, nesciunt sint! Natus soluta adipisci, sequi
						accusantium quas officiis deserunt beatae!</p>
				</div>
			</div>
			<div class="swiper-slide">
				<a href="#"><img src="img/carList/RX350h.png" alt="" /></a>
				<div class="tooltip">
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
						Suscipit quae sint officia facere molestiae sunt quisquam
						quibusdam hic expedita eius.</p>
				</div>
			</div>
			<div class="swiper-slide">
				<a href="#"><img src="img/carList/RX450h+.png" alt="" /></a>
				<div class="tooltip">
					<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
						Doloribus error, facere aspernatur repudiandae ipsam consequatur
						unde vitae facilis expedita earum.</p>
				</div>
			</div>
		</div>
		<div class="swiper-button-next"></div>
		<div class="swiper-button-prev"></div>
		<div class="swiper-pagination"></div>
	</div>
	<!-- 작은 슬라이더 끝 -->
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
	<jsp:include page="footertest.jsp" />
</body>
</html>

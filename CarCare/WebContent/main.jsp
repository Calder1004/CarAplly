<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
   <head>
      <meta charset="UTF-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=Chrome" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <title>main page</title>
      <link rel="shortcut icon" href="img/favicon.ico">
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
      <link rel="stylesheet" href="css/main.css" />
      <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
      <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
      <script src="js/main.js"></script>
   </head>
   <body>
      <jsp:include page="header.jsp" />
      <!-- 큰 슬라이더 시작-->
      <div class="swiper banner-swiper">
         <div class="swiper-wrapper">
            <div class="swiper-slide">
               <a href="#"><img src="img/carList/LEXUS_CAR1.jpg" alt="1" /></a>
            </div>
            <div class="swiper-slide">
               <a href="#"><img src="img/carList/LEXUS_CAR2.jpg" alt="1" /></a>
            </div>
            <div class="swiper-slide">
               <a href="#"><img src="img/carList/LEXUS_CAR3.jpg" alt="1" /></a>
            </div>
            <div class="swiper-slide">
               <a href="#"><img src="img/carList/LEXUS_CAR4.jpg" alt="1" /></a>
            </div>
            <div class="swiper-slide">
               <a href="#"><img src="img/carList/LEXUS_CAR5.jpg" alt="1" /></a>
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
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore eveniet enim deserunt ea labore hic!</p>
              </div>
            </div>
            <div class="swiper-slide">
               <a href="#"><img src="img/carList/UX250hFSPORT.png" alt="" /></a>
               <div class="tooltip">
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore eveniet enim deserunt ea labore hic!</p>
              </div>
            </div>
            <div class="swiper-slide">
               <a href="#"><img src="img/carList/UX250h2WD.png" alt="" /></a>
               <div class="tooltip">
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore eveniet enim deserunt ea labore hic!</p>
              </div>
            </div>
            <div class="swiper-slide">
               <a href="#"><img src="img/carList/LS500.png" alt="" /></a>	
               <div class="tooltip">
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore eveniet enim deserunt ea labore hic!</p>
              </div>
            </div>
            <div class="swiper-slide">
               <a href="#"><img src="img/carList/ES300.png" alt="" /></a>
               <div class="tooltip">
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore eveniet enim deserunt ea labore hic!</p>
              </div>
            </div>
            <div class="swiper-slide">
               <a href="#"><img src="img/carList/ES300h.png" alt="" /></a>
               <div class="tooltip">
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore eveniet enim deserunt ea labore hic!</p>
              </div>
            </div>
            <div class="swiper-slide">
               <a href="#"><img src="img/carList/NX450h+.png" alt="" /></a>
               <div class="tooltip">
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore eveniet enim deserunt ea labore hic!</p>
              </div>
            </div>
            <div class="swiper-slide">
               <a href="#"><img src="img/carList/NX450h+FSPORT.png" alt="" /></a>
               <div class="tooltip">
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore eveniet enim deserunt ea labore hic!</p>
              </div>
            </div>
            <div class="swiper-slide">
               <a href="#"><img src="img/carList/RX350h.png" alt="" /></a>
               <div class="tooltip">'
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore eveniet enim deserunt ea labore hic!</p>
              </div>
            </div>
            <div class="swiper-slide">
               <a href="#"><img src="img/carList/RX450h+.png" alt="" /></a>
               <div class="tooltip">
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore eveniet enim deserunt ea labore hic!</p>
              </div>
            </div>
         </div>
         <div class="swiper-button-next"></div>
         <div class="swiper-button-prev"></div>
         <div class="swiper-pagination"></div>
      </div>
      <!-- 작은 슬라이더 끝 -->
      <jsp:include page="footer.jsp"/>
   </body>
</html>
	
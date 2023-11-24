<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
   <head>
      <meta charset="UTF-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=Chrome" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <title>main page</title>
      <link rel="stylesheet" href="css/main.css" />
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
      <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
      <script src="js/main.js"></script>
      <script>
         function changeLeftImage(imageSrc, description) {
            document.getElementById("mainImage").src = imageSrc;
            document.getElementById("mainImage").alt = description;
            document.getElementById("mainImage").nextElementSibling.querySelector("p").innerText = description;
         }
      </script>
   </head>
   <body>
      <jsp:include page="header.jsp" />

      <!-- 큰 슬라이더 시작-->
      <div class="swiper banner-swiper">
         <div class="swiper-wrapper">
            <div class="swiper-slide">
               <a href="#"><img src="img/LEXUS_CAR1.jpg" alt="1" /></a>
            </div>
            <div class="swiper-slide">
               <a href="#"><img src="img/LEXUS_CAR2.jpg" alt="1" /></a>
            </div>
            <div class="swiper-slide">
               <a href="#"><img src="img/LEXUS_CAR3.jpg" alt="1" /></a>
            </div>
            <div class="swiper-slide">
               <a href="#"><img src="img/LEXUS_CAR4.jpg" alt="1" /></a>
            </div>
         </div>
         <div class="swiper-button-next"></div>
         <div class="swiper-button-prev"></div>
      </div>
      <!-- 큰 슬라이더 끝-->
      <div class="image-apply-button">
         <button type="button" onclick="location.href='/CarCare/carList.car'">시승 신청 바로가기</button>
      </div>
      <!-- 작은 슬라이더 시작 -->
      <div class="swiper content-swiper">
         <div class="swiper-wrapper">
            <div class="swiper-slide" onclick="changeLeftImage('img/carList/car1_LC500.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore eveniet enim deserunt ea labore hic!');">
               <a href="#"><img src="img/car1_LC500.png" alt="" /></a>
               <div class="tooltip">
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore eveniet enim deserunt ea labore hic!</p>
              </div>
            </div>
            <div class="swiper-slide" onclick="changeLeftImage('img/carList/car2_UX250s.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore eveniet enim deserunt ea labore hic!');">
               <a href="#"><img src="img/car2_UX250s.png" alt="" /></a>
               <div class="tooltip">
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore eveniet enim deserunt ea labore hic!</p>
              </div>
            </div>
            <div class="swiper-slide" onclick="changeLeftImage('img/carList/car3_UX250.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore eveniet enim deserunt ea labore hic!');">
               <a href="#"><img src="img/car3_UX250.png" alt="" /></a>
               <div class="tooltip">
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore eveniet enim deserunt ea labore hic!</p>
              </div>
            </div>
            <div class="swiper-slide" onclick="changeLeftImage('img/carList/car4_LS500.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore eveniet enim deserunt ea labore hic!');">
               <a href="#"><img src="img/car4_LS500.png" alt="" /></a>
               <div class="tooltip">
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore eveniet enim deserunt ea labore hic!</p>
              </div>
            </div>
            <div class="swiper-slide" onclick="changeLeftImage('img/carList/car5_ES300.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore eveniet enim deserunt ea labore hic!');">
               <a href="#"><img src="img/car5_ES300.png" alt="" /></a>
               <div class="tooltip">
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore eveniet enim deserunt ea labore hic!</p>
              </div>
            </div>
            <div class="swiper-slide" onclick="changeLeftImage('img/carList/car6_ES300.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore eveniet enim deserunt ea labore hic!');">
               <a href="#"><img src="img/car6_ES300.png" alt="" /></a>
               <div class="tooltip">
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore eveniet enim deserunt ea labore hic!</p>
              </div>
            </div>
            <div class="swiper-slide" onclick="changeLeftImage('img/carList/car7_NX450.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore eveniet enim deserunt ea labore hic!');">
               <a href="#"><img src="img/car7_NX450.png" alt="" /></a>
               <div class="tooltip">
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore eveniet enim deserunt ea labore hic!</p>
              </div>
            </div>
            <div class="swiper-slide" onclick="changeLeftImage('img/carList/car8_RX450.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore eveniet enim deserunt ea labore hic!');">
               <a href="#"><img src="img/car8_RX450.png" alt="" /></a>
               <div class="tooltip">
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore eveniet enim deserunt ea labore hic!</p>
              </div>
            </div>
            <div class="swiper-slide" onclick="changeLeftImage('img/carList/car9_RX350.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore eveniet enim deserunt ea labore hic!');">
               <a href="#"><img src="img/car9_RX350.png" alt="" /></a>
               <div class="tooltip">
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore eveniet enim deserunt ea labore hic!</p>
              </div>
            </div>
            <div class="swiper-slide" onclick="changeLeftImage('img/carList/car10_RX450.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore eveniet enim deserunt ea labore hic!');">
               <a href="#"><img src="img/car10_RX450.png" alt="" /></a>
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
	
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
   <head>
      <meta charset="UTF-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <title>Document</title>
      <style>
         * {
            padding: 0;
            margin: 0;
            list-style: none;
            text-decoration: none;
         }
         .site-footer {
            color: #ffffff;
            background-color: #252525;
            padding: 40px 60px;
            font-family: Arial, sans-serif;
         }

         .footer-content {
            display: flex;
            justify-content: space-between;
            border-bottom: 1px solid #5b5b5b;
            padding-bottom: 20px;
            position: relative;
         }

         .footer-logo {
            width: 100px; /* 로고 이미지 크기 */
            margin-bottom: 8px;
         }

         .footer-column {
            width: 33.3333%;
         }

         .footer-column h4 {
            margin-bottom: 15px;
         }

         .footer-column ul li a {
            color: #aaa;
            margin-bottom: 10px;
            display: block;
            transition: color 0.3s ease;
         }

         .footer-column ul li a:hover {
            color: #fff;
         }

         .social-media a img {
            width: 20px;
            height: 20px;
            margin: 0 5px;
         }

         .footer-bottom {
            display: flex;
            text-align: left;
            padding-top: 20px;
            font-size: 9px;
            color: #aaa;
            /* width: 100%; */
         }
         .bottom-service1 {
            margin-right: 10px;
         }
         .bottom-service1 li:nth-child(1),
         li:nth-child(2) {
            margin-bottom: 2px;
         }

         .bottom-service2 li:nth-child(1),
         li:nth-child(2) {
            margin-bottom: 2px;
         }

         .bottom-service3 {
            display: flex;
            align-items: center;
            margin-left: auto;
         }
         .bottom-service3 li {
            /* display: inline-block; */
            margin: 0 10px;
         }

         .bottom-service3 a {
            color: #aaa;
         }

         .social-media {
            display: flex;
            align-items: center;
         }

         /* 추가적인 반응형 스타일링 필요 시 */
         /* 기존 스타일에 추가할 반응형 스타일 */
         @media (max-width: 768px) {
            .footer-content {
               flex-direction: column;
               align-items: center;
               border-bottom: none; /* 가로 구분선 제거 */
            }

            .footer-column {
               width: 100%;
               margin-bottom: 20px;
               text-align: center; /* 모든 열을 중앙 정렬 */
            }

            .footer-column h4 {
               margin-bottom: 10px; /* 제목과 목록 사이 간격 조정 */
            }

            .footer-column ul li a {
               font-size: 14px; /* 링크의 글꼴 크기 조정 */
            }

            .footer-logo {
               margin-bottom: 20px; /* 로고와 목록 사이 간격 조정 */
            }

            .social-media {
               justify-content: center; /* 소셜 미디어 아이콘을 중앙에 배치 */
            }

            .footer-bottom {
               border-top: 1px solid #636a35;
               flex-direction: column;
               align-items: center;
            }

            .bottom-service1,
            .bottom-service2 {
               display: flex; /* flexbox로 변경 */
               justify-content: flex-start; /* 항목들을 왼쪽에서 시작하도록 정렬 */
               flex-wrap: wrap; /* 필요한 경우 다음 줄로 넘김 */
               width: 110%; /* 전체 너비 사용 */
            }

            .bottom-service1 ul,
            .bottom-service2 ul {
               display: flex; /* ul 요소를 flexbox로 설정 */
               padding: 0; /* 기본 padding 제거 */
            }

            .bottom-service1 li,
            .bottom-service2 li {
               display: flex; /* li 요소를 flexbox로 설정 */
               margin-right: 10px; /* 오른쪽 마진으로 간격 조정 */
            }

            .bottom-service3 ul li {
               margin-bottom: 10px;
               margin: 0 5px; /* 하단 서비스 링크 간격 조정 */
            }
         }

         /* 호버 효과 및 탭 가능성 향상 */
         .footer-column ul li a:hover {
            color: #fff; /* 호버 시 색상 변경 */
            font-weight: bold; /* 호버 시 글꼴 굵게 */
         }

         @media (hover: hover) {
            .social-media a img {
               transition: transform 0.3s ease;
            }

            .social-media a:hover img {
               transform: scale(1.1); /* 아이콘에 마우스를 올렸을 때 확대 효과 */
            }
         }
      </style>
   </head>
   <body>
      <footer class="site-footer">
         <div class="footer-content">
            <div class="footer-column">
               <img src="img/logo/logo_lexus.png" alt="Logo" class="footer-logo" />
               <ul>
                  <li><a href="#">파트너 네트워크</a></li>
                  <li><a href="#">견적 내기</a></li>
                  <li><a href="#">구매 상담 신청</a></li>
                  <li><a href="#">시승 신청</a></li>
                  <li><a href="#">가이드라인</a></li>
               </ul>
            </div>
            <div class="footer-column">
               <h4>New CarCare</h4>
               <ul>
                  <li><a href="#">공지사항</a></li>
                  <li><a href="#">뉴스</a></li>
                  <li><a href="#">IR</a></li>
                  <li><a href="#">채용</a></li>
               </ul>
            </div>
            <div class="footer-column">
               <h4>CarCare Social</h4>
               <ul class="social-media">
                  <li>
                     <a href="https://www.facebook.com/"><img src="img/logo/logo_facebook.png" alt="Facebook" /></a>
                  </li>
                  <li>
                     <a href="https://www.instagram.com"><img src="img/logo/logo_instargram.png" alt="Instagram" /></a>
                  </li>
                  <li>
                     <a href="https://www.youtube.com"><img src="img/logo/logo_youtube.png" alt="YouTube" /></a>
                  </li>
                  <li>
                     <a href="https://twitter.com"><img src="img/logo/logo_twitter.png" alt="Twitter" /></a>
                  </li>
               </ul>
            </div>
         </div>
         <div class="footer-bottom">
            <div class="bottom-service1">
               <ul>
                  <li><p>긴급 출동 서비스</p></li>
                  <li><p>서비스 예약 문의</p></li>
                  <li><p>고객 지원실</p></li>
               </ul>
            </div>
            <div class="bottom-service2">
               <ul>
                  <li><p> | 000-1234-1234(24시간 연중무휴)</p></li>
                  <li><p> | 000-4567-1234(24시간 연중무휴)</p></li>
                  <li><p> | 000-7890-1234(평일09:00-18:00)</p></li>
               </ul>
            </div>
            <div class="bottom-service3">
               <ul>
                  <li><a href="#">개인정보처리방침</a></li>
                  <li><a href="#">법적고지</a></li>
                  <li><span>© CARCARE MOTOR KOREA</span></li>
                  <!-- 인증 마크 이미지들 -->
               </ul>
            </div>
         </div>
      </footer>
   </body>
</html>

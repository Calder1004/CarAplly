<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <style>
      * {
        list-style: none;
        margin: 0;
        padding: 0;
      }
      /* 홈 버튼 CSS 스타일링 */
      .home-button {
        padding: 31px 15px 18px; /* 패딩으로 버튼 크기 조절 */
        margin-right: 100px; /* 주변 요소와의 간격 */
        border-radius: 50%;
        transition: background-color 0.3s; /* 마우스 오버시 배경색 변경 애니메이션 */
      }
      
      .home-button:hover {
        background-color: #f7f7f7; /* 마우스 오버시 버튼 배경색 변경 */
      }

      header {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 20px;
      }

      .nav {
        width: 100%;
        height: 60px;
        /* list-style: none; */
        display: flex;
        font-weight:bold;
        justify-content: space-around;
        align-items: center;
        background-color: #f0f0f0;
      }

      .nav li {
        margin-right: 20px;
      }

      .nav a {
        text-decoration: none;
        color: black;
        transition: color 0.3s, transform 0.3s;
      }

      .nav a:hover {
        color: #3498db;
        transform: translateY(-5px);
      }
    </style>
  </head>
  <body>
    <header>
      <div class="logo">
        <!-- 홈 버튼 HTML -->
          <a href="main.jsp" class="home-button"
            ><img src="img/logo_lexus.png" alt="logo"
          /></a>
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


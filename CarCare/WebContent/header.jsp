<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>페이지 제목</title>
    <style>
      * {
        list-style: none;
        margin: 0;
        padding: 0;
      }

      .home-button {
        padding: 31px 15px 18px;
        margin-right: 100px;
        border-radius: 50%;
        transition: background-color 0.3s;
      }

      .home-button:hover {
        background-color: #252525; /* 푸터의 배경색과 일치 */
      }

      header {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 20px;
        background-color: #252525; /* 푸터의 배경색과 일치 */
      }

      .nav {
        width: 100%;
        height: 60px;
        display: flex;
        font-weight: bold;
        justify-content: space-around;
        align-items: center;
        background-color: #f0f0f0;
      }

      .nav li {
        margin-right: 20px;
      }

      .nav a {
        text-decoration: none;
        color: rgb(113, 111, 111);
        display: inline-block; 
        transition: color 0.3s, transform 0.3s;
      }

      .nav a:hover {
        color: rgb(169, 5, 5);
        /* transform: skewX(30deg); */
        transform: scale(1.5,1.5);
      }
    </style>
  </head>
  <body>
    <header>
      <div class="logo">
        <a href="main.jsp" class="home-button">
          <img src="img/logo_lexus.png" alt="로고" />
        </a>
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

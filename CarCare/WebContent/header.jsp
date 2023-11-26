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
        padding: 43px 22px 34px;
        margin-right: 80px;
        border-radius: 20%;
        transition: background-color 0.5s;
      }

      .home-button:hover {
        background-color: white;
      }

      header {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 20px;
        background-color: transparent; /* 배경을 투명하게 설정 */
      }

      .nav {
        width: 80%;
        height: 45px;
        display: flex;
        font-weight: bold;
        justify-content: space-around;
        align-items: center;
        background-color: whitesmoke;
      }

      .nav li {
        margin-right: 40px;
        position: relative;
      }

      .nav li:hover::before {
        transform: scaleX(2.7);
        background-color: rgb(171, 171, 171);
      }

      .nav a {
        text-decoration: none;
        color: gray;
        display: inline-block;
        transition: color 0.2s, transform 0.2s;
      }

      .nav a:hover {
        color: black;
        transform: scale(1.5, 1.5);
      }

      /* 드랍다운 스타일 */
      .dropdown {
        position: relative;
        display: inline-block;
      }

      .dropdown-content {
        display: none;
        position: absolute;
        background-color: whitesmoke;
        box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
        z-index: 1;
      }

      .dropdown-content a {
        color: gray;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
        transition: color 0.2s;
      }

      .dropdown-content a:hover {
        color: black;
      }

      .dropdown:hover .dropdown-content {
        display: block;
      }
    </style>
  </head>
  <body>
    <header>
      <div class="logo">
        <a href="main.jsp" class="home-button">
          <img src="img/logo/logo_lexus.png" alt="로고" />
        </a>
      </div>

      <ul class="nav">
<<<<<<< HEAD
        <li><a href="#">홈</a></li>
        <li><a href="#">시승신청</a></li>
        <li><a href="#">링크4</a></li>
=======
        <li class="dropdown">
          <a href="#" class="dropbtn">공지 사항</a>
          <div class="dropdown-content">
            <a href="#">공지 1</a>
            <a href="#">공지 2</a>
            <a href="#">공지 3</a>
          </div>
        </li>
        <li class="dropdown">
          <a href="#" class="dropbtn">서비스 지원</a>
          <div class="dropdown-content">
            <a href="#">서비스 1</a>
            <a href="#">서비스 2</a>
            <a href="#">서비스 3</a>
          </div>
        </li>
        <li><a href="#">시승신청 및 조회</a></li>
>>>>>>> 97d216ba684bb9fe49de0c567cf8f7378bba0db6
        <li><a href="customerService.jsp">고객지원</a></li>
      </ul>
    </header>
  </body>
</html>

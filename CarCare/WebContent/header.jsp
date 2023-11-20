<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>

 header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 20px;
  }

  .nav {
    width: 100%;
    height: 60px;
    list-style: none;
    display: flex;
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
      <img src="" alt="로고 이미지 " height="120" width="300">
    </div>

    <ul class="nav">
      <li><a href="/customer.jsp>">고객지원</a></li>
      <li><a href="#">링크2</a></li>
      <li><a href="#">링크3</a></li>
      <li><a href="#">링크4</a></li>
    </ul>
  </header>
</body>
</html>
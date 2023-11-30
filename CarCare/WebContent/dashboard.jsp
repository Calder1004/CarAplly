<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
</head>
<style>
		* {
			margin:0;
			padding:0;
			list-style-type: none;
			text-decoration: none;
		}
		
		a {
			text-decoration: none;
			color: 	#999999;
		}
		a:hover {
			color:white;
		}

        .container {
            display: flex;
    
        }

        .left {
            width: 150px;
            background-color: #333;
            color: #fff;
            padding: 20px;
            min-height: 100vh;
        }
        
        .left ul li {
        	font-size:14px;
        	font-weight:bold;
        	margin:10px;
        }

        .right {
            flex-grow: 1;
        }
		
		.title {
			font-size: 36px;
		 	padding: 20px;
		 	font-weight: bold;
		 	background-color: #808080;
		 	color:white;
		}
		.content {
			padding: 20px;
			background-color:#f29886;
			font-weight:bold;
		}
		.inner {
			padding: 20px;
			background-color:#f5f5dc;
			min-height: 100vh;
		}
  
    </style>
</head>
<body>
    <div class="container">
        <div class="left">
            <h2>${userRole} 님</h2>
            <ul>
                <li><a href="#">[1]예약관리</a></li>
                <li><a href="#">[2]모델등록</a></li>
                <li><a href="#">[3]모델조회</a></li>   
            </ul>
        </div>
        <div class="right">
            <div class="title">${userRole}님의 관리자 페이지</div>
        	<div class="content">영역구분/유동적으로 메뉴 불러오는 부분</div>
        	<div class="inner">
        		<p>관련 내용 테이블1</p>
        		<p>관련 내용 테이블2</p>
        		<p>관련 내용 테이블3</p>
        		<p>관련 내용 테이블4</p>
        	</div>
        </div>
    </div>
</body>
</html>
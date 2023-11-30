<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <style>
    /* ... (previous styles) ... */

          .data-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .data-table th, .data-table td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }

        .data-table th {
            background-color: #333;
            color: white;
        }

        .data-table tbody tr:nth-child(even) {
            background-color: #f5f5dc;
        }

        .data-table td .btn-container {
            display: flex;
        }

        .data-table td .btn-container input[type="button"] {
            margin-right: 5px;
            padding: 5px 10px;
            cursor: pointer;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 3px;
        }

        .data-table td .btn-container input[type="button"]:hover {
            background-color: #45a049;
        }

        .data-table td .btn-container input[type="button"]:last-child {
            background-color: #f44336;
        }

        .data-table td .btn-container input[type="button"]:last-child:hover {
            background-color: #d32f2f;
        }
</style>
</head>
<body>
    <div class="container">
        <div class="left">
            <h2>${userRole} 님</h2>
            <ul>
                <li><a href="adminSelect.car">[1]예약조회</a></li>
                <li><a href="adminUpdate.car">[2]예약관리</a></li>
                <li><a href="#">[3]모델조회</a></li>   
            </ul>
        </div>
        <div class="right">
        <div class="title">${userRole}님의 관리자 페이지</div>
        <div class="content">영역구분/유동적으로 메뉴 불러오는 부분</div>

        <c:if test="${list != null}">
            <div class="inner">
                <table class="data-table">
                    <thead>
                        <tr>
                            <th>예약번호</th>
                            <th>날짜</th>
                            <th>모델</th>
                            <th>신청자이름</th>
                            <th>CC</th>
                            <th>색상</th>
                            <th>등급</th>
                            <th>KM</th>
                            <th>가격</th>
                            <th>예약상태</th>
                            <th>관리</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="select" items="${list}">
                            <tr>
                                <td>${select.id}</td>
                                <td>${select.date}</td>
                                <td>${select.model}</td>
                                <td>${select.name}</td>
                                <td>${select.cc}</td>
                                <td>${select.color}</td>
                                <td>${select.grade}</td>
                                <td>${select.km}</td>
                                <td>${select.price}</td>
                                <td>${select.state}</td>
                                <td>
                                <div class="btn-container">
                                <form action="">
                                	<input type="button" value="수정"></input>
                                	<input type="button" value="삭제"></input>
                                </form>
                                </div>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </c:if>
    </div>
</body>
</html>
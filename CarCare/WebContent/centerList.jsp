<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="vo.CenterBean" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Center List</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            text-align: center;
        }

        h2 {
            background-color: #333;
            color: white;
            padding: 20px;
            margin: 0;
        }

        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
            background-color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 12px;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #f5f5f5;
        }

        a {
            display: inline-block;
            padding: 10px 20px;
            text-decoration: none;
            background-color: #4CAF50;
            color: white;
            border-radius: 4px;
            margin-top: 20px;
        }

        a:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <c:if test="${not empty center}">
        <h2>Center List</h2>
        <table>
            <thead>
                <tr>
                    <th>Center Name</th>
                    <th>Center Address</th>
                    <th>Center Number</th>
                </tr>
            </thead>
	            <tbody>
	                <c:forEach var="center" items="${center}">
	                    <tr>
	                        <td>${center.name}</td>
	                        <td>${center.address}</td>
	                        <td>${center.number}</td>
	                    </tr>
	                </c:forEach>
	            </tbody>
				<form action="/TestDrive.car" method="post">
				    <label for="dateInput">날짜 선택:</label>
				    <input type="date" id="dateInput" name="dateInput" required>
				
				    <!-- center 객체의 정보를 hidden 필드로 추가 -->
				    <c:forEach var="center" items="${centerList}">
				        <input type="hidden" name="centerList[${status.index}].name" value="${center.name}">
				        <input type="hidden" name="centerList[${status.index}].address" value="${center.address}">
				        <input type="hidden" name="centerList[${status.index}].number" value="${center.number}">
				    </c:forEach>
				
				    <input type="submit" value="제출">
				</form>
        </table>
        <a href="#">예약신청</a>
    </c:if>
</body>
</html>
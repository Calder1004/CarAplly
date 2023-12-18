	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Test Drive Approval</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        h2 {
            color: #333;
        }

        table {
            width: 50%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        form {
            margin-top: 20px;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
	<jsp:include page="header.jsp" />
    <h2>Test Drive Approval</h2>
    
    <table>
        <tr>
            <th>Nickname:</th>
            <td>${nickname}님 환영합니다</td>
        </tr>
        <tr>
            <th>Date:</th>
            <td>${date}</td>
        </tr>
    </table>

    <form action="testdrive.car" method="post">
        <input type="hidden" name="kakaoId" value="${kakaoId}">
        <input type="hidden" name="nickname" value="${nickname}">
        <input type="hidden" name="connected_at" value="${connected_at}">
        <input type="hidden" name="centerId" value="${centerId}">
        <input type="hidden" name="optionId" value="${optionId}">
        <input type="hidden" name="date" value="${date}">
        <input type="submit" value="예약신청">
    </form>
    	<jsp:include page="footer.jsp" />
</body>
</html>

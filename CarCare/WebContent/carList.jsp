<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="vo.CarListBean" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Car List</title>
    <style>
        table {
            border-collapse: collapse;
            width: 50%;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #f5f5f5;
        }
    </style>
</head>
<body>
    <h1>Car List</h1>
    <table>
        <thead>
            <tr>
                <th>Brand</th>
                <th>Model</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="car" items="${carList}">
                <tr>
                    <td>${car.brand}</td>
                    <td>${car.model}</td>
                    <td><a href="carListOption.car?brand=${car.brand}&model=${car.model}">옵션 선택</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
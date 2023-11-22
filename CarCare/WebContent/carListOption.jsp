<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="vo.CarListOptionBean" %>
<%@ page import="java.net.URLDecoder" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        h2 {
            background-color: #333;
            color: white;
            padding: 20px;
            margin: 0;
            text-align: center;
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
            padding: 8px 16px;
            text-decoration: none;
            background-color: #4CAF50;
            color: white;
            border-radius: 4px;
            margin-top: 10px;
        }

        a:hover {
            background-color: #45a049;
        }

        p {
            text-align: center;
            color: #666;
            margin-top: 20px;
        }
    </style>
        <script>
        function redirectToCenter() {
            window.location.href = "center.car";
        }
    </script>
    <title>Car List Option</title>
</head>
<body>

<c:if test="${not empty carListOption}">
    <h2>Car List Option:</h2>
    <table>
        <thead>
            <tr>
                <th>CC</th>
                <th>Color</th>
                <th>Price</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="option" items="${carListOption}">
                <tr>
                    <td>${option.cc}</td>
                    <td>${option.color}</td>
                    <td>${option.price}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <a href="#" onclick="redirectToCenter()">센터조회</a>
</c:if>

<c:if test="${empty carListOption}">
    <p>옵션 선택이 없습니다.</p>
</c:if>

</body>

</body>
</html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="vo.CarListOptionBean" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Car Option</title>
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
    <h1>Car Option</h1>
    
    <c:if test="${not empty brand and not empty model}">
        <h2>Selected Car: ${brand} ${model}</h2>
        
        <table>
            <thead>
                <tr>
                    <th>Color</th>
                    <th>CC</th>
                    <th>KM</th>
                    <th>Price</th>
                    <th>Grade</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="option" items="${carListOption}">
                    <tr>
                        <td>${option.color}</td>
                        <td>${option.cc}</td>
                        <td>${option.km}</td>
                        <td>${option.price}</td>
                        <td>${option.grade}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </c:if>
</body>
</html>

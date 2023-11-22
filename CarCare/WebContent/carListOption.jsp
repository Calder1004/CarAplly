<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="vo.CarListOptionBean" %>
<%@ page import="vo.CenterBean" %>
<%@ page import="java.net.URLDecoder" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }
    </style>
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
</c:if>

<c:if test="${empty carListOption}">
    <p>옵션 선택이 없습니다.</p>
</c:if>

</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="vo.CarListBean" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Car List</title>
</head>
<body>
    <h1>Car List</h1>
    
    <c:forEach var="car" items="${carList}">
        <p>Brand: ${car.brand}, Model: ${car.model}</p>
        <a href="CarDetail.car">옵션 선택</a>
    </c:forEach>
</body>
</html>
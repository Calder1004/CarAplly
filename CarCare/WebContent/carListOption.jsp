<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="vo.CarListOptionBean" %>
<%@ page import="java.net.URLDecoder" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Car List Option</title>
</head>
<body>

<c:if test="${not empty carListOption}">
    <h2>Car List Option:</h2>
    <ul>
        <c:forEach var="option" items="${carListOption}">
            <li>CC: ${option.cc}</li>
            <li>Color: ${option.color}</li>
            <li>Price: ${option.price}</li>
            <!-- 여기에 원하는 다른 속성을 추가하세요 -->
        </c:forEach>
    </ul>
</c:if>

<c:if test="${empty carListOption}">
    <p>옵션 선택이 없습니다.</p>
</c:if>

</body>
</html>

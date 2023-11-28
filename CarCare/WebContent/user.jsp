<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <script type="text/javascript" src="https://developers.kakao.com/sdk/js/kakao.js"></script>
</head>
<body>

<c:out value="${sessionScope.centerid}" />
<c:out value="${sessionScope.date}" />
<c:out value="${sessionScope.optionid}" />

<c:set var="clientId" value="31a78ed0030ac205ddf12b4382b1b74a" />
<c:set var="redirectUri" value="http://localhost:8084/CarCare/kakao.car" />
<c:set var="kakaoAuthUrl" value="https://kauth.kakao.com/oauth/authorize?client_id=${clientId}&redirect_uri=${redirectUri}&response_type=code&centerid=${sessionScope.centerid}&date=${sessionScope.date}&optionid=${sessionScope.optionid}" />

<script type="text/javascript">
    window.onload = function() {
        window.location.href = "${kakaoAuthUrl}";
    };
</script>

<a class="p-2" href="${kakaoAuthUrl}">
    <img src="img/kakao_login.png" style="height:60px">
</a>

<a class="p-2" href="https://kauth.kakao.com/oauth/authorize?client_id=${clientId}&redirect_uri=${redirectUri}&response_type=code">
    <img src="img/kakao_login.png" style="height:60px">
</a>

</body>
</html>
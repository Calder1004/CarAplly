<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://developers.kakao.com/sdk/js/kakao.js"></script>


</head>
<body>
<c:set var="centerid" value="${centerid}" />
<c:set var="date" value="${date}" />
<c:set var="optionid" value="${optionid}" />
<%
    String clientId = "31a78ed0030ac205ddf12b4382b1b74a";
    String redirectUri = "http://localhost:8084/CarCare/kakao.car";
    String kakaoAuthUrl = "https://kauth.kakao.com/oauth/authorize?" +
        "client_id=" + clientId +
        "&redirect_uri=" + redirectUri +
        "&response_type=code" +
        "&centerid=" + pageContext.getAttribute("centerid") +
        "&date=" + pageContext.getAttribute("date") +
        "&optionid=" + pageContext.getAttribute("optionid");
%>

<a class="p-2" href="<%= kakaoAuthUrl %>">
    <img src="img/kakao_login.png" style="height:60px">
</a>


<a class="p-2" href="https://kauth.kakao.com/oauth/authorize?
	client_id=31a78ed0030ac205ddf12b4382b1b74a&
	redirect_uri=http://localhost:8084/CarCare/kakao.car&response_type=code">
<img src="img/kakao_login.png" style="height:60px"></a> 

</body>
</html>
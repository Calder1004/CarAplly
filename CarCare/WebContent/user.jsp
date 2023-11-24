<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	 <%
			 
	session.setAttribute("member_mid", "5235268");
	response.sendRedirect("메인주소");
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript">
    Kakao.init('cdbc95850fb915fdc7be3dde88a464ee');
    function kakaoLogin() {
        Kakao.Auth.login({
            success: function (response) {
                Kakao.API.request({
                    url: '/v2/user/me',
                    success: function (response) {
                        alert(JSON.stringify(response))
                    },
                    fail: function (error) {
                        alert(JSON.stringify(error))
                    },
                })
            },
            fail: function (error) {
                alert(JSON.stringify(error))
            },
        })
    }
</script>
</head>
<body>
<a href="javascript:kakaoLogin()"><img src="<c:url value='/img/kakao_login.png'/>" style="width: 200px"></a>
<a href="https://kauth.kakao.com/oauth/authorize?client_id={cdbc95850fb915fdc7be3dde88a464ee}&redirect_uri=http://localhost:8084/kakaoauth.car?cmd=callback&response_type=code"><img height="38px" src="/img/kakao_login.png" /></a>	
</body>
</html>
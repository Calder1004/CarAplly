<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<a class="p-2" href="https://kauth.kakao.com/oauth/authorize?
client_id=6f31d4b7d1ae1e95eb6357159f3ee132&
redirect_uri=http://localhost:8080/CarCare/kakao.car&response_type=code">
<img src="img/kakao_login.png" style="height:60px"></a> 
</body>
</html>
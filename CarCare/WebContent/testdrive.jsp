	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MotionVolt</title>
</head>
<body>
	<jsp:include page="header.jsp" />
    
      <div class="max-w-md mx-auto bg-white rounded-md overflow-hidden shadow-md mt-3 mb-3">
        <div class="bg-black text-white text-center py-4">
            <h2 class="text-2xl text-white font-bold">예약 확인</h2>
        </div>
        <div class="p-4">
            <p class="text-gray-700">예약 정보</p>
            <ul class="list-none pl-4">
                <li>이름: ${nickname}</li>
                <li>날짜: ${date}</li>
            </ul>
        </div>
        <div class="bg-gray-100 py-4 px-4">
            <p class="text-sm text-gray-600">예약이 정상적으로 확인되었습니다. 추가 문의 사항이 있으면 연락주세요.</p>
        </div>
	    <form action="testdrive.car" method="post" class="text-center mb-3">
	        <input type="hidden" name="kakaoId" value="${kakaoId}">
	        <input type="hidden" name="nickname" value="${nickname}">
	        <input type="hidden" name="connected_at" value="${connected_at}">
	        <input type="hidden" name="centerId" value="${centerId}">
	        <input type="hidden" name="optionId" value="${optionId}">
	        <input type="hidden" name="date" value="${date}">
	        <input type="submit" value="예약신청" class="bg-black text-white py-2 px-4 rounded-md hover:bg-gray-800">
	    </form>
    </div>

    	<jsp:include page="footer.jsp" />
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="client.vo.CarListOptionBean"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<link rel="shortcut icon" href="img/favicon.ico">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<script src="js/carListOption.js"></script>
<title>MotionVolt</title>
<style>
	* {
		font-family: 'Noto Sans KR', sans-serif;	
	}
</style>
</head>
<body class="flex flex-col min-h-screen">
    <jsp:include page="header.jsp" />
    <h1 class="bg-black text-white py-5 mb-0 text-center">Catalog > <span class="text-gray-400 font-thin">Option</span></h1>
    <a href="javascript:history.back()" class="flex items-center justify-center border rounded-md w-8/12 h-10 mx-auto mt-4 p-5 block hover:bg-black hover:text-white transition duration-300">뒤로 돌아가기</a>
    <div class="flex container mx-auto overflow-hidden">
		<div class="w-full sm:w-1/2 p-4">
		    <div class="bg-white text-black h-300 rounded-md overflow-hidden">
		        <div class="p-6">
		            <h2 class="text-4xl font-bold mb-4">Car Details</h2>
		            <p class="text-sm">(Dummy)Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>	
		        </div>
		    </div>
		</div>

        <div class="w-1/2 grid-cols-1 sm:grid-cols-1 md:grid-cols-2 lg:grid-cols-3  gap-8 p-4">
            <c:if test="${not empty carListOption}">
                <c:forEach var="option" items="${carListOption}">
					<div class="border rounded-md mb-4 text-black p-4 cursor-pointer hover:bg-black transform transition-transform duration-200 hover:scale-105 hover:text-white relative"  onclick="redirectToCenter('${option.id}')">
					    <div class="flex flex-row items-center absolute right-4 top-4  min-h-0">
					        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="w-3 h-3 mr-2">
					            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 5v14m-7-7h14"></path>
					        </svg>
					    </div>
					    <p class="text-xs"><strong>배기량:</strong> ${option.cc}cc</p>
					    <p class="text-xs"><strong>색상:</strong> ${option.color}</p>
					    <p class="text-xs"><strong>가격:</strong> ${option.price}$</p>
					    <p class="text-xs"><strong>연비:</strong> ${option.km}km</p>
					    <p class="text-xs"><strong>등급:</strong> ${option.grade}</p>
					</div>	
                </c:forEach>
            </c:if>
		    <c:if test="${empty carListOption}">
		        <p class="no-option text-lg">
		            옵션 선택이 없습니다.<br>현재 확인 중입니다.
		        </p>
		    </c:if>
        </div>
    </div>
 <jsp:include page="footer.jsp" />
</body>
</html>

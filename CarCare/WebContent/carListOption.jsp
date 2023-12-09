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
<script>
	function redirectToCenter(id) {
		var form = document.createElement("form");
		form.method = "post";
		form.action = "center.car";

		var idInput = document.createElement("input");
		idInput.type = "hidden";
		idInput.name = "id";
		idInput.value = id;
		form.appendChild(idInput);

		document.body.appendChild(form);
		form.submit();
	}
</script>
<style>
	* {
		font-family: 'Noto Sans KR', sans-serif;
	}
</style>
</head>
<body>
    <jsp:include page="test333.jsp" />
    <h1 class="bg-black text-white py-5 mb-0 text-center">Catalog > <span class="text-gray-400 font-thin">Option</span></h1>

    <div class="text-center border rounded-md w-2/3 mx-auto mt-4 p-8">뒤로 돌아가기</div> 
    <div class="flex container mx-auto">
        <div class="w-1/2 p-4">
            <div class="bg-black text-white h-300 rounded-md ">
                <img src="img/carList/RX350h.png" class="w-full h-full object-cover">
            </div>
        </div>

        <div class="w-1/2 grid grid-cols-1 gap-4 p-4">
            <c:if test="${not empty carListOption}">
                <c:forEach var="option" items="${carListOption}">
					<div class="border rounded-md text-black p-4 cursor-pointer hover:bg-black transform transition-transform duration-200 hover:scale-105 hover:text-white relative"  onclick="redirectToCenter('${option.id}')">
					    <div class="flex flex-row items-center absolute right-4 top-4">
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
	

    <jsp:include page="footertest.jsp" />
</body>
</html>

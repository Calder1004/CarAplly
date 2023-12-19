<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="javax.servlet.http.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script src="https://cdn.tailwindcss.com"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>
<link rel="shortcut icon" href="img/favicon.ico">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
</head>
<style>
* {
	margin: 0;
	padding: 0;
	list-style-type: none;
	text-decoration: none;
	font-family: 'Noto Sans KR', sans-serif;
}
</style>
</head>
<body class="bg-white">
	<div class="bg-white flex w-full">
         <div class="w-[20%]  text-black shadow-inner border border-gray-100 p-8 min-h-screen">
            <h2 class="text-2xl mb-4">${userRole} 님</h2>
            <hr class="text-black mb-4 shadow-md">
		    <ul>
		        <li class="mb-2">
		            <a href="adminSelect.car" class="flex items-center hover:underline hover:text-gray-300">
		                <img src="img/usericon.svg" class="w-5" alt="Comment Lines"/>
		                <span class="ml-2">예약조회 및 관리</span>
		            </a>
		        </li>
		        <li class="mb-2">
		            <a href="adminProductSelect.car" class="flex items-center hover:underline hover:text-gray-300">
		            <img src="img/cycle-svgrepo-com.svg" class="w-5 hover:text-white" alt="Comment Lines"/>
		            <span class="ml-2">등록된 차량 조회</span>
		        </li>
		        <li class="mb-2">
		            <a href="adminPostProduct.car" class="flex items-center hover:underline hover:text-gray-300">
		             <img src="img/writeicon.svg" class="w-5" alt="Comment Lines"/>&nbsp 자동차 상품 등록</a>
		        </li>
		    </ul>
        </div>
<div class="w-full bg-white p-8">
	<div class="text-sm mb-8 text-center flex items-center justify-center">
		<a href="dashboard.jsp">
		    <img src="img/logo/mainlogo.svg" class="w-24 align-middle" alt="MotionVolt Logo">
		</a>
	</div>
	<hr class="mb-4">
<c:if test="${empty list and empty ModifyList and empty prdList and empty brandList}">
<div class="flex flex-wrap">
    <div class="w-2/6 p-4">
        <div class="bg-white shadow-md p-6 rounded-md h-full">
            <h2 class="text-lg font-semibold mb-4">자동차 리스트</h2>
            <p class="text-gray-600">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla at quam a elit accumsan tincidunt.</p>
            <div class="mt-4 flex justify-between items-center">
                <span class="text-sm text-gray-500">2023-12-31</span>
            </div>
        </div>
    </div>

    <div class="w-3/6 p-4">
        <div class="bg-white shadow-md p-6 rounded-md h-full">
            <h2 class="text-lg font-semibold mb-4">예약 조회수</h2>
            <p class="text-gray-600">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla at quam a elit accumsan tincidunt.</p>
            <div class="mt-4 flex justify-between items-center">
                <span class="text-sm text-gray-500">2023-12-31</span>
                <button class="bg-blue-500 text-white px-4 py-2 rounded hover:bg-blue-700">더 보기</button>
            </div>
        </div>
    </div>

    <div class="w-1/6 p-4">
        <div class="bg-white shadow-md p-6 rounded-md h-full">
            <h2 class="text-lg font-semibold mb-4">자동차 판매량</h2>
            <p class="text-gray-600">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla at quam a elit accumsan tincidunt.</p>
            <div class="mt-4 flex justify-between items-center">
                <span class="text-sm text-gray-500">2023-12-31</span>
                <button class="bg-blue-500 text-white px-4 py-2 rounded hover:bg-blue-700">더 보기</button>
            </div>
        </div>
    </div>

    <div class="w-full p-4 h-full">
        <div class="bg-white shadow-md p-6 rounded-md h-full">
            <h2 class="text-lg font-semibold mb-4">최신 인기순 모델</h2>	
            <div class="mt-4 flex justify-between items-center">
                <button class="bg-black text-white px-4 py-2 rounded hover:bg-blue-700"><</button>
          		<img src="img/carList/LS500h.png" class="w-30 rounded-md">
                <button class="bg-black text-white px-4 py-2 rounded hover:bg-blue-700">></button>
            </div>
            <p class="text-center">LX-500H</p>
        </div>
    </div>
    
</div>
</c:if>


<c:if test="${not empty list}">
<div class="bg-white p-8 mb-8 shadow-sm text-center rounded-md border border-gray-100">예약 대기중</div>
</c:if>



	<c:if test="${not empty ModifyList}">
    	<div class="bg-white p-8 mb-8 shadow-sm text-center rounded-md border border-gray-100">예약 관리</div>
	</c:if>
	<c:if test="${not empty prdList}">
    	<div class="bg-white p-8 mb-8 shadow-sm text-center rounded-md border border-gray-100">등록된 상품 목록</div>
	</c:if>
	<c:if test="${not empty brandList}">
    	<div class="bg-white p-8 mb-8 shadow-sm text-center rounded-md border border-gray-100">상품 등록</div>
	</c:if>
	
	<c:if test="${not empty list}">
    <div class="bg-white p-8 r shadow-md">
        <div class="overflow-x-auto rounded-lg">
            <table class="w-full border-collapse border border-gray-300 text-sm">
                <thead class="p-12">
	                <tr class="bg-black rounded-md text-white">	
	                    <th class="p-3 border-collapse border border-white">예약번호</th>
	                    <th class="p-3 border-collapse border border-white">날짜</th>
	                    <th class="p-3 border-collapse border border-white">모델</th>
	                    <th class="p-3 border-collapse border border-white">신청자이름</th>
	                    <th class="p-3 border-collapse border border-white">CC</th>
	                    <th class="p-3 border-collapse border border-white">색상</th>
	                    <th class="p-3 border-collapse border border-white">등급</th>
	                    <th class="p-3 border-collapse border border-white">KM</th>
	                    <th class="p-3 border-collapse border border-white">가격</th>
	                    <th class="p-3 border-collapse border border-white">예약상태</th>
	                    <th class="p-3 border-collapse border border-white">관리</th>
	                </tr>
                </thead>
                <tbody class="text-medium text-center">
           			<c:forEach var="select" items="${list}">
                    <tr class="border border-gray-300 selected-row">
                        <td class="border border-gray-300">${select.id}</td>
                        <td class="border border-gray-300">${select.date}</td>
                        <td class="border border-gray-300">${select.model}</td>
                        <td class="border border-gray-300">${select.name}</td>
                        <td class="border border-gray-300">${select.cc}</td>
                        <td class="border border-gray-300">${select.color}</td>
                        <td class="border border-gray-300">${select.grade}</td>
                        <td class="border border-gray-300">${select.km}</td>
                        <td class="border border-gray-300">${select.price}</td>
                        <td class="border border-gray-300">${select.state}</td>
                        <td class="border border-gray-300">
                        <div class="flex space-x-2 justify-center m-3">
                            <form action="adminUpdateForm.car" method="post">
                                <input type="hidden" name="id" value="${String.valueOf(select.id)}">
                                <button type="submit" class="bg-blue-500 text-white px-4 py-1 text-sm rounded transition duration-300 hover:bg-blue-700">수정</button>
                            </form>
                            <form action="adminDelete.car">
                                <input type="hidden" name="id" value="${String.valueOf(select.id)}">
                                <button type="submit" class="bg-red-500 text-white px-4 py-1 text-sm rounded transition duration-300 hover:bg-red-700">삭제</button>
                            </form>
                        </div>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</c:if>

<c:if test="${not empty ModifyList}">
    <div id="editModal">
        <div class="bg-white mx-auto mt-20 p-8 w-96 shadow-lg rounded-lg flex items-center">
            <form id="editForm" action="adminUpdate.car" method="post" class="space-y-4 w-full">
                <label for="editId" class="block text-sm font-bold">예약번호:</label>
                <input type="text" id="editId" name="id" value="${ModifyList.id}" readonly class="w-full border rounded p-2 mb-2" />

                <label for="editDate" class="block text-sm font-bold">예약날짜:</label>
                <input type="text" id="editDate" name="date" value="${ModifyList.date}" class="w-full border rounded p-2 mb-2" />

                <label for="editOptionId" class="block text-sm font-bold">모델/옵션변경:</label>
                <select name="carId" id="editOptionId" required class="w-full border rounded p-2 mb-2">
                                       <option value="1">모델:LS500 색상:SONIC IRIDIUM</option>
										<option value="2">모델:LS500 색상:GRAPHITE BLAK</option>
										<option value="3">모델:ES300 색상:LUNAR LUSTER</option>
										<option value="4">모델:ES300 색상:SONIC TITANIUM</option>
										<option value="5">모델:ES300H 색상:SONIC QUARTZ</option>
										<option value="6">Option ID:6 색상:HEAT BLUE CONTRAS</option>
										<option value="7">Option ID:7 색상:GRAPAHITE BLACK</option>
										<option value="8">Option ID:8 색상:DEEP BLUE MIKA</option>
										<option value="9">Option ID:9 색상:SONIC COOPER</option>
                </select>

                <label for="editModel" class="block text-sm font-bold">현재 모델:</label>
                <input type="text" id="editModel" name="model" value="${ModifyList.model}" readonly class="w-full border rounded p-2 mb-2" />

                <label for="editName" class="block text-sm font-bold">이름:</label>
                <input type="text" id="editName" name="name" value="${ModifyList.name}" readonly class="w-full border rounded p-2 mb-2" />

                <label for="editState" class="block text-sm font-bold">예약상태:</label>
                <select id="editState" name="state" class="w-full border rounded p-2 mb-2">
                    <option value="RESERVED" ${ModifyList.state == 'RESERVED' ? 'selected' : ''}>RESERVED</option>
                    <option value="FAILED" ${ModifyList.state == 'FAILED' ? 'selected' : ''}>FAILED</option>
                </select>

                <button type="submit" class="bg-green-500 text-white px-4 py-2 rounded hover:bg-green-700">수정</button>
            </form>
        </div>
    </div>
</c:if>

<c:if test="${not empty prdList}">
    <div class="bg-white p-8 r shadow-md">
        <div class="overflow-x-auto rounded-lg">
            <table class="w-full border-collapse border border-gray-300 text-sm">
                <thead class="p-12">
                    <tr class="bg-black text-white">
                        <th class="p-3">브랜드</th>
                        <th class="p-3">모델</th>
                        <th class="p-3">색상</th>
                        <th class="p-3">CC</th>
                        <th class="p-3">KM</th>
                        <th class="p-3">가격</th>
                        <th class="p-3">등급</th>
                    </tr>
                </thead>
                <tbody class="text-medium	">
                    <c:forEach var="items" items="${prdList}">
                        <tr class="hover:bg-gray-200 transition text-center">
                            <td class="py-2 border border-gray-300">${items.brand}</td>
                            <td class="py-2 border border-gray-300">${items.model}</td>
                            <td class="py-2 border border-gray-300">${items.color}</td>
                            <td class="py-2 border border-gray-300">${items.cc}</td>
                            <td class="py-2 border border-gray-300">${items.km}</td>
                            <td class="py-2 border border-gray-300">${items.price}</td>
                            <td class="py-2 border border-gray-300">${items.grade}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</c:if>
<c:if test="${not empty brandList}">
    <div class="w-[100%] mx-auto p-8 bg-white rounded-lg shadow-md">
        <form action="adminBrandWrite.car" method="post" class="mb-8">
            <h2 class="text-3xl mb-4 font-semibold text-center">브랜드 등록</h2>
       	<div class="flex flex-col items-center space-y-4">
            <input type="text" name="name" placeholder="브랜드명을 입력하세요." required class="w-full p-2 border rounded-md">
            <button type="submit" class="bg-gray-800 text-white px-6 py-2 rounded-md hover:bg-blue-700 transition">등록</button>
        </div>
        </form>
    </div>

    <div class="w-[100%] mx-auto p-8 bg-white rounded-lg shadow-md mt-8">
    <form action="adminModelWrite.car" method="post" class="text-center">
        <h2 class="text-3xl mb-4 font-semibold">모델 등록</h2>
        
        <label for="brand" class="block mb-2 text-left text-sm font-bold text-gray-600">브랜드</label>
        <select id="brand" name="carBrandId" required class="w-full p-2 border rounded-md mb-4">
            <c:forEach var="brandMap" items="${brandList}">
                <c:forEach var="entry" items="${brandMap}">
                    <option value="" disabled selected hidden>브랜드를 선택하세요</option>
                    <option value="${entry.key}">${entry.value}</option>
                </c:forEach>
            </c:forEach>
        </select>

        <label for="model" class="block mb-2 text-left text-sm font-bold text-gray-600">모델</label>
        <input type="text" name="name" required class="w-full p-2 border rounded-md mb-4" placeholder="모델명을 입력하세요.">

        <button type="submit" class="bg-gray-800 text-white px-6 py-2 rounded-md hover:bg-blue-700 transition ">등록</button>
    </form>
</div>

</c:if>
	<c:if test="${not empty modelList}">
	    <div class="w-[100%] mx-auto p-8 bg-white rounded-lg shadow-md mt-8">
	        <form action="adminCarOptionWrite.car" method="post">
	            <h2 class="text-3xl mb-4 font-semibold text-center">자동차 옵션 등록</h2>
	            <div class="grid grid-cols-2 gap-4">
	                <div>
	                    <label for="model" class="block mb-2 text-sm font-medium text-gray-600">모델:</label>
	                    <select id="brand" name="carId" required class="w-full p-2 border rounded-md">
	                        <c:forEach var="ModelMap" items="${modelList}">
	                            <c:forEach var="entry" items="${ModelMap}">
	                                <option value="${entry.key}">${entry.value}</option>
	                            </c:forEach>
	                        </c:forEach>
	                    </select>
	                </div>
	                <div>
	                    <label for="color" class="block mb-2 text-sm font-medium text-gray-600">색상:</label>
	                    <input type="text" name="color" required class="w-full p-2 border rounded-md"  placeholder="자동차 색상명을 입력하세요.">
	                </div>
	            </div>
	            <div class="grid grid-cols-2 gap-4 mt-4">
	                <div>
	                    <label for="cc" class="block mb-2 text-sm font-medium text-gray-600">CC:</label>
	                    <input type="number" name="cc" required class="w-full p-2 border rounded-md" placeholder="자동차 CC를 입력하세요.">
	                </div>
	                <div>
	                    <label for="km" class="block mb-2 text-sm font-medium text-gray-600">KM:</label>
	                    <input type="number" name="km" required class="w-full p-2 border rounded-md" placeholder="자동차 KM를 입력하세요." >
	                </div>
	            </div>
	            <div class="grid grid-cols-2 gap-4 mt-4">
	                <div>
	                    <label for="price" class="block mb-2 text-sm font-medium text-gray-600">가격:</label>
	                    <input type="number" name="price" required class="w-full p-2 border rounded-md" placeholder="자동차 가격을 입력하세요.">
	                </div>
	                <div>
	                    <label for="grade" class="block mb-2 text-sm font-medium text-gray-600">등급:</label>
	                    <input type="text" name="grade" required class="w-full p-2 border rounded-md" placeholder="자동차 등급을 입력하세요.">
	                </div>
	            </div>
	            <div class="flex flex-col items-center space-y-4">
	            <button type="submit" class="bg-gray-800 text-white px-6 py-2 rounded-md hover:bg-blue-700 transition mt-4">등록</button>
	       		</div>
	        </form>
	    </div>
	</c:if>
		</div>
	</div>
</body>
</html>
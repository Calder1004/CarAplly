<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Insert title here</title>
</head>
<body>
    <div>
        <p>희망 날짜와 시간을 선택해주세요</p>
    </div>
    <div class="container mx-auto my-8">
        <div class="flex flex-row justify-start">
            <p class="grow" id="currentDate"></p> <!-- getDatemonth 들어가는곳 -->
            <p class="mx-3">prev</p>
            <p class="mx-3">next</p>
        </div>
        <hr>
        <div class="grid grid-cols-7 mt-3 gap-8">
            <p class="col-span-1 font-bold">일</p>
            <p class="col-span-1 font-bold">월</p>
            <p class="col-span-1 font-bold">화</p>
            <p class="col-span-1 font-bold">수</p>
            <p class="col-span-1 font-bold">목</p>
            <p class="col-span-1 font-bold">금</p>
            <p class="col-span-1 font-bold">토</p>
        </div>
        <div class="grid grid-cols-7 mt-3 gap-8 list-none">
            <c:forEach var="number" begin="1" end="30">
                <li class="col-span-1">${number}</li>
            </c:forEach>
        </div>
        <hr>
    </div>
<script>
  document.addEventListener("DOMContentLoaded", function () {
    const currentDate = document.querySelector("#currentDate");

    // date 얻어옴 현재 년도,월
    let date = new Date(),
      currYear = date.getFullYear(),
      currMonth = date.getMonth() + 1;

    console.log(currYear, currMonth);

    const renderCalendar = () => {
    	  console.log("currMonth, currYear:", currMonth, currYear);
    	  console.log("currentDate element:", currentDate); 
    	  currentDate.textContent = `${currMonth}월 ${currYear}년`;
    };

    renderCalendar();
  });
</script>
</body>
</html>

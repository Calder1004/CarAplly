<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <script src="https://cdn.tailwindcss.com"></script>
    <title>date</title>
    <script src="js/date_fixing.js" defer></script>
</head>
<style>
</style>
<body>
        <div>
        <p>희망 날짜와 시간을 선택해주세요</p>
    </div>
    <div class="container mx-auto my-8">
        <div class="flex flex-row justify-start">
            <p class="grow"><span id="currentDate"></span></p>
            <div id="icons">
                <span class="mx-3 cursor-pointer hover:bg-gray-500" id="prev">prev</span>
                <span class="mx-3 cursor-pointer hover:bg-gray-500" id="next">next</span>
            </div>
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
        <div class="grid grid-cols-7 mt-3 gap-8 list-none" id="days">
			
        </div>
        <form id="yourFormId" method="post" action="your-action-url">
            <!-- 여기에 폼 요소들을 추가하세요. -->
            <!-- 예시로 폼 요소 하나를 추가합니다. -->
            <input type="hidden" name="selectedDate" id="selectedDate" value="">
            <button type="button" onclick="submitForm()" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">
                제출
            </button>
        </form>
        <hr>
    </div>
</body>
</html>

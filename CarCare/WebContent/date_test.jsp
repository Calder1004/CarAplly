<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script src="https://cdn.tailwindcss.com"></script>
 <script>
 	const date = new Date();
 	
 	const NowMonth = date.getMonth() + 1;
 	const NowYear = date.getFullYear();
 	const NowDay = date.getDay();
 	
 	console.log(NowDay);
 	console.log(NowYear);
 	console.log(NowMonth);
 	
 	const months = [
 		  'January',
 		  'February',
 		  'March',
 		  'April',
 		  'May',
 		  'June',
 		  'July',
 		  'August',
 		  'September',
 		  'October',
 		  'November',
 		  'December',
 	];
 	
 	
 </script>
 
</head>
	<div class="w-full p-4">
		<p class="w-1/3 text-xl font-bold">희망 날짜와 시간을 입력해주세요</p>
	</div>
<div id="wrapper" class="w-1/2">
	<header>
		<div id="nav" class="container mx-auto flex items-center justify-between py-2">
		    <div id="yearMonth" class="ml-8 text-xs">2023년 12월</div>
		    <div class="flex">
		        <button class="cursor-pointer bg-black text-white rounded-md border border-gray-100 py-2 hover:bg-red-700 hover:text-white px-2 mr-2"><</button>
		        <button class="cursor-pointer bg-black text-white rounded-md border border-gray-100 py-2 hover:bg-red-700 hover:text-white px-2">></button>
		    </div>
		</div>
		    <hr>
	</header>
	<div id="calendar">
    <ul id="weeks" class="grid grid-cols-7 gap-3 text-center text-xs py-4">
            <li class="col-span-1">일</li>
            <li class="col-span-1">월</li>
            <li class="col-span-1">화</li>
            <li class="col-span-1">수</li>
            <li class="col-span-1">목</li>
            <li class="col-span-1">금</li>
            <li class="col-span-1">토</li>
        </ul>
	</div>
	<ul id="days" class="grid grid-cols-7 gap-3 text-center text-sm">
	        <li class="col-span-1"><span class="hover:bg-black hover:text-white px-3 py-2 rounded-full">1</span></li>
	        <li class="col-span-1"><span class="hover:bg-black hover:text-white px-3 py-2 rounded-full">2</span></li>
	        <li class="col-span-1"><span class="hover:bg-black hover:text-white px-3 py-2 rounded-full">3</span></li>
	        <li class="col-span-1">4</li>
	        <li class="col-span-1">5</li>
	        <li class="col-span-1">6</li>
	        <li class="col-span-1">7</li>
	        <li class="col-span-1">8</li>
	        <li class="col-span-1">9</li>
	        <li class="col-span-1">10</li>
	        <li class="col-span-1">11</li>
	        <li class="col-span-1">12</li>
	        <li class="col-span-1">13</li>
	        <li class="col-span-1">14</li>
	        <li class="col-span-1">15</li>
	        <li class="col-span-1">16</li>
	        <li class="col-span-1">17</li>
	        <li class="col-span-1">18</li>
	        <li class="col-span-1">19</li>
	        <li class="col-span-1">20</li>
	        <li class="col-span-1">21</li>
	        <li class="col-span-1">22</li>
	        <li class="col-span-1">23</li>
	        <li class="col-span-1">24</li>
	        <li class="col-span-1">25</li>
	        <li class="col-span-1">26</li>
	        <li class="col-span-1">27</li>
	        <li class="col-span-1">28</li>
	        <li class="col-span-1">29</li>
	        <li class="col-span-1">30</li>
	        <li class="col-span-1">31</li>
	    </ul>
</div>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <script src="https://cdn.tailwindcss.com"></script>
 <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<meta charset="UTF-8">
<title></title>
</head>
<style>
	* {
		font-family: 'Noto Sans KR', sans-serif;
	}
</style>
<body>
<nav class="bg-white p-4 shadow-lg">
    <div class="container mx-auto flex justify-between items-center h-16">
        <a href="main.jsp" class="flex items-center">
            <img src="img/logo/mainlogo.png" alt="MotionVolt Logo" class="ml-1 h-13 w-14 mr-8">
        </a>
		<div class="ml-4 flex space-x-6 m-auto">
            <a href="#" class="text-stone-900 font-bold text-base hover:text-slate-600">MODEL</a>
            <a href="/CarCare/carList.car" class="text-stone-900 font-bold text-base hover:text-slate-600">APLLY</a>
            <a href="service.jsp" class="text-stone-900 font-bold text-base hover:text-slate-600">SERVICE</a>
            <a href="brand.jsp" class="text-stone-900 font-bold text-base hover:text-slate-600">BRAND</a>
        </div>
		<div class="px-56 bg-gray-800 text-white"></div>
    	<div class="ml-auto flex space-x-2">
            <a href="#" class="text-stone-900 font-thin text-xs hover:underline underline-offset-1">공지사항</a>
            <a href="#" class="text-stone-900 font-thin text-xs hover:underline underline-offset-1">고객센터</a>
        </div>
    </div>
</nav>

</body>
</html>

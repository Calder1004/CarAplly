<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="client.vo.CarListBean"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link rel="shortcut icon" href="img/favicon.ico">
<script src="https://cdn.tailwindcss.com"></script>
<title>MotionVolt</title>
<script src="js/carList.js" defer></script>
</head>
<body class="font-sans bg-white">
  <jsp:include page="header.jsp" />
  <h1 class="bg-black text-white py-5 mb-0 text-center">Catalog</h1>
  <div class="flex flex-wrap justify-center p-4">
		<c:forEach var="car" items="${carList}">
			<div
				class="w-full sm:w-1/2 md:w-1/3 lg:w-1/4 xl:w-1/4 m-4 shadow-md cursor-pointer transform transition-transform duration-200 hover:scale-105"
				onclick="redirectToOption('${car.id}', '${car.brand}', '${car.model}')">
				<img src="img/carList/${car.model}.png" alt="${car.model} Image"
					class="w-full h-56 object-cover">
				<div class="text-center p-4">
					<p class="mb-2">브랜드: ${car.brand}</p>
					<p>모델: ${car.model}</p>
				</div>
			</div>
		</c:forEach>
		
	</div>
  <jsp:include page="footer.jsp" />
</body>
</html>

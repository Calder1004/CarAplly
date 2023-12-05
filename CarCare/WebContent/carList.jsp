<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="client.vo.CarListBean"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link rel="shortcut icon" href="img/favicon.ico">
<title>Car Catalog</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f0f0f0;
	margin: 0;
	padding: 0;
}

h1 {
	background-color: #333;
	color: white;
	padding: 20px;
	margin: 0;
	text-align: center;
}

.catalog-container {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-around;
	padding: 35px;
}

.catalog-item {
	width: 31%;
	margin: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	cursor: pointer;
	transition: transform 0.2s;
	overflow: hidden;
}

.catalog-item:hover {
	background-color: rgb(127, 126, 126);
	color: white;
	transform: scale(1.05);
}

.catalog-item img {
	width: 100%;
	height: 280px;
	object-fit: cover;
}

.catalog-item-description {
	width: 100%;
	text-align: center;
	padding: 10px;
}
</style>

<script>
	function redirectToOption(id, brand, model) {
		var form = document.createElement("form");
		form.method = "post";
		form.action = "carListOption.car";

		var IdInput = document.createElement("input");
		IdInput.type = "hidden";
		IdInput.name = "id";
		IdInput.value = id;
		form.appendChild(IdInput);

		var brandInput = document.createElement("input");
		brandInput.type = "hidden";
		brandInput.name = "brand";
		brandInput.value = brand;
		form.appendChild(brandInput);

		var modelInput = document.createElement("input");
		modelInput.type = "hidden";
		modelInput.name = "model";
		modelInput.value = model;
		form.appendChild(modelInput);

		document.body.appendChild(form);
		form.submit();
	}
</script>
</head>
<body>
	<jsp:include page="header.jsp" />

	<h1>Car Catalog</h1>
	<div class="catalog-container">
		<c:forEach var="car" items="${carList}">
			<div class="catalog-item"
				onclick="redirectToOption('${car.id}','${car.brand}', '${car.model}')">
				<img src="img/carList/${car.model}.png" alt="${car.model} Image">
				<div class="catalog-item-description">
					<p>${car.id}</p>

				</div>
			</div>
		</c:forEach>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>

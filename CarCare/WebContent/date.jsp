<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Date Input Example</title>

<style>
body {
	font-family: 'Arial', sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
	text-align: center;
}

h1 {
	background-color: #333;
	color: white;
	padding: 20px;
	margin: 0;
	text-align: center;
}

form {
	margin: 20px auto;
	width: 50%;
	padding: 20px;
	background-color: white;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	min-height: 200px;
}

label {
	display: block;
	margin-bottom: 10px;
}

input[type="date"] {
	width: 100%;
	padding: 10px;
	margin-bottom: 15px;
	box-sizing: border-box;
}

button {
	background-color: #4CAF50;
	color: white;
	padding: 10px 20px;
	margin-top: 40px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

button:hover {
	background-color: #45a049;
}
</style>

<script>
	const dateInput = document.getElementById('inputDate');
	const date = new Date();
	const year = date.getFullYear();
	const month = ('0' + (date.getMonth() + 1)).slice(-2);
	const day = ('0' + date.getDate()).slice(-2);
	const dateStr = `${year}-${month}-${day}`;

	function submitForm() {
		const selectedDateElement = document.getElementById("inputDate");

		if (selectedDateElement) {
			const selectedDate = selectedDateElement.value;
			const selectedId = '${id}';
			const selectedOptionId = '${optionId}';

			if (!isNaN(selectedId)) {
				var form = document.createElement("form");
				form.method = "post";
				form.action = "user.car";

				var hiddenField = document.createElement("input");
				hiddenField.type = "hidden";
				hiddenField.name = "selectedDate";
				hiddenField.value = selectedDate;
				form.appendChild(hiddenField);

				var idInput = document.createElement("input");
				idInput.type = "hidden";
				idInput.name = "id";
				idInput.value = selectedId;
				form.appendChild(idInput);

				var optionIdsInput = document.createElement("input");
				optionIdsInput.type = "hidden";
				optionIdsInput.name = "optionid";
				optionIdsInput.value = selectedOptionId;
				form.appendChild(optionIdsInput);

				document.body.appendChild(form);
				form.submit();
			} else {
				console.error("Invalid selectedId value:", selectedId);
			}
		} else {
			console.error("Element with ID 'inputDate' not found.");
		}
	}
</script>
</head>
<body>
	<jsp:include page="header.jsp" />
	<h1>Apply Date</h1>
	<form id="myForm">
		<label for="inputDate">시승 날짜 선택:</label> <input
			type="date" id="inputDate" name="selectedDate" required> <input
			type="hidden" id="inputId" name="selectedId" required> <input
			type="hidden" id="inputOptionId" name="selectedOptionId" required>
		<button type="button" onclick="submitForm()">제출</button>
	</form>

	<jsp:include page="footer.jsp" />
</body>
</html>

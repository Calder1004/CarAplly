<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="img/favicon.ico">
<script src="js/date.js" defer></script>
<title>MotionVolt</title>
<!-- 
<script>
function submitForm() {
    const form = document.getElementById("datePost");
    form.method = "post";
    form.action = "user.car";

    const optionIdInput = document.createElement("input");
    optionIdInput.type = "hidden";
    optionIdInput.name = "optionId";
    optionIdInput.value = "${optionId}";

    const idInput = document.createElement("input");
    idInput.type = "hidden";
    idInput.name = "id";
    idInput.value = "${id}";


    form.appendChild(optionIdInput);
    form.appendChild(idInput);

    // 폼 제출
    form.submit();
}
</script> -->

</head>
<jsp:include page="header.jsp" />
<body>
        <h1 class="bg-black text-white py-5 mb-0 text-center">Catalog > Option > Center > <span class="text-gray-400 font-thin">Date</span></h1>
    <div class="container mx-auto p-4">

	<form id="datePost" class="max-w-md mx-auto bg-white p-6 rounded-md shadow-md">
	    <input type="date" id="datePost" name="date" required class="mb-4 p-2 w-full border rounded-md focus:outline-none focus:border-blue-500">
	    <button type="button" onclick="submitForm('${id}', '${optionId}')" class="w-full py-2 px-4 bg-black text-white rounded-md hover:bg-blue-500 focus:outline-none focus:bg-blue-500">
	        제출
	    </button>
	</form>

    </div>
</body>
<jsp:include page="footer.jsp" />
</html>
       
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="client.vo.CenterBean"%>
<html>
<head>
<link rel="shortcuticon" href="img/favicon.ico">
<script src="https://cdn.tailwindcss.com"></script>
<script>
	function submit(id, optionId) {
		var form = document.createElement("form");
		form.method = "post";
		form.action =  "date.car";

		var idInput = document.createElement("input");
		idInput.type = "hidden";
		idInput.name = "id";
		idInput.value = id;
		form.appendChild(idInput);

		var optionIdsInput = document.createElement("input");
		optionIdsInput.type = "hidden";
		optionIdsInput.name = "optionId";
		optionIdsInput.value = optionId;
		form.appendChild(optionIdsInput);

		document.body.appendChild(form);
		form.submit();
	}
</script>

</head>
<body>
	<jsp:include page="test333.jsp" />
		<h1 class="bg-black text-white py-5 mb-0 text-center">Catalog > Option > <span class="text-gray-400 font-thin">Center</span> </h1>
	<div class="flex container mx-auto">
	<div class="w-full sm:w-1/2 p-4">
	    <div class="bg-black text-white h-300 rounded-md overflow-hidden">
	        <img src="img/carList/RX350h.png" class="w-full h-full object-cover" alt="Car Image">
	    </div>
	</div>	
	<c:if test="${not empty center}">
		<div class="w-3/4 grid grid-cols-gap-4">
		    <c:forEach var="center" items="${center}">
		    <div class="border rounded-md text-black p-4 cursor-pointer hover:bg-black transform transition-transform duration-200 hover:scale-105 hover:text-white mb-1 mt-2"onclick="submit('${center.id}','${optionId}')">
		            <p class="text-xl font-bold mb-2">${center.name}</p>
		            <p class="text-xs mb-2">${center.address}</p>
		            <p class="text-xs"><span>전화번호:</span>${center.number}</p>
		     </div>
		    </c:forEach>
		</div>
	</c:if>
	</div>
	<jsp:include page="footertest.jsp" />
</body>
</html>

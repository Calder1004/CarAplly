<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="client.vo.CenterBean"%>

<html>
<head>
<link rel="shortcuticon" href="img/favicon.ico">
<title>MotionVolt</title>
<style>
body {
	font-family: 'Arial', sans-serif;
	background-color: #f4f4f4;
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

.popup-wrapper {
	margin: 50px 20%;
}

.locations-header {
	display: flex;
	justify-content: center;
	margin-bottom: 10px;
}

.locations {
	list-style: none;
	padding: 0;
	margin: 0;
	border-bottom: 3px solid #555; /* 지역 탭 아래 보더 추가 */
}

.locations li {
	display: inline-block;
	padding: 5px 15px;
	margin-right: 2px; /* 탭 간격 조정 */
	cursor: pointer;
	border: 1px solid #ddd;
	background-color: #f9f9f9;
	color: #555;
	font-weight: bold;
}

.locations li.selected {
	background-color: #e2e2e2;
	color: #333;
}

.center-list {
	width: 100%;
	border-collapse: collapse;
	margin: 20px 0;
}

.center-list th, .center-list td {
	border: 1px solid #ddd;
	padding: 8px;
	background-color: #fff;
}

.center-list th {
	background-color: #f2f2f2;
}

.center-list th:last-child, .center-list td:last-child {
	background-color: #e2e2e2;
}

.center-list th {
	width: 15%;
}

.center-list th:nth-child(2) {
	width: 60%;
}

.center-list th:last-child, .center-list td:last-child {
	width: 10%;
	text-align: center;
}

.submit-button {
	padding: 8px 16px;
	border: 1px solid #ddd;
	background-color: #f2f2f2;
	cursor: pointer;
	display: inline-block;
	margin: 0 auto;
}

#seoul-table, #incheon-gyeonggi-table {
	display: none; /* 기본적으로 모든 목록 숨김 */
}

#seoul-table.active, #incheon-gyeonggi-table.active {
	display: table-row-group; /* 활성화된 목록 표시 */
}

/* 서울 및 인천·경기 목록에서 숨길 행 조정 */
#seoul-table tr:nth-child(n+7), #incheon-gyeonggi-table tr:nth-child(-n+6)
	{
	display: none;
}
</style>

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

<script>
	function toggleTable(region) {
		
		// 모든 지역의 목록과 탭을 비활성화합니다.
		document.querySelectorAll('.locations li').forEach(function(li) {
			li.classList.remove('selected');
		});
		
		document.querySelectorAll('.center-list tbody').forEach(
				function(tbody) {
					tbody.style.display = 'none'; 
				});

		// 선택된 지역의 목록을 활성화하고 'selected' 클래스를 추가합니다.
		document.getElementById(region + '-table').style.display = 'table-row-group';
		document
				.querySelector('.locations li[onclick^="toggleTable"][onclick*="'
						+ region + '"]').classList.add('selected');
	}

		// 페이지 로드 시 서울 탭을 활성화합니다.
	document.addEventListener('DOMContentLoaded', function() {
		toggleTable('seoul');
	});
</script>

</head>
<body>
	<jsp:include page="test333.jsp" />
		<h1 class="bg-black text-white py-5 mb-0 text-center">Catalog > Option > <span class="text-gray-400 font-thin">Center</span> </h1>
	<c:if test="${not empty center}">
		<div class="popup-wrapper">
			<div class="locations-header">
				<ul class="locations">
					<li class="selected" onclick="toggleTable('seoul')">서울</li>
					<li onclick="toggleTable('incheon-gyeonggi')">인천·경기</li>
				</ul>
			</div>
			<table class="center-list">
				<thead>
					<tr>
						<th>지점명</th>
						<th>주소</th>
						<th>번호</th>
						<th>선택</th>
					</tr>
				</thead>

				<tbody id="seoul-table" class="active">
					<c:forEach var="center" items="${center}">
						<tr class="centerRow ">
							<td>${center.name}</td>
							<td>${center.address}</td>
							<td>${center.number}</td>
							<td><input type="hidden" name="centerId" value="1">
								<input onclick="submit('${center.id}', '${optionId}')"
								type="button" class="submit-button" value="선택"></td>
						</tr>
					</c:forEach>
				</tbody>
				<tbody id="incheon-gyeonggi-table">
					<c:forEach var="center" items="${center}">
						<tr class="centerRow">
							<td>${center.name}</td>
							<td>${center.address}</td>
							<td>${center.number}</td>
							<td><input type="hidden" name="centerId" value="1">
								<input onclick="submit('${center.id}', '${optionId}')"
								type="button" class="submit-button" value="선택"></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</c:if>
	<jsp:include page="footertest.jsp" />
</body>
</html>
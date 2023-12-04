<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="javax.servlet.http.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
</head>
<style>
* {
	margin: 0;
	padding: 0;
	list-style-type: none;
	text-decoration: none;
}

a {
	text-decoration: none;
	color: #999999;
}

a:hover {
	color: white;
}

.container {
	display: flex;
}

.left {
	width: 150px;
	background-color: #333;
	color: #fff;
	padding: 20px;
	min-height: 100vh;
}

.left ul li {
	font-size: 14px;
	font-weight: bold;
	margin: 10px;
}

.right {
	background-color:#f5f5dc;
	flex-grow: 1;
}

.title {
	font-size: 36px;
	padding: 20px;
	font-weight: bold;
	background-color: #808080;
	color: white;
}

.content {
	padding: 20px;
	background-color: #f29886;
	font-weight: bold;
}

.inner {
	padding: 20px;
	background-color: #f5f5dc;
	min-height: 100vh;
}
</style>
<style>
/* ... (previous styles) ... */
.data-table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
}

.data-table th, .data-table td {
	padding: 10px;
	border: 1px solid #ddd;
	text-align: left;
}

.data-table th {
	background-color: #333;
	color: white;
}

.data-table tbody tr:nth-child(even) {
	background-color: #f5f5dc;
}

.data-table td .btn-container {
	display: flex;
}

.data-table td .btn-container input[type="button"] {
	margin-right: 5px;
	padding: 5px 10px;
	cursor: pointer;
	background-color: #4CAF50;
	color: white;
	border: none;
	border-radius: 3px;
}

.data-table td .btn-container input[type="button"]:hover {
	background-color: #45a049;
}

.data-table td .btn-container input[type="button"]:last-child {
	background-color: #f44336;
}

.data-table td .btn-container input[type="button"]:last-child:hover {
	background-color: #d32f2f;
}

<style>
    .modal {
        display: none;
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, 0.7);
    }

    .modal-content {
        background-color: #fefefe;
        margin: 10% auto;
        padding: 20px;
        border: 1px solid #888;
        width: 80%;
    }

    #editForm {
        display: grid;
        gap: 10px;
    }

    #editForm label {
        font-weight: bold;
    }

    #editForm input {
        padding: 8px;
        font-size: 14px;
        width: 100%;
    }

    #editForm button {
        padding: 10px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 3px;
        cursor: pointer;
    }

    #editForm button:hover {
        background-color: #45a049;
    }

    .edit-btn {
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 3px;
        cursor: pointer;
        padding: 8px;
    }

    .edit-btn:hover {
        background-color: #45a049;
    }

    .edit-row:hover {
        background-color: #f0f0f0;
    }
    
    .welcometo {
    	text-align:center;
    }
</style>

</style>


</head>
<body>
	<div class="container">
		<div class="left">
			<h2>${userRole}님</h2>
			<ul>
				<li><a href="adminSelect.car">[1]예약조회 및 관리</a></li>
				<li><a href="#">[2]모델조회 및 등록</a></li>
			</ul>
		</div>
		<div class="right">
			<div class="title">${userRole}님의관리자 페이지</div>
			<div class="content">영역구분/유동적으로 메뉴 불러오는 부분</div>

			<c:if test="${list != null}">
				<div class="inner">
					<table class="data-table">
						<thead>
							<tr>
								<th>예약번호</th>
								<th>날짜</th>
								<th>모델</th>
								<th>신청자이름</th>
								<th>CC</th>
								<th>색상</th>
								<th>등급</th>
								<th>KM</th>
								<th>가격</th>
								<th>예약상태</th>
								<th>관리</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="select" items="${list}">
								<tr>
									<td>${select.id}</td>
									<td>${select.date}</td>
									<td>${select.model}</td>
									<td>${select.name}</td>
									<td>${select.cc}</td>
									<td>${select.color}</td>
									<td>${select.grade}</td>
									<td>${select.km}</td>
									<td>${select.price}</td>
									<td>${select.state}</td>
									<td>
										<div class="btn-container">
											<form action="AdminUpdateForm.car" method=post>
												<input type="hidden" name="id"
													value="${String.valueOf(select.id)}"> <input
													type="submit" value="수정">
											</form>
											<form action="">
												<input type="button" value="삭제"></input>
											</form>
										</div>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</c:if>
			<c:if test="${ bean != null}">
				<p class="welcometo">예약번호: ${bean.id},${bean.name},님이 대기중입니다.</p>
				<div class="modal" id="editModal">
					<div class="modal-content">
						<form id="editForm" action="adminUpdate.car" method="post">
							<label for="editId">예약번호:</label> 
							<input type="text" id="editId" name="id" value="${bean.id}" readonly>
							<label for="editDate">예약날짜:</label> 
							<input type="text" id="editDate"name="date" value="${bean.date}">
<!-- 							<label for="editOptionId">모델변경:</label>
							<select name="carIds" id="editOptionId">
							    <option selected>모델선택</option>
							    <option value="1">LS500H</option>
							    <option value="2">LS500</option>
							    <option value="3">ES300</option>
							    <option value="4">ES300h</option>
							    <option value="5">RX350h</option>
							    <option value="6">RX500h</option>
							    <option value="7">RZ450e</option>
							    <option value="8">NX350h</option>
							    <option value="9">NX450h+</option>
							</select> -->
							<label for="editOptionId">옵션변경:</label>
							<select name="carId" id="editOptionId">
							    <option selected>옵션선택</option>
							    <option value="1">ID:1 COLOR:SONIC IRIDIUM : CC 3456 : KM:9 PRICE:174030.00</option>
							    <option value="2">ID:2 GRAPHITE BLAK</option>
							    <option value="3">ID:3 LUNAR LUSTER</option>
							    <option value="4">ID:4 SONIC TITANIUM</option>
							    <option value="5">ID:5 SONIC QUARTZ</option>
							    <option value="6">ID:6 HEAT BLUE CONTRAS</option>
							    <option value="7">ID:7 GRAPAHITE BLACK</option>
							    <option value="8">ID:8 DEEP BLUE MIKA</option>
							    <option value="9">ID:9 SONIC COOPER</option>
							</select>
							<label for="editModel">모델:</label> 
							<input type="text" id="editModel"name="model" value="${bean.model}" readonly>
							<label for="editName">이름:</label> 
							<input type="text" id="editName"name="name" value="${bean.name}" readonly>
							<label for="editPrcie">State</label> 
							<input type="text" id="editState"name="state" value="${bean.state}">
							<button type="submit">수정</button>
						</form>
					</div>
				</div>
			</c:if>
		</div>
</body>
</html>
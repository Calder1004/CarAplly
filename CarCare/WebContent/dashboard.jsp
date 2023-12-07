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
<link rel="shortcut icon" href="img/favicon.ico">
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
	font-family: 'Noto Sans KR', sans-serif;
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
.btn-container input[type="submit"][value="삭제"] {
        margin-right: 5px;
        padding: 5px 10px;
        cursor: pointer;
        background-color: #f44336; /* 삭제 버튼 배경색 */
        color: white;
        border: none;
        border-radius: 3px;
    }

.btn-container input[type="submit"][value="삭제"]:hover {
        background-color: #d32f2f; /* 삭제 버튼 hover 시 배경색 */
    }
    
.btn-container input[type="submit"] {
    margin-right: 5px;
    padding: 5px 10px;
    cursor: pointer;
    background-color: #4CAF50; /* 수정 버튼 배경색 */
    color: white;
    border: none;
    border-radius: 3px;
  }

 .btn-container input[type="submit"]:hover {
    background-color: #45a049; /* 수정 버튼 hover 시 배경색 */
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
        border-radius: 20px;
        cursor: pointer;
        padding: 8px 16px;
        transition: background-color 0.3s ease;
    }

    .edit-btn:hover {
        background-color: #45a049;
    }
    
        .data-table-prdList {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }

    .data-table-prdList th, .data-table-prdList td {
        padding: 10px;
        border: 1px solid #ddd;
        text-align: left;
    }

    .data-table-prdList th {
        background-color: #333;
        color: white;
    }

</style>
<style>
    .data-table-prdList {
        width: 90%; /* 전체 화면의 90%만 차지하도록 수정 */
        margin: 20px auto; /* 가운데 정렬 및 위 아래 여백 추가 */
        border: 1px solid #ddd; /* 테두리 추가 */
        border-collapse: collapse;
    }

    .data-table-prdList th, .data-table-prdList td {
        padding: 10px;
        border: 1px solid #ddd;
        text-align: left;
    }

    .data-table-prdList th {
        background-color: #333;
        color: white;
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
				<li><a href="adminProductSelect.car">[2]등록된 자동차 조회</a></li>
				<li><a href="adminBrandWriteForm.car">[3]브랜드 등록</a></li>
				<li><a href="adminModelWriteForm.car">[4]모델 등록</a></li>
				<li><a href="adminCarOptionWriteForm.car">[5]자동차 옵션 등록</a>
				<li><a href="adminBrandSelect.car">[6]브랜드조회테스트</a><li>
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
											<form action="adminUpdateForm.car" method=post>
												<input type="hidden" name="id"
													value="${String.valueOf(select.id)}"> 
												<input type="submit" value="수정">
											</form>
											<form action="adminDelete.car">
												<input type="hidden" name="id" value="${String.valueOf(select.id)}">
												</input>
												<input type="submit" value="삭제">
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
				<div class="modal" id="editModal">
					<div class="modal-content">
						<form id="editForm" action="adminUpdate.car" method="post">
							<label for="editId">예약번호:</label> 
							<input type="text" id="editId" name="id" value="${bean.id}" readonly>
							<label for="editDate">예약날짜:</label> 
							<input type="text" id="editDate"name="date" value="${bean.date}">
							<label for="editOptionId">모델/옵션변경:</label>
							<select name="carId" id="editOptionId">
							    <option selected>모델/옵션선택</option>
							    <option value="1">모델:LS500 색상:SONIC IRIDIUM  #CC 3456 : #KM:9 #가격:174030.00 #GRADE:PLATINUM</option>
							    <option value="2">모델:LS500 색상:GRAPHITE BLAK </option>
							    <option value="3">모델:ES300 색상:LUNAR LUSTER</option>
							    <option value="4">모델:ES300 색상:SONIC TITANIUM</option>
							    <option value="5">모델:ES300H 색상:SONIC QUARTZ</option>
							    <option value="6">Option ID:6 색상:HEAT BLUE CONTRAS</option>
							    <option value="7">Option ID:7 색상:GRAPAHITE BLACK</option>
							    <option value="8">Option ID:8 색상:DEEP BLUE MIKA</option>
							    <option value="9">Option ID:9 색상:SONIC COOPER</option>
							</select>
							<label for="editModel">현재 모델:</label> 
							<input type="text" id="editModel"name="model" value="${bean.model}" readonly>
							<label for="editName">이름:</label> 
							<input type="text" id="editName"name="name" value="${bean.name}" readonly>
							<label for="editState">예약상태</label> 
							<input type="text" id="editState"name="state" value="${bean.state}">
							<button type="submit" class="edit-btn">수정</button>
						</form>
					</div>
				</div>
			</c:if>
				<c:if test="${prdList != null and prdList != ''}">
				    <table class="data-table-prdList">
				        <thead>
				            <tr>
				            	<th>브랜드</th>
				                <th>모델</th>
				                <th>색상</th>
				                <th>CC</th>
				                <th>KM</th>
				                <th>가격</th>
				                <th>등급</th>
				            </tr>
				        </thead>
				        <tbody>
				            <c:forEach var="items" items="${prdList}">
				                <tr>
				                	<td>${items.brand}</td>
				                    <td>${items.model}</td>
				                    <td>${items.color}</td>
				                    <td>${items.cc}</td>
				                    <td>${items.km}</td>
				                    <td>${items.price}</td>
				                    <td>${items.grade}</td>
				                </tr>
				            </c:forEach>
				        </tbody>
				    </table>
				</c:if>
			</div>
		</div>
</body>
</html>
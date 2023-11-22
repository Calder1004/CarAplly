<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="vo.CenterBean" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Center List</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            text-align: center;
        }

        h2 {
            background-color: #333;
            color: white;
            padding: 20px;
            margin: 0;
        }

        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
            background-color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 12px;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #f5f5f5;
        }

        a {
            display: inline-block;
            padding: 10px 20px;
            text-decoration: none;
            background-color: #4CAF50;
            color: white;
            border-radius: 4px;
            margin-top: 20px;
        }

        a:hover {
            background-color: #45a049;
        }
    </style>
    
</head>
<body>
    <c:if test="${not empty center}">
        <h2>Center List</h2>
        <form id="centerForm" action="date.car" method="post">
            <table>
                <thead>
                    <tr>
                        <th>Center Name</th>
                        <th>Center Address</th>
                        <th>Center Number</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="center" items="${center}">
                        <tr class="centerRow" onclick="submitForm(this)" data-name="${center.name}" data-address="${center.address}" data-number="${center.number}">
                            <td>${center.name}</td>
                            <td>${center.address}</td>
                            <td>${center.number}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <input type="hidden" id="selectedName" name="selectedName">
            <input type="hidden" id="selectedAddress" name="selectedAddress">
            <input type="hidden" id="selectedNumber" name="selectedNumber">
        </form>

        <script>
            function submitForm(clickedRow) {
                var name = clickedRow.getAttribute('name');
                var address = clickedRow.getAttribute('address');
                var number = clickedRow.getAttribute('number');

                // 선택된 행의 데이터를 숨겨진 필드에 설정
                document.getElementById('selectedName').value = name;
                document.getElementById('selectedAddress').value = address;
                document.getElementById('selectedNumber').value = number;

                // 폼 제출
                document.getElementById('centerForm').submit();
            }
        </script>
    </c:if>
</body>

</html>
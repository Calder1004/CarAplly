<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="vo.CarListBean" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Car List</title>
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

        table {
            border-collapse: collapse;
            width: 50%;
            margin: 40px auto;
            background-color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 50px;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #3498db;
            color: white;
            cursor: pointer;
        }
    </style>

    <script>
        function redirectToOption(id,brand, model) {

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

        function addHoverEffect(row) {
            row.style.backgroundColor = "#f5f5f5";
        }

        function removeHoverEffect(row) {
            row.style.backgroundColor = "";
        }
    </script>
</head>
<body>
<jsp:include page="header.jsp" />

   <h1>Car List</h1>
<table>
        <tr>
            <th>Brand</th>
            <th>Model</th>
            <th>Model Images</th>
        </tr>
          <tbody>
        <c:forEach var="car" items="${carList}">
          <tr onclick="redirectToOption('${car.id}','${car.brand}', '${car.model}')"
              onmouseover="addHoverEffect(this)"
              onmouseout="removeHoverEffect(this)">
            <td>${car.brand}</td>
            <td>${car.model}</td>
            <td>
              <img src="img/carList/${car.model}.png"
                   alt="${car.model} Image 1" style="width: 420px; height: 250px;">
            </td>
          </tr>
        </c:forEach>
    </tbody>
</table>
<jsp:include page="footer.jsp"/>
</body>
</html>






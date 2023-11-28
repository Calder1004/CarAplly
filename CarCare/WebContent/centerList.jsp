<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="vo.CenterBean" %>

<html>
<head>
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

    </style>

<script>
    function submitForm(id, optionid) {
        var form = document.createElement("form");
        form.method = "post";
        form.action = "date.car";

        var idInput = document.createElement("input");
        idInput.type = "hidden";
        idInput.name = "id";
        idInput.value = id;
        form.appendChild(idInput);

        var optionIdsInput = document.createElement("input");
        optionIdsInput.type = "hidden";
        optionIdsInput.name = "optionid";
        optionIdsInput.value = optionid; 
        form.appendChild(optionIdsInput);

        document.body.appendChild(form);
        form.submit();
    }
</script>
</head>
<body>
<jsp:include page="header.jsp" />
    <c:if test="${not empty center}">
        <h1>Center List</h1>
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
                    <tr class="centerRow" onclick="submitForm('${center.id}', '${optionid}')">
                        <td>${center.name}</td>
                        <td>${center.address}</td>
                        <td>${center.number}</td>
                    </tr>
                </c:forEach>

            </tbody>
        </table>
    </c:if>
<jsp:include page="footer.jsp"/>
</body>

</html>
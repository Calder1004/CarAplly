<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Brand List</title>
</head>
<body>
	<c:out value="${ brandList['1']}"/>
	<c:out value="${ modelList['1']}"/>
	<form action="adminBrandWrite.car" method=post>
	  <h2>브랜드등록</h2>
		<input type="text" name="name"></input>
		<button type="submit">등록</button>
	</form>
	<form action="adminModelWrite.car" method=post>
	   <h2>모델등록</h2>
	    <label for="brand">브랜드:</label>
        <select id="brand" name="carBrandId">
            <c:forEach var="brandMap" items="${brandList}">
                <c:forEach var="entry" items="${brandMap}">
                    <option value="${entry.key}">${entry.value}</option>
                </c:forEach>
            </c:forEach>
        </select>
	     <label for="model">모델:</label>
	    <input type="text" name="name"></input>
	    <button type="submit">등록</button>
    </form>
    <h2>자동차옵션등록</h2>
    <form action="adminCarOptionWrite.car" method=post>
	    <label for="model">모델:</label>
        <select id="brand" name="carId">
            <c:forEach var="ModelMap" items="${modelList}">
                <c:forEach var="entry" items="${ModelMap}">
                    <option value="${entry.key}">${entry.value}</option>
                </c:forEach>
            </c:forEach>
        </select>
	    <br>
	    색상:<input type="text" name="color"></input>
	    <br>
	    CC:<input type="number" name="cc"></input>
	    	    <br>
	    KM:<input type="number" name="km"></input>
	    	    <br>
	    가격:<input type="number" name="price"></input>
	    	    <br>
	    등급:<input type="text" name="grade"></input>
	    	    <br>	
	    <button type="submit">등록</button>
    </form>
    
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="addProduct.jsp" method="post">
    <!-- 브랜드 선택 -->
    <label for="brand">브랜드:</label>
    <select id="brand" name="brand">
        <option value="1">렉서스</option>
        <option value="2">벤츠</option>
    </select>
    
    <!-- 차종 선택 -->
    <label for="car">차종:</label>
    <select id="car" name="car">
        <option value="1">car1</option>
        <option value="2">car2</option>
        <!-- 추가적인 차종 옵션을 필요에 따라 추가 -->
    </select>

    <!-- 옵션 값 입력 -->
    <label for="test">옵션:</label>
    <input type="text" id="test" name="color">
	<input type="text" id="test" name="cc">
	<input type="text" id="test" name="km">
	<input type="text" id="test" name="price">
	<input type="text" id="test" name="grade">
    <!-- 추가적인 옵션 값 입력 필드들을 필요에 따라 추가 -->

    <input type="submit" value="등록">
</form>
</body>
</html>
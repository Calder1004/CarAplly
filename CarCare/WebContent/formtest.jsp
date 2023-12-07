<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="adminBrandWrite.car" method=post>
	  <h2>브랜드등록</h2>
		<input type="text" name="name"></input>
		<button type="submit">등록</button>
	</form>
	
	<form action="adminModelWrite.car" method=post>
	   <h2>모델등록</h2>
	    <label for="brand">브랜드:</label>
	    <select id="brand" name="carBrandId">
	        <option value="1">렉서스</option>
	        <option value="2">현대</option>
	        <option value="3">벤츠</option>
	    </select>
	     <label for="model">모델:</label>
	    <input type="text" name="name"></input>
	    <button type="submit">등록</button>
    </form>
    <h2>자동차옵션등록</h2>
    <form action="adminCarOptionWrite.car" method=post>
	    <label for="model">모델:</label>
	    <select id="model" name="carId">
	        <option value="1">LS500h</option>
	        <option value="2">LS500</option>
	        <option value="3">ES300</option>
	        <option value="4">ES300h</option>
	        <option value="5">RX350h</option>
	        <option value="6">RX500h</option>
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

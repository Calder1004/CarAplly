<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Test Drive Form</title>
</head>
<body>
    <h2>Test Drive Form</h2>
    
    <form action="testdrive.car" method="post">
        <!-- center_id, user_id, car_id를 입력받음 -->
        <label for="centerId">Center ID:</label>
        <input type="text" id="centerId" name="center_id" required><br>
        
        <label for="userId">User ID:</label>
        <input type="text" id="userId" name="user_id" required><br>
        
        <label for="carId">Car oPTION ID:</label>
        <input type="text" id="carId" name="car_id" required><br>

        <!-- date를 입력받음 -->
        <label for="date">Reservation Date:</label>
        <input type="date" id="date" name="date" required><br>

        <!-- Submit 버튼 -->
        <input type="submit" value="Submit">
    </form>
</body>
</html>
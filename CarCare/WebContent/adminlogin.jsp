<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>AdminPage Form</title>
</head>
<body>
    <h1>Login</h1>
    <form action="adminCheck.car" method="post">
        <label for="username">관리자아이디:</label>
        <input type="text" id="username" name="username" required>
        <br>
        <label for="password">관리자비번:</label>
        <input type="password" id="password" name="password" required>
        <br>
        <input type="submit" value="Login">
    </form>
</body>
</html>
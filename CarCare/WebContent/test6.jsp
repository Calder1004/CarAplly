<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Test Page</title>
</head>
<body>
    <table>
        <tr>
            <th>ID:</th>
            <td>${kakaoid}</td>
        </tr>
        <tr>
            <th>Nickname:</th>
            <td>${nickname}</td>
        </tr>
        <tr>
            <th>Connected At:</th>
            <td>${connected_at}</td>
        </tr>
    </table>
</body>
</html>

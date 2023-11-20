<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="db.dbConn" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Database Connection Test</title>
</head>
<body>
    <h1>Database Connection Test</h1>

    <% 
    Connection con = null;
    try {
        con = dbConn.getConnection();
        if (con != null) {
            out.println("<p style='color: green;'>연결 성공</p>");
        } else {
            out.println("<p style='color: red;'>연결 실패</p>");
        }
    } catch (Exception e) {
        out.println("<p style='color: red;'>연결 실패: " + e.getMessage() + "</p>");
    } finally {
        dbConn.close(con);
    }
    %>
</body>
</html>

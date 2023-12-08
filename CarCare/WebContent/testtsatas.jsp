<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <script type="text/javascript" src="https://unpkg.com/pdfobject@2.2.12/pdfobject.js"></script>
    <title>PDF Viewer</title>
</head>
<body>
    <div id="example1" style="height: 1000px;"></div>
    <script>PDFObject.embed("./aaaa.pdf", "#example1");</script>
</body>
</html>
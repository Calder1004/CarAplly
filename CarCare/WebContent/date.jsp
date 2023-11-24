<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Date Input Example</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            text-align: center;
        }

        form {
            margin: 20px auto;
            width: 50%;
            padding: 20px;
            background-color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        input[type="date"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            box-sizing: border-box;
        }

        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>

<script>
    const date = new Date();
    const year = date.getFullYear();
    const month = ('0' + (date.getMonth() + 1)).slice(-2);
    const day = ('0' + date.getDate()).slice(-2);
    const dateStr = `${year}-${month}-${day}`;
    
    function submitForm() {
       
        const selectedDate = dateStr;
        
        var form = document.createElement("form");
        form.method = "post";
        form.action = "user.car"; 

        var hiddenField = document.createElement("input");
        hiddenField.type = "hidden";
        hiddenField.name = "selectedDate";
        hiddenField.value = selectedDate;
        form.appendChild(hiddenField);

        document.body.appendChild(form);
        form.submit();
    }
</script>
</head>
<body>
    <form onsubmit="event.preventDefault(); submitForm();">
        <label for="inputDate">Select a Date:</label>
        <input type="date" id="inputDate" name="selectedDate" required>
        <button type="submit">Submit</button>
        <p>${id}</p>
        <p>${optionId}</p>
    </form>
</body>
</html>

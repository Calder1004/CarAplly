<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .inputArea {
        max-width: 400px;
        margin: 20px auto;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 8px;
    }

    .dynamicInputContainer {
        display: flex;
        align-items: center;
        gap: 10px;
    }

    #brandInput {
        flex-grow: 1;
    }

    button {
        padding: 8px 12px;
        cursor: pointer;
        border: none;
        border-radius: 4px;
    }

    #submitButton {
        background-color: #4caf50;
        color: white;
    }
</style>
</head>
<body>
<form role="form" method="post" autocomplete="off">

<div class="inputArea">
    <label><b>브랜드 등록</b></label>
    <div class="dynamicInputContainer" id="dynamicInputContainer">
        <!-- Initially, show the input for brand -->
        <input type="text" id="brandInput" name="categoryName" placeholder="Enter value" required>
        <button type="button" onclick="addInput()">(+)</button>
        <button type="button" onclick="resetInput()">(-)</button>
    </div>
    <br>
    <!-- Additional form elements can be added here -->
    <button type="submit" id="submitButton" disabled>등록</button>
</div>

<div class="inputArea">
    <label><b>모델 등록</b></label>
    <div class="dynamicInputContainer" id="dynamicInputContainer">
        <!-- Initially, show the input for brand -->
        <input type="text" id="brandInput" name="categoryName" placeholder="Enter value" required>
        <button type="button" onclick="addInput()">(+)</button>
        <button type="button" onclick="resetInput()">(-)</button>
    </div>
    <br>
    <!-- Additional form elements can be added here -->
    <button type="submit" id="submitButton" disabled>등록</button>
</div>

<script>
    var isInputAdded = false;

    function addInput() {
        // Get the container and brand input element
        var container = document.getElementById('dynamicInputContainer');
        var brandInput = container.querySelector('#brandInput');

        // Check if the input has a value and no input has been added yet
        var inputValue = brandInput.value.trim();

        if (inputValue !== '' && !isInputAdded) {
            // Create a new form element
            var newForm = document.createElement('form');
            newForm.action = 'AddCategoryServlet'; // Set your form action
            newForm.method = 'post'; // Set your form method

            // Create a new input element
            var newInput = document.createElement('input');
            newInput.type = 'text';
            newInput.name = 'categoryName';
            newInput.value = inputValue;
            newInput.placeholder = 'Enter value';
            newInput.required = true;
            newInput.readOnly = true;

            // Append the input to the new form
            newForm.appendChild(newInput);

            // Append the new form to the container
            container.appendChild(newForm);

            // Clear the original input for the next value
            brandInput.value = '';

            // Mark that an input has been added
            isInputAdded = true;

            // Enable the submit button
            document.getElementById('submitButton').disabled = false;
        }
    }

    function resetInput() {
        // Get the container and brand input element
        var container = document.getElementById('dynamicInputContainer');
        var brandInput = container.querySelector('#brandInput');

        // Remove the added input form
        container.innerHTML = '';

        // Re-append the original input and buttons
        container.appendChild(brandInput);
        container.innerHTML += '<button type="button" onclick="addInput()">(+)</button>';
        container.innerHTML += '<button type="button" onclick="resetInput()">(-)</button>';

        // Disable the submit button
        document.getElementById('submitButton').disabled = true;

        // Reset the state
        isInputAdded = false;
    }
</script>
<div class="inputArea">
 <label for="gdsName">자동차 KM:</label>
 <input type="text" id="gdsName" name="gdsName"  placeholder="연비를 입력하세요"/>
</div>

<div class="inputArea">
 <label for="gdsPrice">자동차 색상:</label>
 <input type="text" id="gdsPrice" name="gdsPrice" placeholder="색상을 입력하세요" />
</div>

<div class="inputArea">
 <label for="gdsPrice">자동차 CC:</label>
 <input type="text" id="gdsPrice" name="gdsPrice" placeholder="색상을 입력하세요" />
</div>

<div class="inputArea">
 <label for="gdsPrice">자동차 가격:</label>
 <input type="text" id="gdsPrice" name="gdsPrice" placeholder="색상을 입력하세요" />
</div>

<div class="inputArea">
 <label for="gdsPrice">자동차 등급:</label>
 <input type="text" id="gdsPrice" name="gdsPrice" placeholder="색상을 입력하세요" />
</div>
<div class="inputArea">
 <button type="submit" id="register_Btn" class="btn btn-primary">등록</button>
</div>

</form>
</body>
</html>
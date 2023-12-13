<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="img/favicon.ico">
<script src="js/date.js" defer></script>
<title>MotionVolt</title>

<script>
const dateInput = document.getElementById('inputDate');

function submitForm() {
   const selectedDateElement = document.getElementById("inputDate");

   if (selectedDateElement) {
      const selectedDate = selectedDateElement.value;
      const selectedId = '${id}';
      const selectedOptionId = '${optionId}';

      if (!isNaN(selectedId)) {
         var form = document.createElement("form");
         form.method = "post";
         form.action = "user.car";

         var hiddenField = document.createElement("input");
         hiddenField.type = "hidden";
         hiddenField.name = "selectedDate";
         hiddenField.value = selectedDate;
         form.appendChild(hiddenField);

         var idInput = document.createElement("input");
         idInput.type = "hidden";
         idInput.name = "id";
         idInput.value = selectedId;
         form.appendChild(idInput);

         var optionIdsInput = document.createElement("input");
         optionIdsInput.type = "hidden";
         optionIdsInput.name = "optionId";
         optionIdsInput.value = selectedOptionId;
         form.appendChild(optionIdsInput);

         document.body.appendChild(form);
         form.submit();
      } else {
         console.error("검증되지 안음:", selectedId);
      }
   } 
}

</script>
</head>
<body>
        <jsp:include page="header.jsp" />
    <div class="container mx-auto p-4">

        <h1 class="bg-black text-white py-5 mb-0 text-center">Catalog > Option > Center > <span class="text-gray-400 font-thin">Date</span></h1>

        <form id="myForm" class="mt-8">
            <label for="inputDate" class="block text-gray-700">시승 날짜 선택:</label>
            <input type="date" id="inputDate" name="selectedDate" required
                class="mt-1 p-2 border rounded-md w-full focus:outline-none focus:border-blue-500">

            <input type="hidden" id="inputId" name="selectedId" required>
            <input type="hidden" id="inputOptionId" name="selectedOptionId" required>

            <button type="button" onclick="submitForm()"
                class="mt-4 px-4 py-2 bg-blue-500 text-white rounded-md focus:outline-none hover:bg-blue-600">
                제출
            </button>
        </form>

    </div>
        <jsp:include page="footer.jsp" />
</body>
</html>

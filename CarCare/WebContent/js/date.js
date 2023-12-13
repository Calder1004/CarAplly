function submitForm() {
   const selectedDateElement = document.getElementById("inputDate");

   if (selectedDateElement) {
      const selectedDate = selectedDateElement.value;
      const selectedId = '${id}'; // session param 저장
      const selectedOptionId = '${optionId}'; // session param 저장
	  
		// 두 개의 세션 파라미터가 빈 값이 아니라면,
      if (!isNaN(selectedId) && !isNan(selectedOptionId)) {
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
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

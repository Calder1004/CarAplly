
	function submit(id, optionId) {
		var form = document.createElement("form");
		form.method = "post";
		form.action =  "date.car";

		var idInput = document.createElement("input");
		idInput.type = "hidden";
		idInput.name = "id";
		idInput.value = id;
		form.appendChild(idInput);

		var optionIdsInput = document.createElement("input");
		optionIdsInput.type = "hidden";
		optionIdsInput.name = "optionId";
		optionIdsInput.value = optionId;
		form.appendChild(optionIdsInput);

		document.body.appendChild(form);
		form.submit();
	}


	function redirectToCenter(id) {
		var form = document.createElement("form");
		form.method = "post";
		form.action = "center.car";

		var idInput = document.createElement("input");
		idInput.type = "hidden";
		idInput.name = "id";
		idInput.value = id;
		form.appendChild(idInput);

		document.body.appendChild(form);
		form.submit();
	}

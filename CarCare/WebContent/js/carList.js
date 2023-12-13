function redirectToOption(id, brand, model) {
		var form = document.createElement("form");
		form.method = "post";
		form.action = "carListOption.car";

		var IdInput = document.createElement("input");
		IdInput.type = "hidden";
		IdInput.name = "id";
		IdInput.value = id;
		form.appendChild(IdInput);

		var brandInput = document.createElement("input");
		brandInput.type = "hidden";
		brandInput.name = "brand";
		brandInput.value = brand;
		form.appendChild(brandInput);

		var modelInput = document.createElement("input");
		modelInput.type = "hidden";
		modelInput.name = "model";
		modelInput.value = model;
		form.appendChild(modelInput);

		document.body.appendChild(form);
		form.submit();
	}

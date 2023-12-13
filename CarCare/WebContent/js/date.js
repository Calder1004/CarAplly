function submitForm(id, optionId) {
    const form = document.getElementById("datePost");
    form.method = "post";
    form.action = "user.car";

    const optionIdInput = document.createElement("input");
    optionIdInput.type = "hidden";
    optionIdInput.name = "optionId";
    optionIdInput.value = optionId;

    const idInput = document.createElement("input");
    idInput.type = "hidden";
    idInput.name = "id";
    idInput.value = id;

    form.appendChild(optionIdInput);
    form.appendChild(idInput);

    form.submit();
}
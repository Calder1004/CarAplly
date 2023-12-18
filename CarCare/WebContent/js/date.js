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
function validateForm() {
    // 입력값 가져오기
    var dateInput = document.getElementById('datePost').value;

    // 빈 값 확인
    if (dateInput === '') {
        // 빈 값이면 경고 메시지 출력
        alert('날짜를 선택하세요.');
        return false; // 제출 중지
    }

    // 다른 유효성 검사 로직을 추가할 수도 있습니다.

    // 모든 유효성 검사를 통과하면 true 반환하여 제출 진행
    return true;
}
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>다단계 시승신청 폼</title>
</head>
<body>

<!-- Step 1 -->
<form id="step1Form">
    <label for="brand">브랜드:</label>
    <input type="text" id="brand" name="brand" required><br>

    <label for="model">모델:</label>
    <input type="text" id="model" name="model" required><br>

    <button type="button" onclick="nextStep(2)">다음</button>
</form>

<!-- Step 2 -->
<form id="step2Form" style="display:none;">
    <!-- 여기에 브랜드, 모델에 따라 동적으로 옵션을 추가하는 로직을 구현할 수 있습니다. -->

    <label for="center">시승센터:</label>
    <input type="text" id="center" name="center" required><br>

    <label for="date">예약날짜:</label>
    <input type="date" id="date" name="date" required><br>

    <button type="button" onclick="prevStep(1)">이전</button>
    <button type="button" onclick="nextStep(3)">다음</button>
</form>

<!-- Step 3 -->
<form id="step3Form" style="display:none;" action="FinalReservationServlet" method="post">
    <!-- 이 폼에 최종적으로 필요한 입력 항목들을 추가합니다. -->

    <button type="button" onclick="prevStep(2)">이전</button>
    <button type="submit">신청 완료</button>
</form>

<script>
    function nextStep(step) {
        document.getElementById('step' + step + 'Form').style.display = 'none';
        document.getElementById('step' + (step + 1) + 'Form').style.display = 'block';
    }

    function prevStep(step) {
        document.getElementById('step' + step + 'Form').style.display = 'none';
        document.getElementById('step' + (step - 1) + 'Form').style.display = 'block';
    }
</script>

</body>
</html>
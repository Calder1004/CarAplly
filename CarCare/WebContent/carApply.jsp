<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>시승 신청</title>
    <!-- 스타일시트 및 기타 메타 태그는 여기에 추가 -->

    <style>
      /* 기본 스타일 */
      body {
        font-family: "Arial", sans-serif;
        color: #333;
        background-color: #f4f4f4;
        margin: auto 150px;
        padding: 0;
      }

      h2 {
        color: #000;
      }

      /* 섹션 스타일 */
      section {
        padding: 20px;
        margin: 20px;
      }

      /* 양식 스타일 */
      form {
        background-color: white;
        padding: 20px;
        margin: 20px;
        border-radius: 5px;
      }

      label {
        display: block;
        margin-bottom: 5px;
      }

      input[type="text"],
      input[type="number"],
      input[type="tel"],
      input[type="date"],
      input[type="email"],
      select {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border-radius: 5px;
        border: 1px solid #ddd;
      }

      button {
        background-color: #000;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
      }

      button:hover {
        background-color: #333;
      }
      /* 기존 스타일은 그대로 유지 */

      /* 반응형 미디어 쿼리 */
      @media (max-width: 768px) {
        /* 태블릿 및 모바일 화면 크기 대응 */
        body{
            margin: auto 10px;
        }
        /* 양식과 섹션의 여백 및 패딩 조정 */
        form,
        section {
          margin: 10px;
          padding: 15px;
        }

        /* 폼 요소 크기 조정 */
        input[type="text"],
        input[type="number"],
        input[type="tel"],
        input[type="date"],
        input[type="email"],
        select,
        button {
          width: 100%;
        }
      }

      @media (max-width: 480px) {
        /* 모바일 화면 크기 대응 */

        /* 폰트 크기 조정 */
        label {
          font-size: 14px;
        }

        /* 버튼 크기 조정 */
        button {
          padding: 10px;
          font-size: 14px;
        }
      }
    </style>
  </head>
  <body>
  <jsp:include page="header.jsp"/>
    <section>
      <h2>선택한 차량</h2>
      <p>여기에 신제품 차량에 대한 설명을 추가합니다.</p>
      <img src="http://placehold.it/300X200" />
    </section>

    <form id="testDriveForm">
      <h2>시승 신청</h2>

      <label for="carModel">차량 선택:</label>
      <select id="carModel" name="carModel" required>
        <option value="lexus">렉서스</option>
        <option value="bmw">BMW</option>
        <!-- 추가 차량 옵션 -->
      </select>

      <label for="location">시승 장소:</label>
      <input type="text" id="location" name="location" required />

      <label for="companion">동승자 여부:</label>
      <select id="companion" name="companion" required>
        <option value="manager">매니저 동승</option>
        <option value="solo">개인 시승</option>
      </select>

      <label for="name">이름:</label>
      <input type="text" id="name" name="name" required />

      <label for="age">나이:</label>
      <input type="number" id="age" name="age" required />

      <label for="phone">연락처:</label>
      <input type="tel" id="phone" name="phone" required />

      <label for="birthdate">생년월일:</label>
      <input type="date" id="birthdate" name="birthdate" />

      <label for="email">이메일:</label>
      <input type="email" id="email" name="email" />

      <label for="license">면허증 유무:</label>
      <select id="license" name="license" required>
        <option value="yes">유</option>
        <option value="no">무</option>
      </select>

      <button type="submit">신청하기</button>
    </form>
    <jsp:include page="footer.jsp"/> 
  </body>
</html>

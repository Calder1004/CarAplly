<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
 
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script>
    function changeLeftImage(imageSrc, description) {
  document.getElementById('mainImage').src = imageSrc;
  document.getElementById('mainImage').alt = description;
  document.getElementById('mainImage').nextElementSibling.querySelector('p').innerText = description;
    }
  </script>

<style>

    body { 
      font-family: 'Arial', sans-serif;
      margin: 0;
      padding: 0;
    }    

    .main-content {
      display: flex;
      justify-content: center;
      align-items: flex-start;
      flex-wrap: wrap;
      padding: 50px;
    }

    .left-column,
    .right-column {
      flex: 1;
      text-align: center;
    
    }

    .left-column img {
      max-width: 70%;
      height: 50;
      border-radius: 5px;
    }

    .image-description {
      margin-top: 10px;
              
    }

    .right-column {
      flex: 1;
      text-align: center;
    }

    .image-gallery {
      display: flex;
      justify-content: space-around;
      margin-top: 20px;
    }

    .gallery-item {
      position: relative;
      cursor: pointer;
      transition: transform 0.3s;
      
    }

    .gallery-item:hover {
      transform: scale(1.1);
    }

    .gallery-item img {
      width: 200px; 
      height: 150px;
      border-radius: 30px;
    }

    .tooltip {
      position: absolute;
      bottom: 100%;
      left: 50%;
      transform: translateX(-50%);
      background-color: rgba(255, 255, 255, 0.8);
      padding: 5px;
      border-radius: 5px;
      display: none;
    }

    .gallery-item:hover .tooltip {
      display: block;
    }
</style>
</head>

<body>
	<jsp:include page="header.jsp"/>
	<!-- 중단 : 카탈로그 이미지 영역 -->
	
  <section class="main-content">
    <!--왼쪽  메인 모델 이미지 1장 -->
    <div class="left-column" id="leftColumn">
      <div class="image-wrapper">
        <img id="mainImage" src="img/mainmodel.png" alt="메인 모델 이미지"> 
        <div class="image-description">
          <p>설명1</p>
            <button type="button" onclick="location.href='/CarCare/carList.car'">시승신청 바로가기</button>
        </div>
      </div>
    </div>
                   
    <!-- 오른쪽 서브 사진 이미지 4장 : 사진 클릭시 왼쪽 메인사진 src로 사진 넘어감 -->
    
    <div class="right-column">
      <div class="image-gallery">
        <div class="gallery-item" onclick="changeLeftImage('', '설명1');">
          <img src="" alt="사진 1">
          <div class="tooltip">
            <p>사진 1 설명</p>
          </div>
        </div>

        <div class="gallery-item" onclick="changeLeftImage('img/model1.png', '설명2');"> <!--여기도 지정해야 메인 이미지로 들어감 -->
          <img src="img/model1.png" alt="사진 2"> <!--서브 이미지 주소 원본 지정위치 -->
          <div class="tooltip">
            <p>사진 2 설명</p>
          </div>
        </div>

        <div class="gallery-item" onclick="changeLeftImage('Image', '설명3');">
          <img src="" alt="사진 3">
          <div class="tooltip">
            <p>사진 3 설명</p>
          </div>
        </div>

        <div class="gallery-item" onclick="changeLeftImage('Image', '설명4');">
          <img src="" alt="사진 4">
          <div class="tooltip">
            <p>사진 4 설명</p>
          </div>
        </div>
      </div>
    </div>
  </section>
  
  <jsp:include page="footer.jsp"/>  
	
</body>
</html>			








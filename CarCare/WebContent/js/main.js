document.addEventListener("DOMContentLoaded", function () {
    const swiper = new Swiper(".swiper.content-swiper", {
        loop: true, // 무한 루프 모드를 활성화합니다.
        mousewheel: {
            invert: true, // 마우스 휠 스크롤 방향을 반전합니다.
        },
        autoplay: {
            delay: 2000, // 자동 슬라이드 쇼를 위한 시간 지연을 2초로 설정합니다.
        },
        slidesPerView: 4, // 한 번에 보이는 슬라이드 수를 4로 설정합니다.
        freeMode: true, // 자유 모드를 활성화하여 고정된 간격 없이 슬라이드를 이동할 수 있게 합니다.
        spaceBetween: 20, // 슬라이드 간의 간격을 20px로 설정합니다.
        navigation: {
            nextEl: ".swiper-button-next", // 다음 슬라이드로 이동하는 버튼을 지정합니다.
            prevEl: ".swiper-button-prev", // 이전 슬라이드로 이동하는 버튼을 지정합니다.
        },
        pagination: {
            el: ".swiper-pagination", // 페이지네이션 요소를 지정합니다.
            clickable: true, // 페이지네이션 요소를 클릭 가능하게 설정합니다.
        },
        breakpoints: {
            480: { slidesPerView: 1 }, // 화면 너비가 480px 이하일 때 슬라이드 수를 1로 설정합니다.
            768: { slidesPerView: 2 }, // 화면 너비가 768px 이하일 때 슬라이드 수를 2로 설정합니다.
            1024: { slidesPerView: 3 }, // 화면 너비가 1024px 이하일 때 슬라이드 수를 3으로 설정합니다.
        },
        watchSlidesProgress: true, // 슬라이드의 진행 상태를 감시합니다.
    }); // swiper, content-swiper 끝

    // 모든 swiper 클래스를 가진 요소에 대해 이벤트 리스너를 추가합니다.
    document.querySelectorAll(".swiper").forEach(function (el) {
        el.addEventListener("mouseover", function () {
            swiper.autoplay.stop(); // 마우스 오버 시 자동 재생을 중지합니다.
        });
        el.addEventListener("mouseout", function () {
            swiper.autoplay.start(); // 마우스 아웃 시 자동 재생을 시작합니다.
        });
    });

    // banner-swiper 클래스를 가진 요소에 대한 또 다른 Swiper 인스턴스를 생성합니다.
    const swiper2 = new Swiper(".swiper.banner-swiper", {
        loop: true, // 무한 루프 모드를 활성화합니다.
        thumbs: {
            swiper: swiper, // swiper 인스턴스를 썸네일 슬라이더로 사용합니다.
        },
        navigation: {
            nextEl: ".swiper-button-next", // 다음 슬라이드로 이동하는 버튼을 지정합니다.
            prevEl: ".swiper-button-prev", // 이전 슬라이드로 이동하는 버튼을 지정합니다.
        },
    }); // swiper2, banner-swiper 끝
});

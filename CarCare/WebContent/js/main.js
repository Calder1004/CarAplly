document.addEventListener("DOMContentLoaded", function () {
	 // swiper, content-swiper 시작
    const swiper = new Swiper(".swiper.content-swiper", {
        loop: true,
        mousewheel: {
            invert: true,
        },
        autoplay: {
            delay: 2000, // 자동 슬라이드 쇼를 위한 시간 지연
        },
        slidesPerView: 4, // 한 번에 보이는 슬라이드 수
        freeMode: true, // 자유 모드를 활성화하여 고정된 간격 없이 슬라이드를 이동
        spaceBetween: 20, // 슬라이드 간의 간격
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
        pagination: {
            el: ".swiper-pagination", // 페이지네이션 요소
            clickable: true, // 페이지네이션 요소를 클릭 가능
        },
        breakpoints: {
            480: { slidesPerView: 1 },
            768: { slidesPerView: 2 },
            1024: { slidesPerView: 3 }, // 화면 너비가 1024px 이하일 때 슬라이드 수
        },
        watchSlidesProgress: true, // 슬라이드의 진행 상태를 감시
    }); // swiper, content-swiper 끝

   
    document.querySelectorAll(".swiper").forEach(function (el) {
        el.addEventListener("mouseover", function () {
            swiper.autoplay.stop();
        });
        el.addEventListener("mouseout", function () {
            swiper.autoplay.start();
        });
    });

    // swiper2, banner-swiper 시작
    const swiper2 = new Swiper(".swiper.banner-swiper", {
        loop: true,
        autoplay: {
            delay: 3000, // 자동 슬라이드 쇼를 위한 시간 지연
        },
      
    }); // swiper2, banner-swiper 끝
});

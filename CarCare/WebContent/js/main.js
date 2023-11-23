document.addEventListener("DOMContentLoaded", function() {

    const swiper = new Swiper(".swiper.content-swiper", {
        loop: true,
        // direction: "vertical"
        mousewheel: {
            invert: true
        },
        autoplay: {
            delay: 5000
        },
        slidesPerView: 4,
        freeMode: true,
        spaceBetween: 20,
        // centeredSlides: true,
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev"
        },
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
            // type: "fraction"
        },
        breakpoints: {
            480: { slidesPerView: 1 },
            768: { slidesPerView: 2 },
            1024: { slidesPerView: 3 },
            1200: { slidesPerView: 1 },
        },
        watchSlidesProgress: true
    }); ////////////// swiper

    document.querySelectorAll(".swiper").forEach(function(el) {
        el.addEventListener("mouseover", function() {
            swiper.autoplay.stop();
        });
        el.addEventListener("mouseout", function() {
            swiper.autoplay.start();
        });
    });

    const swiper2 = new Swiper(".swiper.banner-swiper", {
        loop: true,
        thumbs: {
            swiper: swiper
        }
    });

}); ////////////// DOMContentLoaded

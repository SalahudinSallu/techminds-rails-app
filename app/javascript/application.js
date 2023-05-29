// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
// import "@hotwired/turbo-rails"
// import "controllers"


const swiper = new Swiper('.swiper', {
  slidesPerView: 4,
  slidesPerGroup: 4,
  centerInsufficientSlides: true,

  slidePrevClass: 'swiper-button__prev',
  slideNextClass: 'swiper-button__next',

  navigation: {
    nextEl: '.swiper-buttons__next',
    prevEl: '.swiper-buttons__prev',
  },
});

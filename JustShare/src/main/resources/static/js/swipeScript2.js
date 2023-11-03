/* 
var swiper = new Swiper('.swiper-container', {
		  direction: 'horizontal',
		  centeredSlides: true,
		  loop: true,
		  pagination: {
		    el: '.swiper-pagination',
		    clickable: true,
		  },
		  autoplay: {
		    delay: 2500,
		    disableOnInteraction: false,
		  },
		  // 추가 옵션들...
		  spaceBetween: 1, // 슬라이드 사이의 간격 설정
		});
*/


      var swiper = new Swiper(".mySwiper", {
        spaceBetween: 30,
		// 보여질 슬라이드 수
	 	slidesPerView : 1,
        centeredSlides: false,
		// 다음페이지로 넘어갈 때 보여질 슬라이드 수
        slidesPerGroup : 1

      });


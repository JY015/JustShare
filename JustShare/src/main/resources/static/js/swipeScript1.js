 var swiper = new Swiper(".mySwiper1", {
		  direction: 'horizontal',
		  centeredSlides: true,
		  loop: false,
          spaceBetween : 40, // 슬라이드간 간격
          slidesPerView : 1,
          slidesPerGroup : 1,
          freeMode : false, // 슬라이드 넘길 때 위치 고정 여부

          autoHeight : true, // 사진크기 자동 조절로 container가 움직임
		  pagination: {
		    el: '.swiper-pagination',
		    clickable: true,
		  },
		  autoplay: {
		    delay: 2500,
		    disableOnInteraction: false,
		  },
		 
	   
		});



		// fullpage 슬라이드 --------------------------------------------------------------------------------------------------------------
		$(document).ready(function () {
			$('#fullpage').fullpage({
				verticalCentered: false,
				scrollingSpeed: 1200, // 1000 = 1초
				keyboardScrolling: false, //키보드 스크롤 방지
				anchors:['main']
			});
			
	 //fullpage 슬라이드--------------------------------------------------------------------------------------------------------------


			// SWIPER 
			const swiper = new Swiper('.swiper', {
				// Optional parameters
				direction: 'horizontal',
				loop: true,

				// If we need pagination
				pagination: {
					el: '.swiper-pagination',
					//type: 'custom',
					clickable: true,
				},

				// Navigation arrows
				navigation: {
					nextEl: '.swiper-button-next',
					prevEl: '.swiper-button-prev',
				},
				speed : 800,
			});
		}); //ready 
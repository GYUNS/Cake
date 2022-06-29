		// fullpage 슬라이드 --------------------------------------------------------------------------------------------------------------
		$(document).ready(function () {
			$('#fullpage').fullpage({
				verticalCentered: false,
				scrollingSpeed: 1200, // 1000 = 1초
				navigation: true, // 네비게이션 버튼 활성
				navigationPosition: 'right', // 네비게이션 위치
				keyboardScrolling: false, //키보드 스크롤 방지
				anchors:['hello','guide','start'],
			}); //fullpage 슬라이드--------------------------------------------------------------------------------------------------------------


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
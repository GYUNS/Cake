// Login close ------------------------------------------------------------
            $('.loginClose').click(function () {
                const isConfirm = confirm('로그인을 취소하시겠습니까?');
                if (isConfirm) {
                    alert('로그인이 취소되었습니다.');
                    $('.modal_wrap').css('display', 'none');
                    $('.loginForm').css('display', 'none');
                    /* 폼 인풋 초기화 */
                    $('form').each(function () {
                        this.reset();
                    });
                } else {
                    $('.modal_wrap').css('display', 'block');
                    $('.loginForm').css('display', 'block')
                }
            })
            $('.loginForm_btn').click(function () {
                // $('.modal_wrap').css('display', 'block');
                // $('.loginForm').css('display', 'block')
                $('.modal_wrap').css('display', 'block');
                $('.loginForm').css('display', 'block')
            })

// Login close 종료 ------------------------------------------------------------
// joinClose ------------------------------------------------------------
            $('.joinClose').click(function () {
                if (!confirm('회원가입을 취소하시겠습니까?')) {
                    $('.modal_wrap').css('display', 'block');
                    $('.joinForm').css('display', 'block')
                } else {
                    alert('회원가입이 취소되었습니다.')
                    $('.modal_wrap').css('display', 'none');
                    $('.joinForm').css('display', 'none')
                    /* 폼 인풋 초기화 */
                    $('form').each(function () {
                        this.reset();
                    });
                }
            })
            $('.joinForm_btn').click(function () {
                $('.modal_wrap').css('display', 'block');
                $('.joinForm').css('display', 'block');
            });
// joinClose---------------------------------------
    
    
/* 페이지다운 아이콘 --------------------------------------------------------------------------------------------------------------*/
	$('#pagedown').click(function () {
		$.fn.fullpage.moveTo(2);
	})
	//pagedown


/* quick 모달메뉴 --------------------------------------------------------------------------------------------------------------*/
	var quickToggle = true;

	$('.quick_menu_btn').click(function () {

		if (quickToggle == true) {
			$('.quick_menu_box').css({
				'visibility': 'visible',
				'opacity': 1,
			}) // 메뉴박스 꺼내기
			$(this).text('close')
				.css({
					'font-size': '5rem'
				}) // 추후에 바꿔야됨 아이콘
			quickToggle = false;
		} else {
			$('.quick_menu_box').css({
				'visibility': 'hidden',
				'opacity': 0,
			}) // 메뉴박스 집어넣기
			$(this).html('<span class="material-icons "style="font-size: 5rem;">share</span>')
				.css({
					'font-size': '5rem'
				})
			quickToggle = true
		} // 종료
	}) 
//quick 모달메뉴 --------------------------------------------------------------------------------------------------------------
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>내 케이크</title>
	<!-- css -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/2.9.7/jquery.fullpage.css" />
	<link rel="stylesheet"
		href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp">
	<link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
	<link rel="stylesheet" href="resources/lib/css/reset.css">
	<link rel="stylesheet" href="resources/lib/css/icon.css">
	<link rel="stylesheet" href="resources/lib/css/invite_main_section.css">
	<style>
		body,
		html {
			width: 100%;
			height: 100%;
			background-image: url(resources/lib/images/backg.png);
			background-size: cover;
		}

		@media (max-width:1280px) {
			.header {
				width: 128rem;
			}

			#section1 div#pagedown {
				left: 61.4rem
			}
		}
	</style>
	<!-- js -->
	<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/2.9.7/jquery.fullpage.js"></script>
	<script src="resources/lib/js/invaite_main_slide.js"></script>
</head>

<body>
	<!-- 모달창 wrap ---------------------------------------------------------------------------------------------------------------->
	<div class="modal_wrap modal_wrap">
		<div class="joinForm form">
			<p>SIGN-UP</p>
			<form action="join" method="post">
				<span class="joinClose close material-icons">
					<p class="hidden">close</p>
				</span>
				<label for="id">아이디</label>
				<input type="text" name="id" id="id" placeholder="아이디를 입력하세요.">

				<label for="password">비밀번호</label>
				<input type="password" name="password" id="password" placeholder="비밀번호를 입력하세요.">

				<label for="nickname">닉네임</label>
				<input type="text" name="nickname" id="nickname" placeholder="닉네임을 입력하세요.">

				<label for="birthd">생년월일</label>
				<input type="text" name="birthd" id="birthd" placeholder="생년월일을 입력하세요. (yyyymmdd)">
				<button id="joinBtn">회원가입 하기</button>
			</form>
		</div>
		<!-- Login Form --------------------------------------------------------- -->
		<div class="loginForm form">
			<p>LOG-IN</p>	
			<form action="login" method="post">
				<span class="loginClose close material-icons">
					<p class="hidden">close</p>
				</span>
				<input type="text" name="log_id" id="log_id" placeholder="아이디를 입력하세요.">
				
				<input type="password" name="log_password" id="log_password" placeholder="비밀번호를 입력하세요.">
				<button id="loginBtn">로그인</button>
				<div class="keep_wrap">
					<input type="checkbox" name="keep" id="keep" value="off">
					<label for="keep">로그인 상태 유지하기</label>
				</div>
				<button>회원가입 하러가기</button>
			</form>
		</div>
	</div>
	<!-- // Login Form 종료 --------------------------------------------------------- -->
	<!-- // 모달창 wrap 종료 -->
	<!-- header ---------------------------------------------------------------------------------------------------------------->
	<header class="header">
		<div class="logo_wrap">
			<div class="logo">
				<h1 class="hidden">로고</h1>
				<a href="index.html"></a>
			</div>
		</div>
		<ul class="main_menu">
			<h2 class="hidden">메인메뉴</h2>
				<li class="material-icons"><a href="#">소개</a></li>
				<li class="material-icons"><a href="#">공지사항</a></li>
				<li class="material-icons"><a href="#">Q&A</a></li>
		</ul>
		<ul class="user_menu">
			<h2 class="hidden">유저메뉴</h2>
			<c:if test="${empty LoginID}">
				<li class="loginForm_btn">
					<span class="material-icons" style="font-size: 2rem;">celebration</span>
					<span>Login</span>
				</li>
				<li class="joinForm_btn">
					<span class="material-icons" style="font-size: 2rem;">cake</span>
					<span>SignUp</span>
				</li>
			</c:if>
	
			<c:if test="${not empty LoginID}">	
				<li class="cakeView">
					<span>cakeView</span></span>
				</li>
				<li class="logout">
					<span>Logout</span>
				</li>
			</c:if>
		</ul>
	</header>
	<!-- //header 종료 ---------------------------------------------------------------------------------------------------------------->
	<div id="fullpage">
		<!-- 스와이퍼 ---------------------------- -->
		<div class="section" id="section1" data-anchor="main">
			<div class="slide" id="slide1" data-anchor="view">
				<!-- Slider main container -->
				<div class="swiper">
					<!-- Additional required wrapper -->
					<div class="swiper-wrapper">
						<!-- Slides -->
						<!-- 처음에 선택한 케이크 페이징 해야함-->
						<div class="swiper-slide">
							<div class="cake">
								<div class="decorationBox" id="decoration1">

								</div>
								<div class="decorationBox" id="decoration2">

								</div>
								<div class="decorationBox" id="decoration3">

								</div>
								<div class="decorationBox" id="decoration4">

								</div>
								<div class="decorationBox" id="decoration5">

								</div>
								<div class="decorationBox" id="decoration6">

								</div>
								<div class="decorationBox" id="decoration7">

								</div>
								<div class="decorationBox" id="decoration8">

								</div>
								<div class="decorationBox" id="decoration9">

								</div>
								<div class="decorationBox" id="decoration10">

								</div>
							</div>
						</div>
						<div class="swiper-slide"></div>
						<div class="swiper-slide"></div>

						<!-- 10개가 채워지면 추가 되는 식으로 코드 짜야함
							 <div class="swiper-slide slide2">
																<div id="cake">
									<div class="decorationBox" id="decoration1">

									</div>
									<div class="decorationBox" id="decoration2">

									</div>
									<div class="decorationBox" id="decoration3">

									</div>
									<div class="decorationBox" id="decoration4">

									</div>
									<div class="decorationBox" id="decoration5">

									</div>
									<div class="decorationBox" id="decoration6">

									</div>
									<div class="decorationBox" id="decoration7">

									</div>
									<div class="decorationBox" id="decoration8">

									</div>
									<div class="decorationBox" id="decoration9">

									</div>
									<div class="decorationBox" id="decoration10">

									</div>
								</div>

							</div>
							-->
					</div>
					<!-- If we need pagination -->
					<div class="swiper-pagination"></div>
					<!-- If we need navigation buttons -->
					<div class="swiper-button-prev">
						<span class="material-icons-round">
							arrow_back
						</span>
					</div>
					<div class="swiper-button-next">
						<span class="material-icons-round">
							arrow_forward
						</span>
					</div>
				</div>
				<!-- 스와이퍼 끝 ---------------------------- -->
				<div>
					<!-- 생일텍스트 -->
				</div>
				<a href="#main/choice">케이크 꾸며주기</a>
			</div>

			<!-- 장식고르기------------------------------------------- -->
			<form action="" method="post">
				<div class="slide" id="slide2" data-anchor="choice">
					<div class="choiceBox">
						<a href="#main" class="material-icons">
							arrow_back
							<span>뒤로가기</span></a>
						<div>

						</div>
					</div>
					<a href="#main/letter">편지쓰기</a>
				</div>



				<!-- 편지쓰기 ------------------------------------------------------------ -->
				<div class="slide" id="slide3" data-anchor="letter">
					<div>


					</div>
					<div class="letterBox">
						<a href="#main/choice" class="">
							<span class="material-icons">
								arrow_back
							</span>뒤로가기</a>
						<a href="#main">
							<span class="material-icons" style="padding-top:1rem" ;">
								home</span>
							홈으로</a>
						<div>
							<input type="text" name="" id="user_nickname" placeholder="닉네임">
						</div>
						<div>
							<input type="text" name="" id="title" placeholder="제목">
						</div>
						<div>
							<textarea class="notes" id="contents" placeholder="편지를 적어주세요..." cols="30"></textarea>
						</div>
					</div>
					<input type="submit" value="친구에게 편지보내기">
				</div>
			</form>
		</div>
</body>
</html>
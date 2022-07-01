<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">

<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>해피벌써데이</title>
   
   <!-- css -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/2.9.7/jquery.fullpage.css" />
   <link rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp">
   <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
   <link rel="stylesheet" href="resources/lib/css/reset.css">
   <link rel="stylesheet" href="resources/lib/css/home_section.css">
   <link rel="stylesheet" href="resources/lib/css/icon.css">
   <link rel="stylesheet" href="resources/lib/css/header.css">
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
   <script src="resources/lib/js/home_slide.js"></script>
   <script src="resources/lib/js/home_ajax.js"></script>
   <script defer src="resources/lib/js/modal.js"></script>
</head>
<style>

</style>

<body>
   <!-- 모달창 wrap ---------------------------------------------------------------------------------------------------------------->
   <div class="modal_wrap">
      <div class="joinForm form">
         <p>SIGN-UP</p>
         <form action="join" method="post">
            <span class="joinClose close material-icons">
               <p class="hidden">close</p>
            </span>
            <label for="id">아이디</label>
            <input type="text" name="id" id="id" placeholder="아이디를 입력하세요 .">
<!--             <span id="idOverlap">아이디 중복체크</span> -->
            <span id="iMessage" class="eMessage"></span>
            
            
           
            <label for="password">비밀번호</label>
            <input type="password" name="password" id="password" placeholder="비밀번호를 입력하세요.">
            <span id="pMessage" class="eMessage"></span>
            
            <label for="nickname">닉네임</label>
            <input type="text" name="nickname" id="nickname" placeholder="닉네임을 입력하세요.">
            <span id="nMessage" class="eMessage"></span>
            
            <label for="birthday">생년월일</label>
            <input type="text" name="birthday" id="birthday" placeholder="생년월일을 입력하세요. (yyyymmdd)">
            <span id="bMessage" class="eMessage"></span>
            <button id="joinBtn" onclick="return inCheck()">회원가입 하기</button>
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
            <a href="home"></a>
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
               <span>cakeView</span>
            </li>
            <li class="logout">
               <a href="logout"><span>Logout</span></a>
            </li>
         </c:if>
      </ul>
   </header>
   <!-- //header 종료 ---------------------------------------------------------------------------------------------------------------->

   <!-- section ---------------------------------------------------------------------------------------------------------------->
   <div id="fullpage">
      <div class="section" id="section1" data-anchor="hello">
         <div id="pagedown">
            <h2 class="hidden">페이지다운</h2>
            <span class="material-icons pagedown_btn" style="font-size: 4rem">
               arrow_downward
            </span>
         </div>
      </div>
      <div class="section" id="section2" data-anchor="guide">
         <div class="slide" id="slide1">
            <h2 style="font-size: 20rem;">slide1</h2>
         </div>
         <div class="slide" id="slide2">
            <h2 style="font-size: 20rem;">slide2</h2>
         </div>
         <div class="slide" id="slide3">
            <h2 style="font-size: 20rem;">slide3</h2>
         </div>
      </div>
      <!-- 스와이퍼 ---------------------------- -->
      <div class="section" id="section3" data-anchor="start">
         <!-- Slider main container -->
         <form action="">
            <div class="swiper">
               <!-- Additional required wrapper -->
               <div class="swiper-wrapper">
                  <!-- Slides -->
                  <!-- 클래스 swiper-slide-active 인 값 가져와야함  -->
                  <div class="swiper-slide slide1"><input type="hidden" id="1" name="1"></div>
                  <div class="swiper-slide slide2"><input type="hidden" id="2" name="2"></div>
                  <div class="swiper-slide slide3"><input type="hidden" id="3" name="3"></div>
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
            <input type="submit" value="만들러가기">
         </form>
         <!-- 스와이퍼 끝 ---------------------------- -->
      </div>
   </div>
   <!-- //section 종료 ---------------------------------------------------------------------------------------------------------------->
   <!-- 퀵메뉴 ---------------------------------------------------------------------------------------------------------------->
   <div class="quick_menu_btn material-icons">
      <h2 class="hidden">퀵메뉴</h2></span>
      <span class="material-icons" style="font-size: 5rem;">
         share
      </span>
   </div>
   <div class="quick_menu_box">
      <ul class="quick_menu">
         <li class="quick_instagram">
            <a href="#">인스타그램</a>
         </li>
         <li class="quick_facebook">
            <a href="#">페이스북</a>
         </li>
         <li class="quick_kakaotalk">
            <a href="#">카카오톡</a>
         </li>
      </ul>
   </div>
   <!-- // 퀵메뉴 종료 ---------------------------------------------------------------------------------------------------------------->
   <!-- 아이디 중복검사  -->
   <script>
   $('.id_input').on("propertychange change keyup paste input", function(){

	console.log("keyup 테스트");	

});
   
   var memberId = $('.id_input').val();			// .id_input에 입력되는 값
	var data = {memberId : memberId}				// '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'
	
	$.ajax({
		type : "post",
		url : "/member/memberIdChk",
		data : data
	});
   </script>
</body>

</html>
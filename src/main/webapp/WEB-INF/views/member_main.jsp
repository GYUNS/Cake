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
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp">
	<link rel="stylesheet" href="resources/lib/css/reset.css">
	<link rel="stylesheet" href="resources/lib/css/header.css">
	<link rel="stylesheet" href="resources/lib/css/icon.css">
    <link rel="stylesheet" href="resources/lib/css/member_section.css">
	<style>
    body,html{
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
    	<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/2.9.7/jquery.fullpage.js"></script>
		<script src="resources/lib/js/member_slide.js"></script>
</head>

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
        <!-- <c:if test="${empty LoginID}"> -->
          <li class="loginForm_btn">
            <span class="material-icons" style="font-size: 2rem;">celebration</span>
            <span>Login</span>
          </li>
          <li class="joinForm_btn">
            <span class="material-icons" style="font-size: 2rem;">cake</span>
            <span>SignUp</span>
          </li>
        <!-- </c:if> -->
   
<!--         <c:if test="${not empty LoginID}">   
          <li class="cakeView">
            <span>cakeView</span></span>
          </li>
          <li class="logout">
            <span>Logout</span>
          </li>
        </c:if> -->
      </ul>
   </header>
   <!-- //header 종료 ---------------------------------------------------------------------------------------------------------------->
 </body>
</html>
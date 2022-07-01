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
   <script src="https://cdn.jsdelivr.net/npm/vue@2.6.0"></script>
   

</head>

<body>
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

                     </div>
                  </div>
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
         <script>
            new Vue({
               el: "#slide1"
            })
         </script>

         <!-- 장식고르기------------------------------------------- -->
         <form action="cakeletterinsert" method="post">
            <div class="slide" id="slide2" data-anchor="choice">
               <div class="choiceBox">
                  <a href="#main" class="material-icons">
                     arrow_back
                     <span>뒤로가기</span></a>
                  <h2 id="letterGo" style="font-size: 2rem;">원하는 장식을 골라주세요!</h2>
                  <ul class="decorateBox_wrap">
                     <li class="decorateBox" v-for="(item, index) in items" :key="item">
                        <input type="radio" v-model="picked" :value="item.value" :id="item.id"
                           @click="getChoice">
                        <label :for="item.id">
                           <div class="img_wrap"><img :src="item.imgUrl" :art="item.value" class="choice_img"
                                 aria-hidden="true"></img></div>
                        </label>
                     </li>
                  </ul>
               </div>
               <a href="#main/letter">편지쓰기</a>
            </div>
             <script>
               new Vue({
                  el: '#slide2',
                  data: {
                     items: [
                        // 장식 추가하세요 id : 편지지 컬러 , value : 장식이름 , imgUrl : 이미지경로
                        {
                           id: "red",
                           value: "chocolateBasic",
                           imgUrl: "resources/lib/images/chocolateBasic.png"
                        },
                        {
                           id: "tomato",
                           value: "chocolateHeart",
                           imgUrl: "resources/lib/images/chocolateHeart.png"
                        },
                        {
                           id: "orange",
                           value: "cookieChoco",
                           imgUrl: "resources/lib/images/cookieChoco.png"
                        },
                        {
                           id: "yellow",
                           value: "cookieJinger",
                           imgUrl: "resources/lib/images/cookieJinger.png"
                        },
                        {
                           id: "green",
                           value: "cookieLotus",
                           imgUrl: "resources/lib/images/cookieLotus.png"
                        },
                        {
                           id: "aqua",
                           value: "cruitCherry",
                           imgUrl: "resources/lib/images/fruitCherry.png"
                        },
                        {
                           id: "darkorchid",
                           value: "cruitGrape",
                           imgUrl: "resources/lib/images/fruitGrape.png"
                        },
                        {
                           id: "violet",
                           value: "cruitStrawberry",
                           imgUrl: "resources/lib/images/fruitStrawberry.png"
                        },
                        {
                           id: "pink",
                           value: "hariboGreen",
                           imgUrl: "resources/lib/images/hariboGreen.png"
                        },
                     ],
                     picked: ""
                  },
                  methods: {
                     getChoice: function (event) {
                        $('.letterBox').css('border-color', event.target.id)
                        $('#letterGo').text('편지를 쓰러 가볼까요?')
                     }
                  },
                  mounted() {
                     this.picked = this.items[0].value;
                  },
                  watch: {
                     picked() {
                        console.log('뭘선택했지? => ', this.picked)
                     }
                  }
               })
            </script>
            <!-- 편지쓰기 ------------------------------------------------------------ -->
            <div class="slide" id="slide3" data-anchor="letter">
               <div class="letterBox">
                  <a href="#main/choice" class="">
                     <span class="material-icons">
                        arrow_back
                     </span>뒤로가기
                  </a>
                  <img :src="" alt="">
                  <a href="#main">
                     <span class="material-icons" style="padding-top:1rem">
                        home</span>
                     홈으로
                  </a>
                  <div class="from">
                     <input type="text" name="c_nickname" id="user_nickname" placeholder="닉네임">
                  </div>
                  <div class="title">
                     <input type="text" name="title" id="title" placeholder="제목">
                  </div>
                  <div>
                     <textarea class="notes" name="contents" id="contents" placeholder="편지를 적어주세요..." cols="30"
                        rows="15"></textarea>
                  </div>
                  <input type="button" value="친구에게 편지보내기" onClick="location.href='cakeletterinsert'">
               </div>
              
            </div>
         </form>
      </div>
   </div>
</body>

</html>
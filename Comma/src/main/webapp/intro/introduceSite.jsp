<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
<head>
<title>[소개]사이트 소개</title>
<meta charset="utf-8" />
<link rel="stylesheet" type="text/css" href="../controller/assets/css/introKor.css" />
<!-- 백그라운드 동영상 추가 -->
<script src="./js/jquery-1.11.1.min.js"></script>
<!--1. 제이쿼리(이미 페이지에서 로드했다면 추가안하셔도 됩니다.) -->
<script src="./js/modernizr-2.5.3.min.js"></script>
<!--2. 모더나이즈라고 터치기기 감지하기 위한 파일 입니다. -->
<script src="./js/video.js"></script>
<!--3. 비디오를 웹브라우저에 노출하기 위한 플러그인입니다. 비디오 재생 플레이어의 일종이라 생각하시면 됩니다.-->
<script src="./js/bigvideo.js"></script>
<!--4. 비디오나 이미지를 풀사이즈로 넣는 플러그인입니다. -->
<script src="./js/imagesloaded.pkgd.min.js"></script>
<script>
        var BV = new $.BigVideo({useFlashForFirefox:false, container:$('#header_siteInto')});
            // 비디오나 배경을 노출할 엘리먼트를 선택합니다. $('#videoEle')는 html 태그중에 <div id="videoEle"></div> 를 말하는 것입니다.
            BV.init();
            if (Modernizr.touch) {
                BV.show('../../images/siteInfo.jpg');
                //모바일일 경우 비디오 대신 대체할 이미지입니다.
            } else {
                BV.show(
                    { type: "video/mp4",  src: "./file/SampleVideo_360x240_1mb.mp4", doLoop:true },
                    { type: "video/webm", src: "./file/SampleVideo_360x240_1mb.webm", doLoop:true },
                    { type: "video/ogg",  src: "./file/SampleVideo_360x240_1mb.ogv", doLoop:true }
                );
                //웹브라우저마다 지원하는 비디오 형식이 다르기 때문에 다양하게 만들어서 제공해야합니다. 변환은 다음팟인코더나, 카카오인코더를 이용하세요.
                //옵션중에 doLoop는 영상 반복을 의미합니다. true는 영상 반복, false는 반복 안함입니다.
                BV.getPlayer().volume(0);
                //사운드를 0 즉 음소거 상태로 만듭니다.
            }
</script>

</head>
<body>

<div id="nav2" style="background-color: #72BBF0">
   <ul class="nav2mouseOver">
      <li><a class="scrolly" href="#one">What is Comma?</a></li>&nbsp;&nbsp;
      <li><a class="scrolly" href="#two">How to using Comma?</a></li>&nbsp;&nbsp;
      <li><a class="scrolly" href="#three">Use Cases of Celeb</a></li>
   </ul>
</div>

<!-- Main -->
<article id="main">
   <header id="header_siteInto">
      <p><img alt="" src="images/commaLogo2.png"></p>
      <p><a href="#one" class="more scrolly"><img src="images/triangle.png"><br>
      view more</a></p>
   </header>

   <section class="wrapper style5" id="one">
      <!-- 배경 색... -->
   <div class="inner">
      <!-- 글자들 간격들 조절 -->
      <iframe width="854" height="480" src="https://www.youtube.com/embed/8k-Qr0Lofss?autoplay=1&loop=1"  
      frameborder="0" allowfullscreen="true"></iframe>
      <!-- <p><img alt="" src="images/WhatisComma.PNG">
      </p> -->
      <h3>1.What is Comma?</h3>
      <p>Comma,
         This website is very useful for your trip
         In Korea</p>
      </br>
      <h5>* Why should we using a Comma?</h5></br></br>
      
      <h6>Convenience</h6>
      <img src="images/w1.png" class=alignleft alt="" hspabe=30/>
      - It is not difficult seeking a guide for your trip, if you choosing a travel destination. 
      You can handle it comfortably.</br></br>
	  
      <h6>Without qualification</h6>
      <img src="images/w2.png" class=alignleft" alt="" />
      - We don't need to qualification for travel guide. You can doing a travel guide for someone, 
      or sometimes you call a travel guide for your trip. There is no limit for your role.</br></br>

      <h6>Safe</h6>
      <img src="images/w3.png" class=alignleft" alt="" /><span>
      - Although, there is no limit for our travel guide, but we should take a people, identities are confirmed.</p>
      </br>
      <hr/>

   </div>
</section>

<section class="wrapper style6" id="two">
   <!-- 배경 색... -->
   <div class="inner">
      <!-- 글자들 간격들 조절 -->

         <h3>2.How to using Comma?</h3>
         <p>Guide
         - If you want to finding a guide, first you need to click 'tour find' in main page. 
         When you in the guide page, you can see the search field. And when you click detail search field, 
         you can doing a detail search. And you should scroll down, you can see the Guide list field. 
         This field is a list up our guide ahd they are wait for you. When you click a some guide, 
         you can see the introducing a this guide and reserve button. When you click the reserve button, 
         then reserve check field is appear. So, you can selecting a Cost, Date, Location, Guide Name, 
         and Reserve People numbers. Finally, if you are click the reserve button, it is the end of the guide find. 
         </p>
         <p>Traveler
         - When you in the Tour request page, you can see the map and people wait for a finding a guide. 
         They are selecting a tour location what they want before contact a guide. Also, they choose date,time,people numbers, 
         tour type(walking, bicycle, car...etc), and cost(this cost is what they want hiring a guide). 
         If guide, he click the reserve button, then appear the popup, and message'Reserve Clear'.
         When you click the OK Button, it is finished(finding a guide and finding a tour team). 
         If you want to check your reserve, please click the 'menu' and 'My page'. When you see the My page, 
         you can see the guide reserve, and travel reserve. So you can check the reserve what you want. 
         </p>

         <hr/>

         <h4>If you don't understand it, please watch this video.</h4>
         </br>
         <video width="420" height="300" controls="controls" poster="images/guideposter.png">
            <source src="images/Guide.mp4" type="video/mp4"/>
         </video>
        
         <video style="float:right;" width="420" height="300" controls="controls" poster="images/travelerposter.jpg">
         <source src="images/traveler.mp4" type="video/mp4"/></video>
      </div>
   </section>
   <section class="wrapper style5" id="three">
      <!-- 배경 색... -->
   <div class="inner">
      <!-- 글자들 간격들 조절 -->
      <h3>3.Use Cases of Celeb</h3>
     <!--  <p><img alt="" src="images/UseCasesCeleb.PNG">
      </p> -->
        <p>
      <img src="images/ma.png" class=alignleft"/>
      I worried about if my guide so scare or unkindness, but he is very handsome and friendly. Thank you.
      <p>[Movie Actor, Dongseok Ma]</p></p>
      <p>
      <img src="images/song.png" class=alignleft" alt="" />
      Actually, this is my first time to using a comma. 
      So I was nervous. But she has a good manner and some humor skill. 
      Also, she was so cute. Could I re-using a Comma next time? I love it!
      <p>[TV Actress, Hyegyo Song]</p>
      <p>
      <img src="images/cho.png" class=alignleft" alt="" />
      I often late and absence my appointment, but thanks to my tour guide in Comma, 
      I don't late and enjoy a trip with my friends. I can't thank you enough. What can I do repay you?
      <p>[Comedian, Seho Cho]</p>
      </p>
      <hr/>
      
   </div>
</section>
</article>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
<head>
<title>[�Ұ�]����Ʈ �Ұ�</title>
<meta charset="utf-8" />
<link rel="stylesheet" type="text/css" href="../controller/assets/css/introKor.css" />
<!-- ��׶��� ������ �߰� -->
<script src="./js/jquery-1.11.1.min.js"></script>
<!--1. ��������(�̹� ���������� �ε��ߴٸ� �߰����ϼŵ� �˴ϴ�.) -->
<script src="./js/modernizr-2.5.3.min.js"></script>
<!--2. ����������� ��ġ��� �����ϱ� ���� ���� �Դϴ�. -->
<script src="./js/video.js"></script>
<!--3. ������ ���������� �����ϱ� ���� �÷������Դϴ�. ���� ��� �÷��̾��� �����̶� �����Ͻø� �˴ϴ�.-->
<script src="./js/bigvideo.js"></script>
<!--4. ������ �̹����� Ǯ������� �ִ� �÷������Դϴ�. -->
<script src="./js/imagesloaded.pkgd.min.js"></script>
<script>
        var BV = new $.BigVideo({useFlashForFirefox:false, container:$('#header_siteInto')});
            // ������ ����� ������ ������Ʈ�� �����մϴ�. $('#videoEle')�� html �±��߿� <div id="videoEle"></div> �� ���ϴ� ���Դϴ�.
            BV.init();
            if (Modernizr.touch) {
                BV.show('../../images/siteInfo.jpg');
                //������� ��� ���� ��� ��ü�� �̹����Դϴ�.
            } else {
                BV.show(
                    { type: "video/mp4",  src: "./file/SampleVideo_360x240_1mb.mp4", doLoop:true },
                    { type: "video/webm", src: "./file/SampleVideo_360x240_1mb.webm", doLoop:true },
                    { type: "video/ogg",  src: "./file/SampleVideo_360x240_1mb.ogv", doLoop:true }
                );
                //������������ �����ϴ� ���� ������ �ٸ��� ������ �پ��ϰ� ���� �����ؾ��մϴ�. ��ȯ�� ���������ڴ���, īī�����ڴ��� �̿��ϼ���.
                //�ɼ��߿� doLoop�� ���� �ݺ��� �ǹ��մϴ�. true�� ���� �ݺ�, false�� �ݺ� �����Դϴ�.
                BV.getPlayer().volume(0);
                //���带 0 �� ���Ұ� ���·� ����ϴ�.
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
      <!-- ��� ��... -->
   <div class="inner">
      <!-- ���ڵ� ���ݵ� ���� -->
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
   <!-- ��� ��... -->
   <div class="inner">
      <!-- ���ڵ� ���ݵ� ���� -->

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
      <!-- ��� ��... -->
   <div class="inner">
      <!-- ���ڵ� ���ݵ� ���� -->
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
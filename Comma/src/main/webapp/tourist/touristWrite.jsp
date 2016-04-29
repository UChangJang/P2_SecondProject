<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
<head>
   <title>customerWrite</title>
   
   <!-- <link rel="stylesheet" href="../controller/assets/css/guide.css" /> -->
</head>
<body>
<!-- Main -->
<article id="main">
   <header>
      <h2>가이드찾기 글쓰기</h2>
      <p>Aliquam ut ex ut interdum donec amet imperdiet eleifend</p>
   </header>
   
   <section class="wrapper style5">
      <div class="inner">


         <section>
            <h2>가이드를 찾아요!</h2>
            <form method="post" action="touristWrite_Ok.do">
               <div class="row uniform">
               
                  <div class="2u 12u$(xsmall)">
                     <h3>테마</h3>
                  </div>
                  <div class="10u$">
                     <div class="select-wrapper">
                        <select name="tour_theme" id="demo-category">
                           <option value="">- 테마 -</option>
                           <option value="먹방">먹방</option>
                           <option value="관광">관광</option>
                           <option value="교육">교육</option>
                           <option value="쇼핑">쇼핑</option>
                        </select>
                     </div>
                  </div>
                  
                  
                  <div class="2u 12u$(xsmall)">
                     <h3>여행지</h3>
                  </div>
                  <div class="10u$">
                     <div class="select-wrapper">
                        <select name="text_loc" id="demo-category">
                           <option value="">- 지역 -</option>
                           <option value="서울">서울</option>
                           <option value="대전">대전</option>
                           <option value="대구">대구</option>
                           <option value="부산">부산</option>
                        </select>
                     </div>
                  </div>
                  
                  
                  <div class="2u 12u$(xsmall)">
                     <h3>날짜</h3>
                  </div>
                  <div class="10u 12u$(xsmall)">
                     <input type="text" name="text_tour_date" id="dt" placeholder="날짜선택">
                           <div id="dd"></div>
                  </div>
                  
                  <div class="2u 12u$(xsmall)">
                     <h3>비용</h3>
                  </div>
                  <div class="10u 12u$(xsmall)">
                     <input type="text" name="text_cost" id="demo-name" value="" placeholder="비용" />
                  </div>
                  
                  
                  <div class="2u 12u$(xsmall)">
                     <h3>인원</h3>
                  </div>
                  <div class="10u$">
                     <div class="select-wrapper">
                        <select name="text_total_person" id="demo-category">
                           <option value="">- Category -</option>
                           <option value="1">1명</option>
                           <option value="2">2명</option>
                           <option value="3">3명</option>
                           <option value="4">4명</option>
                           <option value="5">5명</option>
                           <option value="6">6명</option>
                           <option value="7">7명</option>
                           <option value="8">8명</option>
                           <option value="9">9명</option>
                           <option value="10">10명</option>
                        </select>
                     </div>
                  </div>
                  
                  
                  <div class="2u 12u$(small)">
                     <h3>시간</h3>
                  </div>
                  <div class="2u 12u$(small)">
            <!-- 5 오른쪽 -->
            <div class="select-wrapper">
               <select name="text_time1" id="demo-category1">
                  <option value="">- 시간 -</option>
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                  <option value="6">6</option>
                  <option value="7">7</option>
                  <option value="8">8</option>
                  <option value="9">9</option>
                  <option value="10">10</option>
                  <option value="11">11</option>
                  <option value="12">12</option>
               </select>
            </div>
         </div>
         <div class="2u 12u$(small)">
            <div class="select-wrapper">
               <select name="text_time2" id="demo-category2">
                  <option value="">- 시간 -</option>
                  <option value="am">AM</option>
                  <option value="pm">PM</option>
               </select>
            </div>
         </div>
         <div class="2u 12u$(small)" id="time flow">
            <b>~</b>
         </div>
         <div class="2u 12u$(small)">
            <!-- 5-1 오른쪽 -->
            <div class="select-wrapper">
               <select name="text_time3" id="demo-category3">
                  <option value="">- 시간 -</option>
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                  <option value="6">6</option>
                  <option value="7">7</option>
                  <option value="8">8</option>
                  <option value="9">9</option>
                  <option value="10">10</option>
                  <option value="11">11</option>
                  <option value="12">12</option>
               </select>
            </div>
         </div>
         <div class="2u$ 12u$(small)">
            <div class="select-wrapper">
               <select name="text_time4" id="demo-category4">
                  <option value="">- 시간 -</option>
                  <option value="am">AM</option>
                  <option value="pm">PM</option>
               </select>
            </div>
         </div>
                  
                  
                  <div class="4u 12u$(small)">
                     <input type="radio" id="demo-priority-low" name="text_move" value="walking" checked>
                     <label for="demo-priority-low">보도</label>
                  </div>
                  <div class="4u 12u$(small)">
                     <input type="radio" id="demo-priority-normal" name="text_move" value="bicycle" >
                     <label for="demo-priority-normal">자전거</label>
                  </div>
                  <div class="4u$ 12u$(small)">
                     <input type="radio" id="demo-priority-high"name="text_move" value="car" >
                     <label for="demo-priority-high">자동차</label>
                  </div>
                  
                  <h3>이런 가이드를 원해요</h3>
                  <div class="12u$">
                     <textarea name="tour_detail" id="demo-message" placeholder="Enter your message" rows="6"></textarea>
                  </div>
                  
                  <div class="12u$" id="tourist_insert">
                     <ul class="actions">
                        <li><input type="submit" value="등록" class="special" /></li>
                        <li><input type="reset" value="취소" /></li>
                     </ul>
                  </div>
               </div>
            </form>
         </section>

      </div>
   </section>
</article>
</body>
</html>
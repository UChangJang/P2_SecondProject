<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
<head>
   <title>Customer Write</title>
   
   <!-- <link rel="stylesheet" href="../controller/assets/css/guide.css" /> -->
</head>
<body>
<!-- Main -->
<article id="main">
   <header>
      <h2>Tourist Bulletin board writing</h2>
      <p>post your writing to the bulletin board!</p>
   </header>
   
   <section class="wrapper style5">
      <div class="inner">


         <section>
            <form method="post" action="touristWrite_Ok.do">
               <div class="row uniform">
               
                  <div class="2u 12u$(xsmall)">
                     <h3>Theme</h3>
                  </div>
                  <div class="10u$">
                     <div class="select-wrapper">
                        <select name="tour_theme" id="demo-category">
                           <option value="">- Theme -</option>
                           <option value="�Թ�">Eating</option>
                           <option value="����">Sightseeing</option>
                           <option value="����">Shopping</option>
                           <option value="��ȭ">Entertainment</option>
                        </select>
                     </div>
                  </div>
                  
                  
                  <div class="2u 12u$(xsmall)">
                     <h3>place</h3>
                  </div>
                  <div class="10u$">
                     <div class="select-wrapper">
                        <select name="text_loc" id="demo-category">
                           <option value="">-  -</option>
                           <option value="����">SEOUL</option>
                           <option value="�뱸">DAEGU</option>
                           <option value="�λ�">BUSAN</option>
                           <option value="����">JEJU</option>
                           <option value="��õ">INCHEON</option>
                           <option value="��õ">CHUNCHEON</option>
                           <option value="����">BORYEONG</option>
                           <option value="����">JEONJU</option>
                           <option value="����">GYEONGJU</option>
                           <option value="����">YEOSU</option>
                           <option value="������">KANGWONDO</option>
                           <option value="��⵵">GYEONGGIDO</option>
                        </select>
                     </div>
                  </div>
                  
                  
                  <div class="2u 12u$(xsmall)">
                     <h3>DATE</h3>
                  </div>
                  <div class="10u 12u$(xsmall)">
                     <input type="text" name="text_tour_date" id="dt" placeholder="��¥����">
                           <div id="dd"></div>
                  </div>
                  
                  <div class="2u 12u$(xsmall)">
                     <h3>Cost</h3>
                  </div>
                  <div class="10u 12u$(xsmall)">
                     <input type="text" name="text_cost" id="demo-name" value="" placeholder="���" />
                  </div>
                  
                  
                  <div class="2u 12u$(xsmall)">
                     <h3>People</h3>
                  </div>
                  <div class="10u$">
                     <div class="select-wrapper">
                        <select name="text_total_person" id="demo-category">
                           <option value="">- People -</option>
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
                        </select>
                     </div>
                  </div>
                  
                  
                  <div class="2u 12u$(small)">
                     <h3>Time</h3>
                  </div>
                  <div class="2u 12u$(small)">
            <!-- 5 ������ -->
            <div class="select-wrapper">
               <select name="text_time1" id="demo-category1">
                  <option value="">- Time -</option>
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
                  <option value="">- Time -</option>
                  <option value="am">AM</option>
                  <option value="pm">PM</option>
               </select>
            </div>
         </div>
         <div class="2u 12u$(small)" id="time flow">
            <b>~</b>
         </div>
         <div class="2u 12u$(small)">
            <!-- 5-1 ������ -->
            <div class="select-wrapper">
               <select name="text_time3" id="demo-category3">
                  <option value="">- Time -</option>
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
                  <option value="">- Time -</option>
                  <option value="am">AM</option>
                  <option value="pm">PM</option>
               </select>
            </div>
         </div>
                  
                  
                  <div class="4u 12u$(small)">
                     <input type="radio" id="demo-priority-low" name="text_move" value="walking" checked>
                     <label for="demo-priority-low">Walk</label>
                  </div>
                  <div class="4u 12u$(small)">
                     <input type="radio" id="demo-priority-normal" name="text_move" value="bicycle" >
                     <label for="demo-priority-normal">Bicycle</label>
                  </div>
                  <div class="4u$ 12u$(small)">
                     <input type="radio" id="demo-priority-high"name="text_move" value="car" >
                     <label for="demo-priority-high">Car</label>
                  </div>
                  
                  <h3>Detailed Requirement</h3>
                  <div class="12u$">
                     <textarea name="tour_detail" id="demo-message" placeholder="Enter your message" rows="6"></textarea>
                  </div>
                  
                  <div class="12u$" id="tourist_insert">
                     <ul class="actions">
                        <li><input type="submit" value="Post" class="special" /></li>
                        <li><input type="reset" value="Back" /></li>
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
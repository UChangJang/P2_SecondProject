<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript" src="ajax.js"></script>
<script type="text/javascript">
$(function(){         // 스팟 순위권에 마우스 오버 시, 순위 div의 색상 변화
   $('#tabControlTab').mouseover(function(){ 
      
   });
   
   //퀵서치
  $('#quick_search').click(function(){	//document.quickSearch.place.value
	  if(document.quickSearch.place.value=="" || document.quickSearch.method.value=="" ||
			  document.quickSearch.people.value=="" || document.quickSearch.date.value==""){
		  /* alert("제대로 선택 안 하셨습니다."+document.quickSearch.place.value+","+document.quickSearch.method.value
				  +","+document.quickSearch.people.value+","+document.quickSearch.date.value); */
	  }else{
		  /* alert("제대로 선택 하셨습니다."+document.quickSearch.place.value+","+document.quickSearch.method.value
				  +","+document.quickSearch.people.value+","+document.quickSearch.date.value); */
		  $('#quickSearch').submit();
	  }
	  
   })
   
   $('.loc').click(function(){
      id=$(this).attr('id');
      loc=id.substring(3);
      var param="loc="+encodeURIComponent(loc);
      sendMessage("POST", "locHotSpot.do", param, hotspot)   
   })

});
function hotspot(){
   if(httpRequest.readyState==4){
      if(httpRequest.status==200){      
         $('#hotspot').html(httpRequest.responseText);
      }
   }
}
</script>
</head>
<body>
<section id="three" class="wrapper style2 special widthsiz1">
         <!-- style3:배경,폰트...색상 -->

   <ul id="banner1">
      <div class="inner">
         <img src="images/comma_logo.png">
         <br>
         <h2 style="color:#8D7979">Comma in your Life.</h2>
      </div>
   </ul>

   <div id="mainMenu">&nbsp;&nbsp; 
      <span><a href="main.do">Comma</a></span>&nbsp;&nbsp; 
      <span><a href="introduceKor.do">Introduce Korea</a></span>&nbsp;&nbsp;
      <span><a href="guide.do">Tour Find</a></span>&nbsp;&nbsp; 
      <span><a href="tourist.do">Tour Request</a></span>&nbsp;&nbsp; 
      <span><a href="board_list.do">Community</a></span>&nbsp;&nbsp; 
   </div>
   <span><img src="http://file.theskinfood.com/resources/common/img/dep2bg.png" width="100%" height="37" alt=""></span>
</section>




<section id="three" class="wrapper style2 special widthsiz2">
   <div class="inner">
      <section>
         <!-- 제목 왼쪽정렬 -->
         <div class="row uniform" id="mainTop">
            <div class="3u 12u$(small)">                        <!-- 1 왼쪽 -->
               <div id="mainSearch">
               
               	  <div class="select-wrapper">
					<form method="post" action="quickSearch_ok.do" id="quickSearch" name="quickSearch" class="mainSearch1">
								<div style="color: #53565B; font-style: bold;">
									<p>
										<img src="images/search.png">&nbsp;&nbsp;EASY SEARCH
									</p>
								</div>

								<select name="place" id="placeQuick" class="mainSearch1" style="height: 2.3em;font-size:1.1em">
									<option value="">PLACE</option>
									<option value="SEOUL">SEOUL</option>
									<option value="DAEGU">DAEGU</option>
									<option value="BUSAN">BUSAN</option>
									<option value="JEJU">JEJU</option>
									<option value="INCHEON">INCHEON</option>
									<option value="CHUNCHEON">CHUNCHEON</option>
									<option value="BORYEONG">BORYEONG</option>
									<option value="JEONJU">JEONJU</option>
									<option value="GYEONGJU">GYEONGJU</option>
									<option value="YEOSU">YEOSU</option>
									<option value="KANGWONDO">KANGWONDO</option>
									<option value="GYEONGGIDO">GYEONGGIDO</option>
								</select> 
								<input type="text" id="dt" placeholder="DATE"
									class="mainSearch1" name="date" style="height: 2.3em;font-size:1.1em;color:#5E3327;"/> 
								<select
									name="people" id="peopleQuick" class="mainSearch1" style="height: 2.3em;font-size:1.1em">
									<option value="">PEOPLE</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="5">5</option>
									<option value="10">10</option>
									<option value="15">15</option>
									<option value="20">20</option>
								</select> 
								<select name="method" id="methodQuick"
									class="mainSearch1" style="height: 2.3em;font-size:1.1em">
									<option value="">METHOD</option>
									<option value="walking">walking</option>
									<option value="car">car</option>
									<option value="bicycle">bicycle</option>
								</select> 
								</form>
								<button class="button fit small special mainSearch1" id="quick_search">SEARCH</button>
					
                  </div>

               </div>
            </div>
            
            <div class="7u 12u$(small)">                        <!-- 2 가운데 -->
               <span class="image fit a">
                  <div id="main_bn">
                     <li><img src="images/guide_banner.jpg" alt="" /></li>      <!-- 이미지 character과 맞추기!!! -->
                     <li><img src="images/tour_banner.jpg" alt="" /></li>
                     <li><img src="images/korea_banner.jpg" alt="" /></li>
                     <li><img src="images/character.png" alt="" /></li>
                  </div>
               </span>
            </div>
            
            <div class="2u$ 12u$(small) mainRight1">               <!-- 3 오른쪽 -->
                  <table id="mainRight">
                     <!-- <tr onclick="location.href='introduceKor.do'">style="cursor:hand;" 
                     <a href="#">
                       <td><span class="mainRight_span"><img src="images/home.png"></span></td>
                       <th>Home</th>
                       </a>
                     </tr> -->
                     <tr style="cursor:Pointer;"onclick="location.href='introduceKor.do'">
                       <td><span class="mainRight_span"><img src="images/comma.png"></span></td>
                       <th>Comma</th>
                     </tr>
                     <tr style="cursor:Pointer;"onclick="location.href='tourist.do'">
                       <td><span class="mainRight_span"><img src="images/korea.png"></span></td>
                       <th>Tour</th>
                     </tr>
                     <tr style="cursor:Pointer;"onclick="location.href='guide.do'">
                       <td><span class="mainRight_span"><img src="images/guide.png"></span></td>
                       <th>Request</th>
                     </tr>
                     <tr style="cursor:Pointer;"onclick="location.href='board_list.do'">
                       <td><span class="mainRight_span"><img src="images/commu.png"></span></td>
                       <th>Community</th>
                     </tr>
                  </table>
               </div>
               
            </div>
         </section>
      </div>
</section>



<section id="three" class="wrapper style2 special widthsiz3">
      <div id="threeInner" class="inner">
      
      <section>
      <!-- 도움... 누가 이미지 겹치는것좀 ㅎㅎ... -->
      <!-- <img id="threeImg" src="http://file.theskinfood.com/resources/common/img/map_bg.png" alt="" style="position: relative; z-index: 1;"/> -->
            <!-- 제목 왼쪽정렬 -->
      <div id="threeDiv" class="row uniform" style="position: relative ; z-index: 2;">
      
         <div class="6u 12u$(small) secondPart" id="guideRanking"> 
            <h5>Best Guide 6</h5>
              <c:forEach items="${bestGuide }" var="vo">
               <div id="guideRanking_container">
                  <div id="guideImg">
                  <div class="guideRank_mypicture">
                     <img id="profile" src="../controller/images/character.png"></div>
                     <div style="color:#3A2525; font-weight: bold;"><img id="guideRanking_ranker" src="images/guideRanking_ranker_img.png">&nbsp;${vo.reviewvo.review_no }ST</div>
                  </div>
               
                  <div class="guideRanking_review">
                     ${vo.reviewvo.review_score }점입니니다다다다다다다다다다다다다다다다다다다다다다다다다다다닫다.
                  </div>
                  <span style="text-align:center; margin:0; padding:0; font-size:15px; font-weight:bold;">${vo.uservo.user_nick }(${vo.text_loc })</span>
               </div>
               </c:forEach>
               
         </div>
         
         <div class="6u$ 12u$(small) secondPart tabControlWrap" id="tabControlWrap">
            <h5>Best Guide spot</h5>
            
            <ul class="tabControlTabs">
               <c:set var="i" value="1"/>
               <c:forEach var="vo" items="${slist }">
                  <c:if test="${i<=10 }">
                     <li class="tabControlTab selected odd" style="margin:0;padding:0;">
                        <span class="spot_num">&nbsp;${i}&nbsp;</span>
                        <p id="loc${vo.search_loc}" class="loc" style="color:#000;float:none;text-align: left;">&nbsp;&nbsp;&nbsp;${vo.search_loc }</p>
                     </li>
                  </c:if>
                  <c:set var="i" value="${i+1 }"/>
               </c:forEach>
            </ul>
            
            <ul class="">            
                  <li class="tabControlBody selected" id="hotspot"  style="background-color: #BAB6A8;"></li>      
               
               
            </ul>
            </div>
         </div>         
         </section>
      </div>
</section>


<section id="three" class="wrapper style2 special widthsiz4">
      <div class="inner">
         <section>

            <div class="box alt">
               <div class="row uniform">
                  <div class="3u 12u$(small) thirdPart" id="localWeather">
                     <h5 style="background-color: #808080; line-height: 2em; margin-bottom:0;">지역 날씨 정보</h5>
                     <div id="weather">
                        <c:forEach var="vo" items="${wlist }">
                        <li>
                           <img src="${vo.weaAddr }" alt="" />
                           <p style="margin-top:0; font-size: 0.8em;"><b>${vo.loc }</b>&nbsp;&nbsp;${vo.tempera}º</p>
                        </li>
                     </c:forEach>
                     </div>
                  </div>

                  <div class="9u$ 12u$(small) thirdPart" id="guideFind">
                     <h5 style="background-color: #ed4933; line-height: 2em; margin-bottom:0;">가이드를 찾아요</h5>
                     <table>
                        <tr>
                           <td>[서울]</td>
                           <td>2016/05/05</td>
                           <td>2000d원</td>
                        </tr>
                        <tr>
                           <td>[서울]</td>
                           <td>2016/05/05</td>
                           <td>2000d원</td>
                        </tr>
                        <tr>
                           <td>[서울]</td>
                           <td>2016/05/05</td>
                           <td>2000d원</td>
                        </tr>
                        <tr>
                           <td>[서울]</td>
                           <td>2016/05/05</td>
                           <td>2000d원</td>
                        </tr>
                        <tr>
                           <td>[서울]</td>
                           <td>2016/05/05</td>
                           <td>2000d원</td>
                        </tr>
                     </table>
                  </div>
               </div>
            </div>
         </section>
      </div>
</section>
</body>
</html>
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
var lid="";
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

		
	$('.tabControlTab').mouseover(function(){
		var id=$(this).attr('id');
		lid=id
		$('#'+id).find('span').css("background-color","#FED53E");
	});
	
	$('.tabControlTab').mouseleave(function(){
		$('#'+lid).find('span').css("background-color","#ED4933");
	});
	
	$('.tabControlBody').mouseover(function(){
		$('#'+lid).find('span').css("background-color","#FED53E");
	});
	
	$('.tabControlBody').mouseleave(function(){
		$('#'+lid).find('span').css("background-color","#ED4933");
	});
	
   // ajax : hotspot
   $('.loc').mouseover(function(){
	      var id=$(this).attr('id');
	      var loc=id.substring(3);
	      var param="loc="+encodeURIComponent(loc);


	      sendMessage("POST", "locHotSpot.do", param, hotspot);
	});
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
      <span><a href="introduceSite.do">COMMA</a></span>&nbsp;&nbsp;
      <span><a href="introduceKor.do">ABOUT KOREA</a></span>&nbsp;&nbsp;
      <span><a href="tourist.do">TOURIST</a></span>&nbsp;&nbsp; 
      <span><a href="guide.do">GUIDE</a></span>&nbsp;&nbsp; 
      <span><a href="board_list.do">COMMUNITY</a></span>&nbsp;&nbsp; 
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

								<select name="place" id="placeQuick" class="mainSearch1" style="height: 2.3em;font-size:1.1em; color:#bab6a8">
									<option value=""  style="color:#bab6a8">PLACE</option>
									<option value="SEOUL" style="color:#bab6a8">SEOUL</option>
									<option value="DAEGU" style="color:#bab6a8">DAEGU</option>
									<option value="BUSAN" style="color:#bab6a8">BUSAN</option>
									<option value="JEJU" style="color:#bab6a8">JEJU</option>
									<option value="INCHEON" style="color:#bab6a8">INCHEON</option>
									<option value="CHUNCHEON" style="color:#bab6a8">CHUNCHEON</option>
									<option value="BORYEONG" style="color:#bab6a8">BORYEONG</option>
									<option value="JEONJU" style="color:#bab6a8">JEONJU</option>
									<option value="GYEONGJU" style="color:#bab6a8">GYEONGJU</option>
									<option value="YEOSU" style="color:#bab6a8">YEOSU</option>
									<option value="KANGWONDO" style="color:#bab6a8">KANGWONDO</option>
									<option value="GYEONGGIDO" style="color:#bab6a8">GYEONGGIDO</option>
								</select> 
								<input type="text" id="dt" placeholder="DATE"
									class="mainSearch1" name="date" style="height: 2.3em;font-size:1.1em; color:#bab6a8;"/> 
								<select
									name="people" id="peopleQuick" class="mainSearch1" style="height: 2.3em;font-size:1.1em; color:#bab6a8">
									<option value="" style="color:#bab6a8">PEOPLE</option>
									<option value="1" style="color:#bab6a8">1</option>
									<option value="2" style="color:#bab6a8">2</option>
									<option value="5" style="color:#bab6a8">5</option>
									<option value="10" style="color:#bab6a8">10</option>
									<option value="15" style="color:#bab6a8">15</option>
									<option value="20" style="color:#bab6a8">20</option>
								</select> 
								<select name="method" id="methodQuick"
									class="mainSearch1" style="height: 2.3em;font-size:1.1em; color:#bab6a8">
									<option value="" style="color:#bab6a8">METHOD</option>
									<option value="walking" style="color:#bab6a8">walking</option>
									<option value="car" style="color:#bab6a8">car</option>
									<option value="bicycle" style="color:#bab6a8">bicycle</option>
								</select> 
								</form>
								<button class="button fit small special mainSearch1" id="quick_search">SEARCH</button>

                  </div>

					</div>
				</div>
				
				<div class="7u 12u$(small)">								<!-- 2 가운데 -->
					<span class="image fit a">
					<!-- <span class="mypictureMain"> -->
						<div id="main_bn" style="max-height: 16.8em">
							<li><a href="guide.do"><img src="images/guide_banner.jpg" alt="" /></a></li>		<!-- 이미지 character과 맞추기!!! -->
							<li><a href="tourist.do"><img src="images/tour_banner.jpg" alt="" /></a></li>
							<li><a href="introduceKor.do"><img src="images/korea_banner.jpg" alt="" /></a></li>
							<li><a href="#"><img src="images/character.png" alt="" /></a></li>
						</div>
					</span>
				</div>
				
				<div class="2u$ 12u$(small) mainRight1">					<!-- 3 오른쪽 -->
						<table id="mainRight">
							<tr style="cursor:Pointer;"onclick="">
							  <td><span class="mainRight_span"><img src="images/home.png"></span></td>
							  <th>HOME</th>
							</tr>
							<tr style="cursor:Pointer;"onclick="location.href='introduceSite.do'">
							  <td><span class="mainRight_span"><img src="images/comma.png"></span></td>
							  <th>COMMA</th>
							</tr>
							<tr style="cursor:Pointer;"onclick="location.href='introduceKor.do'">
							  <td><span class="mainRight_span"><img src="images/korea.png"></span></td>
							  <th>KOREA</th>
							</tr>
							<tr style="cursor:Pointer;"onclick="location.href='tourist.do'">
							  <td><span class="mainRight_span"><img src="images/tour.png"></span></td>
							  <th>TOURIST</th>
							</tr>
							<tr style="cursor:Pointer;"onclick="location.href='guide.do'">
							  <td><span class="mainRight_span"><img src="images/guide.png"></span></td>
							  <th>GUIDE</th>
							</tr>
							<tr style="cursor:Pointer;"onclick="location.href='board_list.do'">
							  <td><span class="mainRight_span"><img src="images/commu.png"></span></td>
							  <th>COMMUNITY</th>
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
            <h5>Best Guide 3</h5>
              <c:forEach items="${bestGuide }" var="vo">
               <div id="guideRanking_container">
                  <div id="guideImg">
                  <div class="guideRank_mypicture">
                     <img id="profile" src="http://211.238.142.74:8080/controller/profile/${vo.uservo.user_img }"></div>
                     <div style="color:#3A2525; font-weight: bold;"><img id="guideRanking_ranker" src="images/guideRanking_ranker_img.png">&nbsp;
                     ${vo.num }
                     <c:if test="${vo.num=='1' }">
                     	st
                     </c:if>
                     <c:if test="${vo.num=='2' }">
                     	nd
                     </c:if>
                     <c:if test="${vo.num=='3' }">
                     	rd
                     </c:if>
                     </div>
                  </div>
               
                  <div class="guideRanking_review">                  
                  
                  	<c:forEach var="i" begin="1" end="5">
                  			
                              <c:if test="${vo.reviewvo.review_score<i && vo.reviewvo.review_score>=i-1 }">
                              
                                 <c:forEach var="j" begin="1" end="${i-1 }">
                               		 <i class="fa fa-star" aria-hidden="true"></i>
                                 </c:forEach>
                                 <c:if test="${i<=5 }">
                                 	<c:if test="${vo.reviewvo.review_score-i+1>=0.5 }">
                                 		<i class="fa fa-star-half-o" aria-hidden="true"></i>
                                 		<c:set var="i" value="${i+1 }"/>
                                 	</c:if>
                                 	<c:forEach var="j" begin="${i }" end="5">
                                		<i class="fa fa-star-o" aria-hidden="true"></i>
                                 	</c:forEach>
                                 </c:if>
                            
                              </c:if>

 							

                      </c:forEach>
                      (${vo.reviewvo.review_score })
                      The total number of writing:<font size="2pt" color="blue">${vo.guidevo.guide_no }</font>	<i class="fa fa-pencil" aria-hidden="true"></i> <br>
                      
                      
                      The total number of reviews:<font size="2pt" color="blue">${vo.reviewvo.review_no }</font><i class="fa fa-pencil" aria-hidden="true"></i>
                      
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
                  	<c:if test="${i<=9 }">
                     <li id="li${vo.search_loc }" class="tabControlTab odd" style="margin:0;padding:0;">
                        <span class="spot_num">&nbsp;${i}&nbsp;</span>
                        <p id="loc${vo.search_loc}" class="loc" style="text-transform: uppercase; color:#000;float:none;text-align: left;">&nbsp;&nbsp;${vo.search_loc }</p>
                     </li>
                     </c:if>
                     <c:if test="${i>9 }">
                      <li id="li${vo.search_loc }" class="tabControlTab odd" style="margin:0;padding:0;">
                        <span class="spot_num">${i}</span>
                        <p id="loc${vo.search_loc}" class="loc" style="text-transform: uppercase; color:#000;float:none;text-align: left;">&nbsp;&nbsp;${vo.search_loc }</p>
                      </li>
                     </c:if>
                  </c:if>
                  <c:set var="i" value="${i+1 }"/>                  
               </c:forEach>
            </ul>
            
            <ul class="">            
                  <li class="tabControlBody selected" id="hotspot"></li>
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
                     <h5 style="background-color: #808080; line-height: 2em; margin-bottom:0;">LOCAL WEATHER</h5>
                     <div id="weather">
                        <c:forEach var="vo" items="${wlist }">
                        <li>
                           <img src="${vo.weaAddr }" alt="" />
                           <p style="margin-top:0; font-size: 0.8em;"><b>${vo.loc }</b>&nbsp;&nbsp;${vo.tempera}ºC</p>
                        </li>
                     </c:forEach>
                     </div>
                  </div>

                  <div class="9u$ 12u$(small) thirdPart" id="guideFind">
                     <h5 style="background-color: #ed4933; line-height: 2em; margin-bottom:0;">TOUR REQUEST LIST</h5>
                     <table>
                        <c:forEach var="vo" items="${flist }">
							<tr id="guidefindTr"  style="color:#8D7979;">
								<td style="padding-left:3em; text-align: left;"><b style="color:#8D7979;">${vo.text_loc }</b></td>
								<td style="text-align: center;">${vo.text_tour_date }</td>
								<td style="text-align: right; padding-right:3em;">${vo.text_cost } <b style="color:#8D7979;">KPW</b></td>
								<td style="text-align: right; padding-right:3em;">${vo.user_id }</td>
							</tr>
						</c:forEach>
                     </table>
                  </div>
               </div>
            </div>
         </section>
      </div>
</section>
</body>
</html>
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
      <span><a href="main.do">Comma</a></span>&nbsp;&nbsp;
      <span><a href="introduceKor.do">Introduce Korea</a></span>&nbsp;&nbsp;
      <span><a href="tourist.do">Tour</a></span>&nbsp;&nbsp; 
      <span><a href="guide.do">Guide</a></span>&nbsp;&nbsp; 
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
                  <div style="color: #53565B; font-style: bold">
                  <p><img src="images/search.png">&nbsp;&nbsp;EASY SEARCH</p></div>
                  <input type="text" name="demo-name" id="demo-name" value=""
                     placeholder="SPOT" class="mainSearch1"/> 
                  <input type="text" id="dt" placeholder="DATE" class="mainSearch1"/>
                  <div class="select-wrapper">
                     <select name="demo-category" id="demo-category" class="mainSearch1">
                        <option value="">PEOPLE</option>
                        <option value="1">1 person</option>
                        <option value="2">2 persons</option>
                        <option value="3">3 persons</option>
                        <option value="4">4 persons</option>
                     </select> 
                  <input type="submit" value="SEARCH" class="special mainSearch1" />
                  </div>

					</div>
				</div>
				
				<div class="7u 12u$(small)">								<!-- 2 가운데 -->
					<span class="image fit a">
					<!-- <span class="mypictureMain"> -->
						<div id="main_bn" style="max-height: 16.8em">
							<li><img src="images/guide_banner.jpg" alt="" /></li>		<!-- 이미지 character과 맞추기!!! -->
							<li><img src="images/tour_banner.jpg" alt="" /></li>
							<li><img src="images/korea_banner.jpg" alt="" /></li>
							<li><img src="images/character.png" alt="" /></li>
						</div>
					</span>
				</div>
				
				<div class="2u$ 12u$(small) mainRight1">					<!-- 3 오른쪽 -->
						<table id="mainRight">

							<tr style="cursor:Pointer">
							  <td><span class="mainRight_span"><img src="images/home.png"></span></td>
							  <th>Comma</th>
							</tr>
							<tr style="cursor:Pointer;"onclick="location.href='introduceSite.do'">
							  <td><span class="mainRight_span"><img src="images/comma.png"></span></td>
							  <th>Site</th>
							</tr>
							<tr style="cursor:Pointer;"onclick="location.href='introduceKor.do'">
							  <td><span class="mainRight_span"><img src="images/comma.png"></span></td>
							  <th>Korea</th>
							</tr>
							<tr style="cursor:Pointer;"onclick="location.href='tourist.do'">
							  <td><span class="mainRight_span"><img src="images/korea.png"></span></td>
							  <th>Tour</th>
							</tr>
							<tr style="cursor:Pointer;"onclick="location.href='guide.do'">
							  <td><span class="mainRight_span"><img src="images/guide.png"></span></td>
							  <th>Guide</th>
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
                  <li class="tabControlBody selected" id="hotspot" style="background-color: #BAB6A8;"></li>
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
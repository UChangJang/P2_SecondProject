<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
<title>guideBoard</title>
<!-- bxSlider() 함수 자체가 이상하다고 판단!! 다른곳에 넣는 순간 다른 jquery가 중지됨... -->
<!-- <script type="text/javascript">
	$(function() {
		$('.bxslider').bxSlider();
	});
</script> -->


<script type=text/javascript>

$(function(){
   $('#wish_ok').click(function(){
      var param= "guide_no="+$('#wishwish').val();
      sendMessage("POST", "wish_ok.do", param, wish)
   });
});
function wishok()
{
   if(httpRequest.readyState==4)
   {
      if(httpRequest.status==200)
      {
         $('#tab1').html(httpRequest.responseText);
      }
   }
}	

$(function(){
	var width1=$(window).width();
	var navoffset = $('#guideBoardSide').offset();

	$(window).scroll(function(){  //스크롤하면 아래 코드 실행
		
	       var num = $(this).scrollTop();  // 스크롤값
	       if( num >= 530 && width1>=2000){  			// 스크롤을 36이상 했을 때
	    	   $("#guideBoardSide").css("position","fixed").css("width","13em").css("top","7em");
	    	}
	       if( num >= 530 && width1>1680){  			// 스크롤을 36이상 했을 때
	    	   $("#guideBoardSide").css("position","fixed").css("width","13em").css("top","7em");
	    	}else if(num >= 530 && width1>1280){
	    		   $("#guideBoardSide").css("position","fixed").css("width","12.5em").css("top","7em");
	    	}else if(num >= 530 && width1>1100){
	    		   $("#guideBoardSide").css("position","fixed").css("width","14em").css("top","7em");
	    	}
	    	else if(num >= 530 && width1>980){
	    		   $("#guideBoardSide").css("position","fixed").css("width","16em").css("top","5em");
	    	}else if(num >= 530 && width1>780){
	    		   $("#guideBoardSide").css("position","fixed").css("width","14em").css("top","5em");
	    	}	         
	       
			if(num<530){				//스크롤 값이 낮을때
	          $("#guideBoardSide").css("position","relative").css("width","100%");
	       }  
			
			if(width1<980){				//가로길이 짧아지면 사라지자
				 $(".side2").css("display","none");
			}
	  });
	
	 $('#messageWrite').magnificPopup({
         items :{src:'#message-form',type : 'inline'},
               preloader: false,focus: '#message_content',
               callbacks: {beforeOpen: function() {
                  if($(window).width() < 700) {
                     this.st.focus = false;
                  } else {
                     this.st.focus = '#message_content';
                  }
               }
         }
         
      });
	 
	 $('#reserveBtn').magnificPopup({
         items :{src:'#reserve-form',type : 'inline'},
               preloader: false,focus: '#reservation_person',
               callbacks: {beforeOpen: function() {
                  if($(window).width() < 700) {
                     this.st.focus = false;
                  } else {
                     this.st.focus = '#reservation_person';
                  }
               }
         }
         
      });
	 
	 $('#reserveBtn1').magnificPopup({
         items :{src:'#reserve-form',type : 'inline'},
               preloader: false,focus: '#reservation_person',
               callbacks: {beforeOpen: function() {
                  if($(window).width() < 700) {
                     this.st.focus = false;
                  } else {
                     this.st.focus = '#reservation_person';
                  }
               }
         }
         
      });
	
	 $('#wishBtn').magnificPopup({
         items :{src:'#wish-form',type : 'inline'},
               preloader: false,focus: '#message_content',
               callbacks: {beforeOpen: function() {
                  if($(window).width() < 700) {
                     this.st.focus = false;
                  } else {
                     this.st.focus = '#message_content';
                  }
               }
         }
         
      });
	 
	 $('#msg_btn').click(function(){
		
		 var message_content = $('#message_content').val();
		 if(message_content.trim()==""){
			 $('#message_content').focus();
			 return;
		 }
		 
		 $('#message-form').submit();
	 });
	
	 $('#rsv_btn').click(function(){
		$('#reserve-form').submit();
	 });
	 
	 $('#wish_btn').click(function(){
		$('#wish-form').submit(); 
	 });
	 
}); 

</script>
</head>
<body>


<div id="nav2">
	<ul>
	 	 <li><a class="scrolly" href="#intropeople">가이드소개</a></li>
	 	 <li><a class="scrolly" href="#introplace">관광소개</a></li>
		 <li><a class="scrolly" href="#pic">주요사진</a></li>
		 <li><a class="scrolly" href="#detail">상세정보</a></li>
		 <li><a class="scrolly" href="#mention">후기</a></li>
	</ul>
	
	 <!-- 쪽지보내기 양식 -->
     <form class="white-popup mfp-hide" id="message-form" method="post" action="messageSend.do">
        <h1>Message</h1>
        <div>
           <font color="pink">
           <input name="receive_name" id="receive_name" required="" type="text"
              placeholder="Receive From" style="width:10em;float:left" disabled="disabled" value="${vo.uservo.user_name }"></font>  
           <input name="send_name" id="send_name" required="" type="text"
              placeholder="Send To" style="width:10em;float:right" disabled="disabled" value="${sessionScope.name }">
        </div>
		<br><br>
        <div>
           <textarea placeholder="Message Detail" style="height:15em" name="message_text" id="message_content"></textarea>
        </div>
        <br>
        <div align="center">
           <input value="Send" id="msg_btn" type="button">
        </div>
        
        <input type="hidden" name="message_receive" value="${vo.uservo.user_id }">
      
     </form>
     
     <!-- 예약하기 -->
     <form class="white-popup mfp-hide" id="reserve-form" method="post" action="reserveGuide.do">
        <h1>Reserve Check</h1>
        <div>
       	<table>
       		<tr>
       			<td>Cost:</td>
       			<td><input name="text_cost" id="" required="" type="text"
              placeholder="가격" style="width:12em;float:right" disabled="disabled" value="${vo.text_cost }"></td>
       		</tr>
       		<tr>
       			<td>Date:</td>
       			<td><input name="text_tour_date" id="" required="" type="text"
              placeholder="날짜" style="width:12em;float:right" disabled="disabled" value="${vo.text_tour_date }"></td>
       		</tr>
       		<tr>
       			<td>Location:</td>
       			<td><input name="text_loc" id="" required="" type="text"
              placeholder="여행지" style="width:12em;float:right" disabled="disabled" value="${vo.text_loc }"></td>
       		</tr>
       		<tr>
       			<td>Guide Name:</td>
       			<td><input name="user_name" id="" required="" type="text"
              placeholder="가이드" style="width:12em;float:right" disabled="disabled" value="${vo.uservo.user_name }"></td>
       		</tr>
       		<tr>
       			<td>Reserve People:</td>
       			<td>
       			<div class="select-wrapper">
					<select name="reservation_person" id="reservation_person" style="width:12em;color: pink;background: black;float:right">
						<option value="">- People -</option>
						<option value="1">1명</option>
						<option value="2">2명</option>
						<option value="3">3명</option>
						<option value="4">4명</option>
						<option value="5">5명</option>
						<option value="6">6명</option>
						<option value="7">7명</option>
						<option value="8">8명</option>
						<option value="9">9명</option>					
					</select>
				</div>
				</td>
       		</tr>
       	</table>
       	</div>
        <div align="center">
           <input value="Reserve" id="rsv_btn" type="button">
        </div>
		
		<input type="hidden" name="guide_no" value="${vo.guidevo.guide_no }">
		<input type="hidden" name="user_id" value="${vo.uservo.user_id }">
		
     </form>
     
     <!-- 찜하기 -->
     <form class="white-popup mfp-hide" id="wish-form" method="post" action="wishGuide.do">
        <h1>Wish List Add</h1>
       
        <div align="center">
           <input value="I Wish !" id="wish_btn" type="button">
        </div>
		
		<input type="hidden" name="guide_no" value="${vo.guidevo.guide_no }">
		
     </form>
</div>

<!-- Main -->
<article id="main">
	<header>
		<h2>[제목]서울도심투어</h2>
		<p>재밌는 관광</p>
	</header>
	
	<section class="wrapper style5">
		<div class="inner">
			<!-- <section class="style5"> -->
			<div class="row side0">
				<div class="2u 12u$(small)">								<!-- 1 왼쪽 -->
					<br>
					<div align=center class="mypictureGuide">
					<img src="http://211.238.142.74:8080/controller/profile/${vo.uservo.user_img }">		
						<div class="topBoardShort">
						<a href="guideInfo.do?no=${vo.guidevo.guide_no }">${vo.uservo.user_name }</a>
						</div>							
					</div>
				</div>
				<br>
				<img alt="" src="images/person_g.png" style="padding:0,0,0,0">
				<div>								<!-- 1 왼쪽 -->
					<div id="">
						<div>Total People</div>
						<div class="topBoardShort">${vo.text_total_person } PEOPLE</div>							
					</div>
				</div>
				<img alt="" src="images/time_g.png" style="padding:0,0,0,0">
				<div>								<!-- 1 왼쪽 -->
					<div id="">
						<div>Tour Time</div>		
						<div class="topBoardShort">${vo.text_time } Hours</div>							
					</div>
				</div>
				<img alt="" src="images/vehicle_g.png" style="padding:0,0,0,0">
				<div>								<!-- 1 왼쪽 -->
					<div id="">
						<div>Vehicle</div>		
						<div class="topBoardShort">${vo.text_move }</div>							
					</div>
				</div>
				<div class="3u$ 12u$(small)">	
																
				</div>
				
				
				<div class="9u 12u$(medium) side1">
					<hr id="intropeople"/>
					<h5>Guide Introduce</h5>
					<textarea style="height:20em">${vo.uservo.user_introduce }</textarea>

					<hr id="introplace" />
					<h5>Tour Style</h5>
					<textarea style="height:20em">${vo.guidevo.guide_loc_intro }</textarea>
					
					<hr id="pic"/>
					<h4>Tour Location Image</h4>					
					<span class="image fit a">
					 <div id="main_bn">
					 	<c:forEach var="img" items="${imgList }">
							<li><img src="http://211.238.142.74:8080/controller/image/${img }" alt="" /></li>		
						</c:forEach>
					</div> 
					</span>
					<textarea style="height:20em">${vo.guidevo.guide_detail }</textarea>

					<hr id="detail" />
					<h5>Details</h5>
					<div class="table-wrapper">
						<table>
							<thead>
								<tr>
									<th width="20%">Article</th>
									<th>Detail</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td width="30%">Location</td>
									<td><font color="blue">${vo.text_loc }</font></td>
								</tr>
								<tr>
									<td width="30%">Cost</td>
									<td><font color="blue">${vo.text_cost }</font></td>
								</tr>
								<tr>
									<td width="30%">Include Content</td>
									<td><font color="blue">${vo.guidevo.guide_cost_detail }</font></td>
								</tr>
								<tr>
									<td width="30%">Tour Scale</td>
									<td><font color="blue">${vo.text_total_person }</font></td>
								</tr>
								<tr>
									<td width="30%">Tour Date</td>
									<td><font color="blue">${vo.text_tour_date }</font></td>
								</tr>
								<tr>
									<td width="30%">Tour Time</td>
									<td><font color="blue">${vo.text_time1 }${vo.text_time2 } ~ ${vo.text_time3 }${vo.text_time4 }</font></td>
								</tr>
								<tr>
									<td width="30%">Guide Meeting</td>
									<td><font color="blue">${vo.guidevo.guide_meet }</font></td>
								</tr>
							</tbody>
						</table>
					</div>



					<%-- <hr id="mention"/>
					<h5>후기</h5>
					<div class="box alt">
						<div class="row uniform 50%">
						
						<c:forEach var="i" begin="1" end="5">
							<div class="2u">
								<span class="image fit"> <a href="guideWrite.do"><img
										src="images/banner.jpg" alt="" /></a>
								</span>
							</div>

							<div class="10u">
								<span class="image fit">
									<table class="alt">
										<tr>
											<td>안보영</td>
											<td>별다섯개</td>
										</tr>
										<tr>
											<td colspan=4>멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.</td>
										</tr>
									</table>
								</span>
							</div>
						</c:forEach>
							
						</div>
					</div> --%>

					<hr />
					<c:if test="${confirmId == false }">
					<ul class="actions fit small">
						<li><button class="button special fit small" id="messageWrite">Message To</button></li>
						<li><button class="button fit small" id="reserveBtn">Reserve</button></li>
						<li><button class="button special fit small" id="wishBtn">Wish</button></li>
					</ul>
					</c:if>
					<c:if test="${confirmId == true }">
					<ul class="actions fit small">
						<li><a href="guideUpdate.do?no=${vo.guidevo.guide_no }" class="button special fit small">Update</a></li>
						<li><a href="guideDelete.do?no=${vo.guidevo.guide_no }" class="button fit small">Delete</a></li>
					</ul>	
					</c:if>
				</div>


				<!-- 사이드메뉴! -->
				<div class="3u$ side2">
					<div id="guideBoardSide">
						<div id="reservenow">RESERVE CONTROL</div>	
						<div class="BoardSide1">${vo.guidevo.guide_subject }</div>
						<hr>
						<div class="BoardSide1">Cost:${vo.text_cost }원</div>
						<div class="BoardSide1">Date:${vo.text_tour_date }</div>
						<div class="BoardSide1">PEOPLE:${vo.text_total_person }명</div>
						<div class="BoardSide1">VEHICLE:${vo.text_move }</div>
						<div class="BoardSide1">HIT:${vo.text_hit }</div>
						<div class="BoardSide1"><input type="button" value="reserve" id="reserveBtn1"></div>
					</div>
				</div>
			</div>

		</div>
	</section>
</article>

</body>
</html>
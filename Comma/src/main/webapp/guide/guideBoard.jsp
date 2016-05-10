<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
<title>guideBoard</title>

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

	$(window).scroll(function(){  //��ũ���ϸ� �Ʒ� �ڵ� ����
		
	       var num = $(this).scrollTop();  // ��ũ�Ѱ�
	       if( num >= 530 && width1>=2000){  			// ��ũ���� 36�̻� ���� ��
	    	   $("#guideBoardSide").css("position","fixed").css("width","13em").css("top","7em");
	    	}
	       if( num >= 530 && width1>1680){  			// ��ũ���� 36�̻� ���� ��
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
	       
			if(num<530){				//��ũ�� ���� ������
	          $("#guideBoardSide").css("position","relative").css("width","100%");
	       }  
			
			if(width1<980){				//���α��� ª������ �������
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

function gInfo_frm(){
	
	$('#guideInfo_frm').submit();
}
</script>
</head>
<body>


<div id="nav2">
	<ul>
	 	 <li><a class="scrolly" href="#intropeople">Guide</a></li>
	 	 <li><a class="scrolly" href="#introplace">Location</a></li>
		 <li><a class="scrolly" href="#pic">Picture</a></li>
		 <li><a class="scrolly" href="#detail">Detail</a></li>
		 <li><a class="scrolly" href="#mention">Comments</a></li>
	</ul>
	
	 <!-- ���������� ��� -->
     <form class="white-popup mfp-hide" id="message-form" method="post" action="messageSend.do">
        <h1>Message</h1>
        <div>
           <font color="pink">
           <input name="receive_name" id="receive_name" required="" type="text"
              placeholder="Receive From" style="width:10em;float:left" disabled="disabled" value="${vo.uservo.user_id }"></font>  
           <input name="send_name" id="send_name" required="" type="text"
              placeholder="Send To" style="width:10em;float:right" disabled="disabled" value="${sessionScope.id }">
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
     
     <!-- �����ϱ� -->
     <form class="white-popup mfp-hide" id="reserve-form" method="post" action="reserveGuide.do">
        <h1>Reserve Check</h1>
        <div>
       	<table>
       		<tr>
       			<td>Cost:</td>
       			<td><input name="text_cost" id="" required="" type="text"
              placeholder="Price" style="width:12em;float:right" disabled="disabled" value="${vo.text_cost }"></td>
       		</tr>
       		<tr>
       			<td>Date:</td>
       			<td><input name="text_tour_date" id="" required="" type="text"
              placeholder="Date" style="width:12em;float:right" disabled="disabled" value="${vo.text_tour_date }"></td>
       		</tr>
       		<tr>
       			<td>Location:</td>
       			<td><input name="text_loc" id="" required="" type="text"
              placeholder="Place" style="width:12em;float:right" disabled="disabled" value="${vo.text_loc }"></td>
       		</tr>
       		<tr>
       			<td>Guide Name:</td>
       			<td><input name="user_name" id="" required="" type="text"
              placeholder="Guide" style="width:12em;float:right" disabled="disabled" value="${vo.uservo.user_name }"></td>
       		</tr>
       		<tr>
       			<td>Reserve People:</td>
       			<td>
       			<div class="select-wrapper">
					<select name="reservation_person" id="reservation_person" style="width:12em;color: pink;background: black;float:right">
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
     
     <!-- ���ϱ� -->
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
	<header id="header_guideBoard">
		<br/><br/><br/>
		<h1 style="font-size:2em;">[${vo.guidevo.guide_subject }]</h1>
		<br/>
		<h1 style="font-size:1.5em;"><font color="#0264a3">Guide&nbsp;&nbsp;</font>${vo.uservo.user_id }</h1>
		<br/><br/>
	</header>
	
	<section class="wrapper style5">
		<div class="inner">
			<!-- <section class="style5"> -->
			<div class="row side0">
				<div class="2u 12u$(small)">								<!-- 1 ���� -->
					<br>
					<div align=center class="mypictureGuide">
					<img src="http://211.238.142.74:8080/controller/profile/${vo.uservo.user_img }">		
						<div class="topBoardShort">
						<a href="#" onclick="gInfo_frm()">${vo.uservo.user_nick }</a>
						<form method="post" action="guideInfo.do" id="guideInfo_frm">
							<input type="hidden" name="id" value="${vo.uservo.user_id }">
							<input type="hidden" name="guide_no" value="${vo.guidevo.guide_no }">
						</form>
						</div>							
					</div>
				</div>
				<br>
				<img alt="" src="images/person_g.png" style="padding:0,0,0,0">
				<div>								<!-- 1 ���� -->
					<div id="">
						<div>Total People</div>
						<div class="topBoardShort">${vo.text_total_person } PEOPLE</div>							
					</div>
				</div>
				<img alt="" src="images/time_g.png" style="padding:0,0,0,0">
				<div>								<!-- 1 ���� -->
					<div id="">
						<div>Tour Time</div>		
						<div class="topBoardShort">${vo.text_time } Hours</div>							
					</div>
				</div>
				<img alt="" src="images/vehicle_g.png" style="padding:0,0,0,0">
				<div>								<!-- 1 ���� -->
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
					<textarea style="height:20em" readonly="readonly">${vo.uservo.user_introduce }</textarea>

					<hr id="introplace" />
					<h5>Tour Style</h5>
					<textarea style="height:20em" readonly="readonly">${vo.guidevo.guide_loc_intro }</textarea>
					
					<hr id="pic"/>
					<h4>Tour Location Image</h4>					
					<span class="image fit a">
					 <div id="main_bn">
					 	<c:forEach var="img" items="${imgList }">
							<li><img src="http://211.238.142.74:8080/controller/image/${img }" alt="" /></li>		
						</c:forEach>
					</div> 
					</span>
					<textarea style="height:20em" readonly="readonly">${vo.guidevo.guide_detail }</textarea>
					
					<br><br>
					<!-- ���� -->
					<h4>Meeting Place</h4>
					<div style="height:15em">
					<jsp:include page="../map.jsp"></jsp:include>
					<div id="map_canvas" style="width:100%; height:100%"></div>
					</div>
					
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
									<td><font color="grey">${vo.text_loc }</font></td>
								</tr>
								<tr>
									<td width="30%">Cost</td>
									<td><font color="grey">${vo.text_cost }</font></td>
								</tr>
								<tr>
									<td width="30%">Include Content</td>
									<td><font color="grey">${vo.guidevo.guide_cost_detail }</font></td>
								</tr>
								<tr>
									<td width="30%">Tour Scale</td>
									<td><font color="grey">${vo.text_total_person }</font></td>
								</tr>
								<tr>
									<td width="30%">Tour Date</td>
									<td><font color="grey">${vo.text_tour_date }</font></td>
								</tr>
								<tr>
									<td width="30%">Tour Time</td>
									<td><font color="grey">${vo.text_time1 }${vo.text_time2 } ~ ${vo.text_time3 }${vo.text_time4 }</font></td>
								</tr>
								<tr>
									<td width="30%">Guide Meeting</td>
									<td><font color="grey">${vo.guidevo.guide_meet }</font></td>
								</tr>
							</tbody>
						</table>
					</div>



					

					<hr />
					<c:if test="${confirmId == false }">
					<ul class="actions fit small">
						<li><button class="button special fit small" id="messageWrite">Message To</button></li>
						<c:if test="${ soldCheck==true}">
						<li><button class="button fit small" disabled="disabled">Sold-Out</button></li>
						</c:if>
						<c:if test="${ soldCheck==false}">
						<li><button class="button fit small" id="reserveBtn">Reserve</button></li>
						</c:if>
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


				<!-- ���̵�޴�! -->
				<div class="3u$ side2">
					<div id="guideBoardSide">
						<div id="reservenow">RESERVE CONTROL</div>	
						<hr>
						<div class="BoardSide1 gBoard0">${vo.guidevo.guide_subject }</div>
					
						<table id="guideBoardTable">
							<tr>
							<td class="gBoard">Cost</td>
							<td class="gBoard1">��${vo.text_cost }</td>
							</tr>
							<tr>
							<td class="gBoard">Date</td>
							<td class="gBoard1">${vo.text_tour_date }</td>
							</tr>
							<tr>
							<td class="gBoard">VEHICLE</td>
							<td class="gBoard1">${vo.text_move }</td>
							</tr>
						</table>
						<div class="BoardSide1">
						<c:if test="${sessionScope.id ne vo.uservo.user_id }">
						<c:if test="${soldCheck==false }">
						<input type="button" value="reserve" id="reserveBtn1">
						</c:if>
						</c:if>
						<c:if test="${soldCheck==true }">
						<input type="button" value="SoldOut" style="color:white" disabled="disabled" class="BoardBtn">
						</c:if>
						</div>
					</div>
				</div>
			</div>

		</div>
	</section>
</article>

</body>
</html>
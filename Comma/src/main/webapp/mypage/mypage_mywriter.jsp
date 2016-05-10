<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript" src="../../ajax.js"></script>
<script type="text/javascript">
	$(function(){
		//승인버튼 누를때
		$('.sendMyResBtn').click(function(){
			var temp=$(this).attr('id');	//id=tourRok${vo.touristvo.tour_no}
			var no=temp.substring(7,temp.lastIndexOf('&'));		//tour_no
			var id=temp.substring(temp.lastIndexOf('&')+1);		//id
			var param="no="+no+"&id="+id;
			
			//param=no=1&nick=인천사람
			sendMessage("POST", "mytourresv.do", param, mytourresok);	
		});
	});

	
	function mytourresok(){					
		if(httpRequest.readyState==4){			
			if(httpRequest.status==200){	
		var temp=httpRequest.responseText;
		
		var user_id=temp.substring(0,temp.lastIndexOf(','));
		var tour_no=temp.substring(temp.lastIndexOf(',')+1);
		var res="["+user_id+"] is selected for your trip!"
		$('#tourRP'+tour_no).text(res);
			}
		}
	}
</script>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>

</head>
<body>
	<section class="wrapper style5">
	<div class="inner">
		<section id="tabs">

		<div class="tab1">
			<a href="#">Guide</a>
		</div>
		<div class="tab2">
			<a href="#">Tourist</a>
		</div>

		<div class="box alt table-wrapper tabscontents t1">					<!-- 1. guide -->
			<table class="alt">
				<thead>
					<tr>
						<th width="10%">No</th>
						<th width="10%">Local</th>
						<th width="30%">Title</th>
						<th width="10%">WriteDate</th>
						<th width="7%">People</th>
						<th width="7%">Delete</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="guidevo" items="${guidevo }">
					<form action="guideBoard.do" id="myGuideFtn${guidevo.guidevo.guide_no }" method="post" >
					    <input type="hidden" value="${guidevo.guidevo.guide_no }" name="no">
					</form>
					<tr>					
						<td>${guidevo.guidevo.guide_no }</td>	<!-- 목록내 번호 -->
						<td>${guidevo.text_loc }</td>
						<td  id="myGuide${guidevo.guidevo.guide_no }" class="myGuide" style="cursor: pointer;">${guidevo.guidevo.guide_subject }</td>
						<td><fmt:formatDate value="${guidevo.text_regdate }" pattern="yy/MM/dd"/></td>
						<td class="mytourRBtn">
						<input style="box-shadow: inset 0 0 0;" type="button" value="${guidevo.guidevo.reservation_person }/${guidevo.text_total_person }" 
							class=guideResViewBtn id="guideResBtn${guidevo.guidevo.guide_no }">
						</td>
						<td><input type="button" value="Delete" class="guideDelwritten" id="guideDelwrite${guidevo.guidevo.guide_no }"></td>
						<form method="post" action="mypage_mywriter_gDel.do?no=" id="frm_wrgD" name="guideDelmypage"></form>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		
		<div class="box alt table-wrapper tabscontents t2">				<!-- 2. tourist -->
			<table class="alt">
				<thead>
					<tr>
						<th width="10%">No</th>
						<th width="10%">Local</th>
						<th width="30%">Theme</th>
						<th width="10%">WriteDate</th>
						<th width="7%">Reserve</th>
						<th width="7%">Delete</th>
					</tr>
				</thead>
				
				<tbody>
					<c:forEach var="vo" items="${touristvo }">
						<tr id="boyoung">
							<td>${vo.touristvo.tour_no }</td>
							<!-- 목록내 번호 -->
							<td>${vo.text_loc }</td>
							<td id="myTour${vo.touristvo.tour_no }" class="myTour" style="cursor: pointer;">${vo.touristvo.tour_theme }</td>
							<td><fmt:formatDate value="${vo.text_regdate }"
									pattern="yy/MM/dd" /></td>
							<td class="mytourRBtn">
								<input style="box-shadow: inset 0 0 0;" type="button" value="${vo.touristvo.reservation_person }"
								class=tourResViewBtn id="tourResBtn${vo.touristvo.tour_no }">
							</td>
							<td><input type="button" value="Delete" class="tourDelwritten" id="tourDelwrite${vo.touristvo.tour_no }"></td>
							<!-- <form method="post" name="tourDelmypage"></form> -->
							<form method="post" action="mypage_mywriter_tDel.do?no=" id="frm_wrtD" name="tourDelmypage"></form>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		</section>
	</div>

	<!-- 예약자 관광객 명단 --> 
	<c:forEach var="vo" items="${touristvo }">
		<form class="resMy white-popup mfp-hide"
			id="tourRok1${vo.touristvo.tour_no}" method="post"
			action="mytourresv.do">
			<h1>Reserve List</h1>
			<table>
				<c:forEach var="vo1" items="${vo.tourresvo }">
					<tr>
						<td align="center">${vo1.user_nick }[${vo1.user_id }]</td>
						<td>${vo1.user_sex }</td>
						<td align="center">${vo1.user_birth }</td>
						<td>${vo1.reservation_check }</td>
						<td>
							<input type="button" value="permission" class="sendMyResBtn" id="tourRok${vo.touristvo.tour_no}&${vo1.user_id }">
						</td>
					</tr>
				</c:forEach>
				<tr>
					<td id="tourRP${vo.touristvo.tour_no}" colspan=5 style="text-align:center;">
						Select or Change a guide for your trip!
					</td>
				</tr>
			</table>
		</form>
	</c:forEach>
	
	<!-- 예약자 가이드 명단 -->
	<c:forEach var="vo" items="${guidevo }">
		<form class="resMy white-popup mfp-hide" method="post" id="guideRok1${vo.guidevo.guide_no }" action="#">
		<h1>${vo.guidevo.guide_no } Reserve List</h1>
		<table>
			<tr align=center>
				<th>Name</th>
				<th>ID</th>
				<th>PEOPLE</th>
			</tr>
			<c:forEach var="res" items="${guideResvo }">
			<c:if test="${res.guidevo.guide_no eq vo.guidevo.guide_no }">
			<tr>
				<td>${res.uservo.user_name }</td>
				<td>${res.uservo.user_id }</td>
				<td>${res.reservationvo.reservation_person }</td>
			</tr>
			</c:if>
			</c:forEach>
		</table>
		</form>
	</c:forEach>
	<c:forEach var="tourvo" items="${touristvo }">
	                <form class="white-popup mfp-hide" id="tourPopUp${tourvo.touristvo.tour_no }">
	                  <h1>TourDetail</h1>
	                    <table>
	                     	<tr>
	                     	  <td width="30%" align="right">tour</td>
	                     	  <td width="70%" align="left">${tourvo.uservo.user_id}</td>
	                     	</tr>
	                     	<tr>
	                     	  <td width="30%" align="right">tour date</td>
	                     	  <td width="70%" align="left">${tourvo.text_tour_date }</td>
	                     	</tr>
	                     	<tr>
	                     	  <td width="30%" align="right">tour time</td>
	                     	  <td width="70%" align="left">${tourvo.text_time1 }${tourvo.text_time2 }~${tourvo.text_time3 }${tourvo.text_time4 }</td>
	                     	</tr>
	                     	<tr>
	                     	  <td width="30%" align="right">cost</td>
	                     	  <td width="70%" align="left">${tourvo.text_cost }</td>
	                     	</tr>
	                     	
	                     	<tr>
	                     	  <td width="30%" align="right">method</td>
	                     	  <td width="70%" align="left">${tourvo.text_move }</td>
	                     	</tr>
	                     	<tr>
	                     	  <td width="30%" align="right">people</td>
	                     	  <td width="70%" align="left">${tourvo.text_total_person }</td>
	                     	</tr>	                     
	                     	
	                     	<tr>
	                     	  <td colspan="2" align="center">내용</td>
	                     	</tr>
	                     	<tr>
	                     	  <td colspan="2"><textarea rows="5" readonly="readonly">${tourvo.touristvo.tour_detail}</textarea></td>
	                     	</tr>
	                     </table>         
	               </form> 
	               </c:forEach>  
	</section>


	<script async src="//jsfiddle.net/cosmosjs/xQ8JC/3/embed/"></script>
	<script type="text/javascript">
		$('.t1').show();

		$('#tabs div a').on(
				'click',
				function() {
					// alert('');
					index = $(this).parent().index() + 1;
					if (index == 3) {
						index = 2;
					}
					$('#tabs div a').css('background-color', '#999')
							.removeClass('active')
					$('.tabscontents').hide();

					$('.t' + index).fadeIn();
					$(this).css('background-color', '#000').addClass('active');
				});
		
		$('.tourResViewBtn').click(function() {
			var id = $(this).attr('id');
			var no = id.substring(10);
			$.magnificPopup.open({
				items : {
					src : '#tourRok1' + no,
					type : 'inline'
				},
				preloader : false,
				focus : '#name',
				callbacks : {
					beforeOpen : function() {
						if ($(window).width() < 700) {
							this.st.focus = false;
						} else {
							this.st.focus = '#messageTextarea';
						}
					}
				}

			});


		});
		
		$('.guideResViewBtn').click(function() {
			var id = $(this).attr('id');
			var no = id.substring(11);
			$.magnificPopup.open({
				items : {
					src : '#guideRok1' + no,
					type : 'inline'
				},
				preloader : false,
				focus : '#name',
				callbacks : {
					beforeOpen : function() {
						if ($(window).width() < 700) {
							this.st.focus = false;
						} else {
							this.st.focus = '#messageTextarea';
						}
					}
				}

			});


		});
		
		
		
		
		$('.myGuide').click(function(){
			var id=$(this).attr('id');
			var no=id.substring(7);			
			$('#myGuideFtn'+no).submit();
			
			
		});

	
		
		$('.guideDelwritten').click(function(){
			var id = $(this).attr('id');
			var no = id.substring(13);
			
			//alert(no);
			
			var c = $('#frm_wrgD').attr('action');
			var param = c+no;
			$('#frm_wrgD').attr('action',param);
			$('#frm_wrgD').submit();
			
		});
		
		$('.tourDelwritten').click(function(){
			var id = $(this).attr('id');
			var no = id.substring(12);
			var c = $('#frm_wrtD').attr('action');
			var param = c+no;
			
			$('#frm_wrtD').attr('action',param);
			$('#frm_wrtD').submit();
			
		});
		$('.myTour').click(function(){
			var id=$(this).attr('id');
			var no = id.substring(6);
			$.magnificPopup.open({
				items : {
					src : '#tourPopUp'+no,
					type : 'inline'
				},
				preloader : false,
				focus : '#name',
				callbacks : {
					beforeOpen : function() {
						if ($(window).width() < 700) {
							this.st.focus = false;
						} else {
							this.st.focus = '#messageTextarea';
						}
					}
				}

			});
		})
		

	</script>
</body>
</html>
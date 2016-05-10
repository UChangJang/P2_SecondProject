<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	$('#deleteBtn').click(function(){
		
		$('#frm').submit();
	});
	
});
</script>
</head>
<body>
	<section class="wrapper style5">
	<div class="inner">
		<section id="tabs">

		<div class="tab1">
			<a id="tab1_a" href="#">Guide Wish</a>
		</div>
		<div class="tab2">
			<a id="tab2_a" href="#">Tour Wish</a>
		</div>

		<div class="box alt table-wrapper tabscontents t1">
			<table class="alt">
				<thead>
					<tr>
						<th width="10%">No</th>
						<th width="30%">title</th>
						<th width="10%">Nickname</th>
						<th width="10%">Date</th>
						<th width="7%">Subscriber/People</th>
						<th width="7%">Delete</th>
					</tr>
				</thead>
				<tbody>	  
				
				<c:forEach var="guidevo" items="${guidevo }">
				
					<tr>
					
						<td>${guidevo.guidevo.guide_no }</td>
						
						<td id="guideText${guidevo.guidevo.guide_no }" class="guideText" style="cursor: pointer">
							<form action="guideBoard.do?no=${guidevo.guidevo.guide_no }" id="wishGuide${guidevo.guidevo.guide_no }" method="post">
								${guidevo.guidevo.guide_subject }
							</form>
						</td>
						
						<td>${guidevo.uservo.user_nick }</td>
						<td>
						<fmt:formatDate value="${guidevo.text_regdate }" pattern="yy/MM/dd"/>
						</td>

						<td>${guidevo.reservationvo.reservation_person}/${guidevo.text_total_person}</td>	
							
						<td>
						<form action="wishlist_guide_delete.do?gwish_no=${guidevo.wishvo.wish_no }"  method="post" id="wishGuideDeleteFrm${guidevo.wishvo.wish_no }">
							<input type="button" value="Delete" id="wishGuideDelete${guidevo.wishvo.wish_no }" class="wishGuideDelete" > 
						</form>
						</td>
					</tr>
					
					</c:forEach>
					
				</tbody>
			</table>
		</div>
		
		<div class="box alt table-wrapper tabscontents t2">
			<table class="alt">
				<thead>
					<tr>
						<th width="10%">No</th>
						<th width="30%">title</th>
						<th width="10%">Nickname</th>
						<th width="10%">Date</th>
						<th width="7%">Subscriber/People</th>
						<th width="7%">Delete</th>
					</tr>
				</thead>
				<tbody>
				
				<c:forEach var="tourvo" items="${tourvo }">
					<tr>
						<td>${tourvo.wishvo.wish_no }</td>
						<td id="tour${tourvo.wishvo.wish_no }" class="tourDetatil" style="cursor: pointer;">${tourvo.touristvo.tour_theme }</td>
						<td>${tourvo.uservo.user_nick }</td>
						<td>
						${tourvo.text_tour_date }
						</td>
						<td>${tourvo.reservationvo.reservation_person}/${tourvo.text_total_person}</td>
						<td>
						<form action="wishlist_tour_delete.do?twish_no=${tourvo.wishvo.wish_no }" id="wishTourDeleteFrm${tourvo.wishvo.wish_no }" method="POST">
							<input type="button" value="Delete" id="wishTourDelete${tourvo.wishvo.wish_no }" class="wishTourDelete">
						</form></td>
					</tr>
					</c:forEach>
						
				</tbody>
			</table>
		</div>
		<c:forEach var="tourvo" items="${tourvo }">
	                <form class="white-popup mfp-hide" id="tourPopUp${tourvo.wishvo.wish_no }">
	                  <h1>TourDetail</h1>
	                    <table>
	                     	<tr>
	                     	  <td width="30%" align="right">tour</td>
	                     	  <td width="70%" align="left">${tourvo.uservo.user_nick}</td>
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
	                     	  <td colspan="2" align="center">Content</td>
	                     	</tr>
	                     	<tr>
	                     	  <td colspan="2"><textarea rows="5" readonly="readonly">${tourvo.touristvo.tour_detail}</textarea></td>
	                     	</tr>
	                     </table>         
	               </form> 
	               </c:forEach>  

		
		</section>
	</div>
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
		$('.tourDetatil').click(function(){
			
			var id=$(this).attr('id');
			var no=id.substring(4);
			  $.magnificPopup.open({
			        items :{src:'#tourPopUp'+no,type : 'inline'},
			              preloader: false,focus: '#name',
			              callbacks: {beforeOpen: function() {
			                 if($(window).width() < 700) {
			                    this.st.focus = false;
			                 } else {
			                    this.st.focus = '#name';
			                 }
			              }
			        }

			     });
		})
		$('.guideText').click(function(){
			var id=$(this).attr('id');
			var no=id.substring(9);
			$('#wishGuide'+no).submit();
						
		})
		$('.wishGuideDelete').click(function(){
			var id=$(this).attr('id')
			var no=id.substring(15);
			$('#wishGuideDeleteFrm'+no).submit();
		})
		$('.wishTourDelete').click(function(){
			var id=$(this).attr('id')
			var no=id.substring(14);
			$('#wishTourDeleteFrm'+no).submit();
		})
	</script>
</body>
</html>
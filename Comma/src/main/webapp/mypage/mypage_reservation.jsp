<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>

</head>
<body>
	<section class="wrapper style5">
	<div class="inner">
		<section id="tabs">

		<div class="tab1">
			<a href="#">Guide Reservation</a>
		</div>
		<div class="tab2">
			<a href="#">Tour Reservation</a>
		</div>

		<div class="box alt table-wrapper tabscontents t1">
			<table class="alt">
				<thead>
					<tr>
						<th width="7%">No</th>
						<th width="10%">Loc</th>
						<th width="20%">Title</th>
						<th width="10%">Gudie</th>
						<th width="10%">Date</th>
						<th width="7%">Total</th>
						<th width="7%">Del</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="vo" items="${guidevo }">
					<tr>
						<td width="7%" align="center">${vo.guidevo.guide_no }</td>
						<td width="10%">${vo.text_loc }</td>
						<td width="20%" align="center">
							<a href="guideBoard.do?no=${vo.guidevo.guide_no }">${vo.guidevo.guide_subject }</a></td>
						<td width="10%" align="center">${vo.uservo.user_id }</td>
						<td width="10%" align="center">${vo.text_tour_date }</td>
						<td width="7%" align="center">${vo.num}/${vo.text_total_person }</td>
						<td width="7%"><input type="button" value="Del" class="reserve_gDel" id="reserveDelg${vo.guidevo.guide_no }"></td>
						<form method="post" name="reserve_gDel_frm" action="mypage_reserve_gDel.do?no=" id="frm_resD"></form>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
		
		<div class="box alt table-wrapper tabscontents t2">
			<table class="alt">
				<thead>
					 <tr>
						<th width="7%">No</th>
						<th width="10%">Loc</th>
						<th width="10%">Theme</th>
						<th width="10%">Tourist</th>
						<th width="10%">Date</th>
						<th width="7%">Y/N</th>
						<th width="7%">Del</th>
					</tr>
				</thead>
				<tbody>
				  <c:forEach var="vo" items="${tourvo }">
					<tr>
						<td width="7%" align="center">${vo.touristvo.tour_no }</td>
						<td width="10%" align="center" >${vo.text_loc }</td>
						<td width="10%" align="center" id="tour${vo.touristvo.tour_no }" class="tourDetatil" style="cursor: pointer;">${vo.touristvo.tour_theme }</td>
						<td width="10%" align="center">${vo.uservo.user_id }</td>
						<td width="10%" align="center">${vo.text_tour_date }</td>
						<td width="7%" align="center">${vo.reservationvo.reservation_check }</td>
						<td width="7%"><input type="button" value="Del" class="reserve_tDel" id="reserveDelt${vo.touristvo.tour_no }"></td>
						<form method="post" name="reserve_tDel_frm" action="mypage_reserve_tDel.do?no=" id="frm_resT"></form>
					</tr>
				  </c:forEach>
				</tbody>
			</table>
		</div>
		

		<c:forEach var="tourvo" items="${tourvo }">
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
		
		$('.reserve_gDel').click(function(){
			
			var id = $(this).attr('id');
			var no = id.substring(11);

			var c = $('#frm_resD').attr('action');
			var param = c+no;
			$('#frm_resD').attr('action',param);
			$('#frm_resD').submit();
			
		    /* var m = document.reserve_gDel_frm;
			m.action = "mypage_reserve_gDel.do?no="+no;
			m.submit(); */
			
		});
		
		$('.reserve_tDel').click(function(){
			
			var id = $(this).attr('id');
			var no = id.substring(11);
			
			//alert(no);
			
			var c = $('#frm_resT').attr('action');
			var param = c+no;
			
			$('#frm_resT').attr('action',param);
			$('#frm_resT').submit();
			
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

	</script>
</body>
</html>
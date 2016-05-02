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
			<a href="#">가이드 예약</a>
		</div>
		<div class="tab2">
			<a href="#">관광객 예약</a>
		</div>

		<div class="box alt table-wrapper tabscontents t1">
			<table class="alt">
				<thead>
					<tr>
						<th width="7%">번호</th>
						<th width="25%">제목</th>						
						<th width="10%">별명</th>
						<th width="10%">날짜</th>
						<th width="7%">인원</th>
						<th width="7%">상태</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="guidevo" items="${guidevo }">
					<tr>
						<td width="5%" align="center">${guidevo.guidevo.guide_no }</td>
						<td width="15%">${guidevo.guidevo.guide_subject }</td>
						<td width="10%" align="center">${guidevo.uservo.user_nick }</td>
						<td width="20%" align="center">${guidevo.text_tour_date }</td>
						<td width="15%" align="center">${guidevo.reservationvo.reservation_person } / ${guidevo.text_total_person }</td>
						<td width="10%" align="center">${guidevo.text_end }</td>
						<td width="25%"><input type="button" value="삭제"></td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
		
		<div class="box alt table-wrapper tabscontents t2">
			<table class="alt">
				<thead>
				 
					<tr>
						<th width="7%">번호</th>
						<th width="25%">제목</th>						
						<th width="10%">별명</th>
						<th width="10%">날짜</th>
						<th width="7%">인원</th>
						<th width="7%">상태</th>
					</tr>
				
				</thead>
				<tbody>
				  <c:forEach var="tourvo" items="${tourvo }">
					<tr>
						<td width="5%" align="center">${tourvo.touristvo.tour_no }</td>
						<td width="15%">${tourvo.touristvo.tour_theme }</td>
						<td width="10%" align="center">${tourvo.uservo.user_nick }</td>
						<td width="20%" align="center">${tourvo.text_tour_date }</td>
						<td width="15%" align="center">${tourvo.reservationvo.reservation_person } / ${vo.text_total_person }</td>
						<td width="10%" align="center">${tourvo.text_end }</td>
						<td width="25%"><input type="button" value="삭제"></td>
					</tr>
				  </c:forEach>
				</tbody>
			</table>
		</div>

		
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
	</script>
</body>
</html>
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

</head>
<body>
	<section class="wrapper style5">
	<div class="inner">
		<section id="tabs">

		<div class="tab1">
			<a href="#">가이드 위시리스트</a>
		</div>
		<div class="tab2">
			<a href="#">관광객 위시리스트</a>
		</div>

		<div class="box alt table-wrapper tabscontents t1">
			<table class="alt">
				<thead>
					<tr>
						<th width="10%">번호</th>
						<th width="30%">제목</th>
						<th width="10%">별명</th>
						<th width="10%">작성일</th>
						<th width="7%">예약자/총인원</th>
						<th width="7%">삭제</th>
					</tr>
				</thead>
				<tbody>	  
				<c:forEach var="guidevo" items="${guidevo }">
					<tr>
						<td>${guidevo.wishvo.wish_no }</td>
						<td id="guideText" class="guideTextTd${guidevo.wishvo.wish_no }" style="cursor: pointer">
						<a href="../controller/guideBoard.do?no=${guidevo.guidevo.guide_no }">${guidevo.guidevo.guide_subject }</a>
						</td>
						<td>${guidevo.uservo.user_nick }</td>
						<td>
						<fmt:formatDate value="${guidevo.text_regdate }" pattern="yy/MM/dd"/>
						</td>
						<td>${guidevo.reservationvo.reservation_person}/${guidevo.text_total_person}</td>
						<td><a href="mypage_wishlist_delete.do?no=${guidevo.wishvo.wish_no }">
						<input type="button" value="삭제"></a></td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		
		<div class="box alt table-wrapper tabscontents t2">
			<table class="alt">
				<thead>
					<tr>
						<th width="10%">번호</th>
						<th width="30%">제목</th>
						<th width="10%">별명</th>
						<th width="10%">날짜</th>
						<th width="7%">예약자/총인원</th>
						<th width="7%">삭제</th>
					</tr>
				</thead>
				<tbody>
				
				<c:forEach var="tourvo" items="${tourvo }">
					<tr>
						<td>${tourvo.wishvo.wish_no }</td>
						<td>${tourvo.touristvo.tour_theme }</td>
						<td>${tourvo.uservo.user_nick }</td>
						<td>
						<fmt:formatDate value="${tourvo.text_regdate }" pattern="yy/MM/dd"/>
						</td>
						<td>${tourvo.reservationvo.reservation_person}/${tourvo.text_total_person}</td>
						<td><input type="button" value="삭제"></td>
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
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
			<a href="#">���̵� ���ø���Ʈ</a>
		</div>
		<div class="tab2">
			<a href="#">������ ���ø���Ʈ</a>
		</div>

		<div class="box alt table-wrapper tabscontents t1">
			<table class="alt">
				<thead>
					<tr>
						<th width="10%">��ȣ</th>
						<th width="30%">����</th>
						<th width="10%">����</th>
						<th width="10%">��¥</th>
						<th width="7%">������/���ο�</th>
						<th width="7%">����</th>
					</tr>
				</thead>
				<tbody>	  
				<c:forEach var="vo" items="${vo }">
					<tr>
						<td>${vo.wish_no }</td>
						<td>${vo.guidevo.guide_subject }</td>
						<td>${vo.uservo.user_nick }</td>
						<td>
						<fmt:formatDate value="${vo.textvo.text_regdate }" pattern="yy/MM/dd"/>
						</td>
						<td>${vo.reservationvo.reservation_person}/${vo.textvo.text_total_person}</td>
						<td><input type="button" value="����"></td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		
		<div class="box alt table-wrapper tabscontents t2">
			<table class="alt">
				<thead>
					<tr>
						<th width="10%">����1</th>
						<th width="30%">����1</th>
						<th width="10%">����1</th>
						<th width="10%">��¥1</th>
						<th width="7%">�ο�1</th>
						<th width="7%">����1</th>
					</tr>
				</thead>
				<tbody>
				
					<tr>
						<td>zz</td>
						<td>���� ��ȭ ����</td>
						<td>����</td>
						<td>2016-4-20</td>
						<td>5��</td>
						<td><input type="button" value="����"></td>
					</tr>	
						
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
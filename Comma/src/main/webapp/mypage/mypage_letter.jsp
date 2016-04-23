<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<section class="wrapper style5">
	<div class="inner">
		<section id="tabs">
		
			<div class="tab1"><a href="#">���� ����</a></div>
			<div class="tab2"><a href="#">���� ����</a></div>
			
			<div class="table-wrapper tabscontents t1">
				<table class="alt">
					<thead>					
						<tr>
							<th width="10%">����</th>
							<th width="40%">����</th>
							<th width="10%">����</th>
							<th width="10%">��¥</th>
							<th width="7%">����</th>
						</tr>					
					</thead>
					<tbody>
					<c:forEach var="recvo" items="${recvo }">
						<tr>
							<td>${recvo.message_check }</td>
							<td>${recvo.message_text }</td>
							<td>${recvo.message_send }</td>
							<td>${recvo.message_time }</td>
							<td><input type="button" value="����"></td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
			
			<div class="table-wrapper tabscontents t2">
				<table class="alt">
					<thead>
						<tr>
							<th width="10%">����1</th>
							<th width="40%">����1</th>
							<th width="10%">����1</th>
							<th width="10%">��¥1</th>
							<th width="7%">����1</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach var="sendvo" items="${sendvo }">
						<tr>
							<td>${sendvo.message_check }</td>
							<td>${sendvo.message_text }</td>
							<td>${sendvo.message_receive }</td>
							<td>${sendvo.message_time }</td>
							<td><input type="button" value="����"></td>
						</tr>
					</c:forEach>						
					</tbody>
				</table>
			</div>
			</div>
		</section>
	</div>
	</section>
	
	
	<script async src="//jsfiddle.net/cosmosjs/xQ8JC/3/embed/"></script>
	<script type="text/javascript">
		$('.t1').show();

		$('#tabs div a').on('click',
				function() {
					// alert('');
					index = $(this).parent().index() + 1;
					if(index==3){
						index=2;
					}
					$('#tabs div a').css('background-color', '#999').removeClass('active')
					$('.tabscontents').hide();
					
					$('.t' + index).fadeIn();
					$(this).css('background-color', '#000').addClass('active');
				});
	</script>

</body>
</html>
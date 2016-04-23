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
			<a href="#">�ı� ����</a>
		</div>
		<div class="tab2">
			<a href="#">���� �ı� ����</a>
		</div>


		<div class="box alt table-wrapper tabscontents t1">
			<div class="row uniform 50%">
				<div class="2u">
					<span class="image fit"> <a href="guideWrite.jsp"><img
							src="../images/banner.jpg" alt="" /></a>
					</span>
				</div>

				<div class="10u">
					<span class="image fit">
						<table class="alt">
							<tr>
								<td>�Ⱥ���</td>
								<td>���ټ���</td>
							</tr>
							<tr>
								<td colspan=4>���������̾����ϴ�.���������̾����ϴ�.���������̾����ϴ�.</td>
							</tr>
						</table>
					</span>
				</div>

				<div class="2u">
					<span class="image fit"> <a href="guideWrite.jsp"><img
							src="../images/banner.jpg" alt="" /></a>
					</span>
				</div>

				<div class="10u">
					<span class="image fit">
						<table class="alt">
							<tr>
								<td>�Ⱥ���</td>
								<td>���ټ���</td>
							</tr>
							<tr>
								<td colspan=4>���������̾����ϴ�.���������̾����ϴ�.���������̾����ϴ�.���������̾����ϴ�.
									���������̾����ϴ�.���������̾����ϴ�.���������̾����ϴ�.���������̾����ϴ�.
									���������̾����ϴ�.���������̾����ϴ�.���������̾����ϴ�.���������̾����ϴ�.</td>
							</tr>
						</table>
					</span>
				</div>

				<div class="2u">
					<span class="image fit"> <a href="guideWrite.html"><img
							src="../images/banner.jpg" alt="" /></a>
					</span>
				</div>

				<div class="10u">
					<span class="image fit">
						<table class="alt">
							<tr>
								<td>�Ⱥ���</td>
								<td>���ټ���</td>
							</tr>
							<tr>
								<td colspan=4>���������̾����ϴ�.���������̾����ϴ�.���������̾����ϴ�.���������̾����ϴ�.
									���������̾����ϴ�.���������̾����ϴ�.���������̾����ϴ�.���������̾����ϴ�.
									���������̾����ϴ�.���������̾����ϴ�.���������̾����ϴ�.���������̾����ϴ�.</td>
							</tr>
						</table>
					</span>
				</div>

			</div>
		</div>



		<div class="table-wrapper tabscontents t2">
			<table class="alt">
				<thead>
					<tr>
						<th width="30%">����</th>
						<th width="10%">����</th>
						<th width="10%">����</th>
						<th width="7%">�ı�</th>
						
					</tr>
				</thead>
				<tbody>
				<c:forEach var="vo" items="${vo }">
					<tr>
						<td>������</td>
						<td>${vo.user_id }</td>
						<td>${vo.review_score }</td>
						<td><input type="button" value="����"></td>
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
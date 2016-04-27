<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<section class="wrapper style5" id="two">		<!-- tourist����Ʈ 5���� -->
		<div class="inner">	
			<h4>���̵帮��Ʈ</h4>
			
			
			<div class="box alt">
					<div class="row uniform 50%">
						<c:forEach var="vo" items="${list }">
						<div class="3u">					<!-- ���� -->
							<span class="image fit">
								<img src="../controller/images/pic01.jpg" alt=""/><!-- �̹������� -->
							</span>	
						</div>
						<div class="9u">					<!-- ����Ʈ -->
							<span class="image fit c">
								<table class="plusDetail" id="d3" >	<!-- #d3 �̷������� ���� -->
									<tr>
										<td colspan=3>[]${vo.tour_theme }</td>
									</tr>
									<tr>
										<td>��¥</td>
										<td>����am~��pm</td>
										<td>�츮�ο���</td>
									</tr>
									<tr>
										<td>�г���(${vo.uservo.user_id })</td>
										<td>����(����)</td>
										<td>${vo.touristvo.text_cost }</td>
									</tr>
								</table>
							</span>	
						</div>
						
						<!-- �󼼺���1 �󼼺���1 �󼼺���1 �󼼺���1 �󼼺���1 �󼼺���1 �󼼺���1 �󼼺���1 �󼼺���1 �󼼺���1 -->
						<div class="3u 12u$(xsmall) dd3" style="display:none"></div>
						<div class="9u$ 12u$(xsmall) dd3" style="display:none">					<!-- ����Ʈ -->
							<div id="detail_textarea">
								<textarea>${vo.tour_detail }</textarea>
							</div>
							<div id="detail_textarea1"> 
								<span><button class="button tourB">Message</button></span>
								<span><button class="button tourB">WishList</button></span>
								<span><button class="button tourB">Reserve</button></span>
							</div>
						</div>
						</c:forEach>
				</div>
			</div>
			
			
			
		</div>
	</section>


	<!-- ���γ��� �߰� jquery -->
	<script type="text/javascript">
		var d = 0;

		$(function() {
			$('.plusDetail').click(function() {
				var id = $(this).attr('id'); //id���� ������
				var no = id.substring(1); //d1 d2 d3...
				if (d == 0) {
					$('.dd' + no).show();
					d = 1;
				} else {
					$('.dd' + no).hide();
					d = 0;
				}
			});
		});
	</script>

</body>
</html>
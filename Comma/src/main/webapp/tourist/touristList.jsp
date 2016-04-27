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
								<table class="plusDetail" id="d${vo.touristvo.tour_no}" >	<!-- #d3 �̷������� ���� -->
									<tr>
										<td colspan=3>[${vo.text_loc}]${vo.touristvo.tour_theme }</td>
									</tr>
									<tr>
										<td>���¥:${vo.text_tour_date}</td>
										<td>${vo.text_time1 }~${text_time2}</td>
										<td>${vo.text_total_person}�� </td>
									</tr>
									<tr>
										<td>${vo.uservo.user_nick}(${vo.touristvo.user_id })</td>
										<td>����:${vo.uservo.user_sex}</td>
										<td>${vo.text_cost }��</td>
									</tr>
								</table>
							</span>	
						</div>
						
						<!-- �󼼺���1 �󼼺���1 �󼼺���1 �󼼺���1 �󼼺���1 �󼼺���1 �󼼺���1 �󼼺���1 �󼼺���1 �󼼺���1 -->
						<div class="3u 12u$(xsmall) dd${vo.touristvo.tour_no}" style="display:none"></div>
						<div class="9u$ 12u$(xsmall) dd${vo.touristvo.tour_no}" style="display:none">					<!-- ����Ʈ -->
							<div id="detail_textarea">
								<textarea>${vo.touristvo.tour_detail }</textarea>
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
			
			<!-- ������ ��Ʈ�� -->
			<table id="table_content">
			<tr>
				<td align=right>
					<a href="board_list.do?page=${curpage>1?curpage-1:curpage }">
					<img src="user/board/image/prev.gif" border=0></a>&nbsp;
					
					<a href="board_list.do?page=${curpage<totalpage?curpage+1:curpage }">
					<img src="user/board/image/next.gif" border=0></a>&nbsp;
					${curpage} page / ${totalpage } pages 
				</td>
			</tr>
		</table>
			
			
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
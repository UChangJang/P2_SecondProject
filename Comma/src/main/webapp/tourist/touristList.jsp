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
	<section class="wrapper style5" id="two">		<!-- tourist리스트 5개씩 -->
		<div class="inner">	
			<h4>가이드리스트</h4>
			
			
			<div class="box alt">
					<div class="row uniform 50%">
						<c:forEach var="vo" items="${list }">
						<div class="3u">					<!-- 사진 -->
							<span class="image fit">
								<img src="../controller/images/pic01.jpg" alt=""/><!-- 이미지사진 -->
							</span>	
						</div>
						<div class="9u">					<!-- 리스트 -->
							<span class="image fit c">
								<table class="plusDetail" id="d${vo.touristvo.tour_no}" >	<!-- #d3 이런식으로 보냄 -->
									<tr>
										<td colspan=3>[${vo.text_loc}]${vo.touristvo.tour_theme }</td>
									</tr>
									<tr>
										<td>투어날짜:${vo.text_tour_date}</td>
										<td>${vo.text_time1 }~${text_time2}</td>
										<td>${vo.text_total_person}명 </td>
									</tr>
									<tr>
										<td>${vo.uservo.user_nick}(${vo.touristvo.user_id })</td>
										<td>성별:${vo.uservo.user_sex}</td>
										<td>${vo.text_cost }원</td>
									</tr>
								</table>
							</span>	
						</div>
						
						<!-- 상세보기1 상세보기1 상세보기1 상세보기1 상세보기1 상세보기1 상세보기1 상세보기1 상세보기1 상세보기1 -->
						<div class="3u 12u$(xsmall) dd${vo.touristvo.tour_no}" style="display:none"></div>
						<div class="9u$ 12u$(xsmall) dd${vo.touristvo.tour_no}" style="display:none">					<!-- 리스트 -->
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
			
			<!-- 페이지 컨트롤 -->
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


	<!-- 세부내용 추가 jquery -->
	<script type="text/javascript">
		var d = 0;

		$(function() {
			$('.plusDetail').click(function() {
				var id = $(this).attr('id'); //id값을 가져옴
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
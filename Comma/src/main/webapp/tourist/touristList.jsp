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
								<table class="plusDetail" id="d3" >	<!-- #d3 이런식으로 보냄 -->
									<tr>
										<td colspan=3>[]${vo.tour_theme }</td>
									</tr>
									<tr>
										<td>날짜</td>
										<td>시작am~끝pm</td>
										<td>우리인원수</td>
									</tr>
									<tr>
										<td>닉네임(${vo.uservo.user_id })</td>
										<td>나이(성별)</td>
										<td>${vo.touristvo.text_cost }</td>
									</tr>
								</table>
							</span>	
						</div>
						
						<!-- 상세보기1 상세보기1 상세보기1 상세보기1 상세보기1 상세보기1 상세보기1 상세보기1 상세보기1 상세보기1 -->
						<div class="3u 12u$(xsmall) dd3" style="display:none"></div>
						<div class="9u$ 12u$(xsmall) dd3" style="display:none">					<!-- 리스트 -->
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
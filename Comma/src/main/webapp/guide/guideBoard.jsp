<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>

<html>
<head>
<title>guideBoard</title>
<!-- bxSlider() 함수 자체가 이상하다고 판단!! 다른곳에 넣는 순간 다른 jquery가 중지됨... -->
<!-- <script type="text/javascript">
	$(function() {
		$('.bxslider').bxSlider();
	});
</script> -->

<script type=text/javascript>
	
 $(function(){
	var width1=$(window).width();
	var navoffset = $('#guideBoardSide').offset();

	$(window).scroll(function(){  //스크롤하면 아래 코드 실행
		
		
	       var num = $(this).scrollTop();  // 스크롤값
	       if( num >= 530 && width1>=2000){  			// 스크롤을 36이상 했을 때
	    	   $("#guideBoardSide").css("position","fixed").css("width","13em").css("top","5em");
	    	}
	       if( num >= 530 && width1>1680){  			// 스크롤을 36이상 했을 때
	    	   $("#guideBoardSide").css("position","fixed").css("width","13em").css("top","5em");
	    	}else if(num >= 530 && width1>1280){
	    		   $("#guideBoardSide").css("position","fixed").css("width","12.5em").css("top","5em");
	    	}else if(num >= 530 && width1>1100){
	    		   $("#guideBoardSide").css("position","fixed").css("width","14em").css("top","5em");
	    	}
	    	else if(num >= 530 && width1>980){
	    		   $("#guideBoardSide").css("position","fixed").css("width","16em").css("top","4em");
	    	}else if(num >= 530 && width1>780){
	    		   $("#guideBoardSide").css("position","fixed").css("width","14em").css("top","4em");
	    	}	         
	       
			if(num<530){				//스크롤 값이 낮을때
	          $("#guideBoardSide").css("position","relative").css("width","100%");
	       }  
			
			if(width1<980){				//가로길이 짧아지면 사라지자
				 $(".side2").css("display","none");
			}
	  });
}); 

</script>
</head>
<body>
<!-- Main -->
<article id="main">
	<header>
		<h2>[제목]서울도심투어</h2>
		<p>재밌는 관광</p>
	</header>

	<section class="wrapper style5">
		<div class="inner">
			<!-- <section class="style5"> -->
			<div class="row side0">

				<div class="3u 12u$(small)">								<!-- 1 왼쪽 -->
					<div id="">
						<div>가이드</div>		
						<div class="topBoardShort">안보영</div>							
					</div>
				</div>
				<div class="2u 12u$(small)">								<!-- 1 왼쪽 -->
					<div id="">
						<div>여행규모</div>		
						<div class="topBoardShort">3명</div>							
					</div>
				</div>
				<div class="2u 12u$(small)">								<!-- 1 왼쪽 -->
					<div id="">
						<div>소요시간</div>		
						<div class="topBoardShort">6시간</div>							
					</div>
				</div>
				<div class="2u 12u$(small)">								<!-- 1 왼쪽 -->
					<div id="">
						<div>이동수단</div>		
						<div class="topBoardShort">자동차</div>							
					</div>
				</div>
				<div class="3u$ 12u$(small)">	
																		
				</div>
				
				
				<div class="9u 12u$(medium) side1">
					<hr />
					<h5>가이드소개</h5>
					<blockquote>Fringilla nisl. Donec accumsan interdum
						nisi, quis tincidunt felis sagittis eget tempus euismod.
						Vestibulum ante ipsum primis in faucibus vestibulum. Blandit
						adipiscing eu felis iaculis volutpat ac adipiscing accumsan
						faucibus.</blockquote>


					<hr />
					<h5>관광스타일소개</h5>
					<blockquote>Fringilla nisl. Donec accumsan interdum
						nisi, quis tincidunt felis sagittis eget tempus euismod.
						Vestibulum ante ipsum primis in faucibus vestibulum. Blandit
						adipiscing eu felis iaculis volutpat ac adipiscing accumsan
						faucibus.</blockquote>

					<hr />
					<h4>Image</h4>
					<h5>Fit</h5>
					<ul class="bxslider">

						<li><img src="../controller/images/character.png" /></li>
						<li><img src="../controller/images/character.png" /></li>
						<li><img src="../controller/images/character.png" /></li>
						<li><img src="../controller/images/character.png" /></li>
					</ul>

					<hr />
					<h4>Table</h4>
					<h5>Default</h5>
					<div class="table-wrapper">
						<table>
							<thead>
								<tr>
									<th>항목</th>
									<th>세부사항</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>지역</td>
									<td>Ante turpis integer aliquet porttitor.</td>
								</tr>
								<tr>
									<td>비용</td>
									<td>Vis ac commodo adipiscing arcu aliquet.</td>
								</tr>
								<tr>
									<td>포함사항</td>
									<td>Morbi faucibus arcu accumsan lorem.</td>
								</tr>
								<tr>
									<td>여행규모</td>
									<td>Vitae integer tempus condimentum.</td>
								</tr>
								<tr>
									<td>관광날짜</td>
									<td>Ante turpis integer aliquet porttitor.</td>
								</tr>
								<tr>
									<td>관광시간</td>
									<td>Ante turpis integer aliquet porttitor.</td>
								</tr>
								<tr>
									<td>이동시간</td>
									<td>Ante turpis integer aliquet porttitor.</td>
								</tr>
								<tr>
									<td>만날장소</td>
									<td>Ante turpis integer aliquet porttitor.</td>
								</tr>
							</tbody>
						</table>
					</div>



					<hr />
					<h5>후기</h5>
					<div class="box alt">
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
											<td>안보영</td>
											<td>별다섯개</td>
										</tr>
										<tr>
											<td colspan=4>멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.</td>
										</tr>
									</table>
								</span>
							</div>

							<div class="2u">
								<span class="image fit"> <a href="guideWrite.jsp"><img
										src="../controller/images/banner.jpg" alt="" /></a>
								</span>
							</div>

							<div class="10u">
								<span class="image fit">
									<table class="alt">
										<tr>
											<td>안보영</td>
											<td>별다섯개</td>
										</tr>
										<tr>
											<td colspan=4>멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.
												멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.
												멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.</td>
										</tr>
									</table>
								</span>
							</div>

							<div class="2u">
								<span class="image fit"> <a href="guideWrite.html"><img
										src="../controller/images/banner.jpg" alt="" /></a>
								</span>
							</div>

							<div class="10u">
								<span class="image fit">
									<table class="alt">
										<tr>
											<td>안보영</td>
											<td>별다섯개</td>
										</tr>
										<tr>
											<td colspan=4>멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.
												멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.
												멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.</td>
										</tr>
									</table>
								</span>
							</div>

							<div class="2u">
								<span class="image fit"> <a href="guideWrite.html"><img
										src="../controller/images/banner.jpg" alt="" /></a>
								</span>
							</div>

							<div class="10u">
								<span class="image fit">
									<table class="alt">
										<tr>
											<td>안보영</td>
											<td>별다섯개</td>
										</tr>
										<tr>
											<td colspan=4>멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.
												멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.
												멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.</td>
										</tr>
									</table>
								</span>
							</div>

							<div class="2u">
								<span class="image fit"> <a href="guideWrite.html"><img
										src="../controller/images/banner.jpg" alt="" /></a>
								</span>
							</div>

							<div class="10u">
								<span class="image fit">
									<table class="alt">
										<tr>
											<td>안보영</td>
											<td>별다섯개</td>
										</tr>
										<tr>
											<td colspan=4>멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.
												멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.
												멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.멋진관광이었습니다.</td>
										</tr>
									</table>
								</span>
							</div>
						</div>
					</div>

					<hr />
					<ul class="actions fit small">
						<li><a href="#" class="button special fit small">쪽지보내기</a></li>
						<li><a href="#" class="button fit small">예약하기</a></li>
						<li><a href="#" class="button special fit small">관심상품</a></li>
					</ul>
				</div>


				<!-- 사이드메뉴! -->
				<div class="3u$ side2">
					<div id="guideBoardSide">
						<div id="reservenow">RESERVE NOW</div>	
						<div class="BoardSide1">신나는 서울 야경 투어</div>
						<hr>
						<div class="BoardSide1">가격:20000원</div>
						<div class="BoardSide1">날짜:2016-04-24</div>
						<div class="BoardSide1">인원:3명</div>
						<div class="BoardSide1">수단:자동차</div>
						<div class="BoardSide1"><input type="button" value="reserve"></div>
					</div>
				</div>
			</div>

		</div>
	</section>
</article>

</body>
</html>
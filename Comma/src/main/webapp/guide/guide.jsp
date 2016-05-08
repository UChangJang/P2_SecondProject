<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
<head>
<title>guide</title>
<script type="text/javascript">
$(function(){
	
	$('#searchBtn_g').click(function(){
		
		var value = ('#loc_search').val();
		
		
		$('#guideSearchFrm').submit();
	});
});
</script>
</head>
<body>

<div id="#nav2" >
	<ul>
	 	 <li><a class="scrolly" href="#guide_margin">Search</a></li>
	 	 <li><a class="scrolly" href="#guideList">Guide List</a></li>
	</ul>
</div>

<!-- Main -->
<article id="main">
	<header id="header_guideList">

		<!-- <video preload="auto" loop="loop" autoplay="ture">
			<source src="images/guideMovie">
			<h2 class="headerMagin">Guide List</h2>
			<p>You Can Find Guide In Here!</p>
			<a href="#one" class="more scrolly"><img src="images/triangle.png">
					<br>view more</a>
		</video> -->
		<h2>Guide</h2>
		<center>
		<p>I will Guide You!</p>
		<p>Check the board to find the best guide to you!</p>
		</center>
		<a href="#one" class="more scrolly"><img src="images/triangle.png">
				<br>view more</a>
	

	</header>

	<section class="wrapper style5" id="guide_margin">
		<div class="inner">
			<form method="post" action="guide.do" id="guideSearchFrm">
				<div class="row uniform">
					<div id="hotkeyword_guide">
					<span><b>Hot Keyword</b></span>&nbsp;&nbsp;&nbsp;&nbsp;
					<span>SEOUL</span>&nbsp;&nbsp;<span>JEJU</span>
					&nbsp;&nbsp;<span>DAEGU</span>&nbsp;&nbsp;
					<span>GWANGJU</span>&nbsp;&nbsp;<span>BUSAN</span>
					</div>
					
					<div class="9u 12u$(xsmall)">
						<input type="text" name="searchvalue" id="loc_search"
							placeholder="Location Search"/>
					</div>
					<div class="3u$ 12u$(xsmall)">
						<ul class="actions">
							<a href="#two" class="scrolly">
								<li><button class="button special fit small" id="searchBtn_g">Search</button></li>
							</a>
						</ul>
					</div>
				</div>
				
				
				<div id="wrapdetail">
					<div id="bt"><span>More</span></div>
				</div>

				<div class="row uniform" id="panel">
					<!-- 상세검색div -->						

					<div class="12u$ 12u$(xsmall)">
						<!-- 2. 상세체크 -->
						<div class="selectGuideMethod">
							<input type="radio" id="demo-priority-low" name="walking" checked class="guideLabel"> 
								<label for="demo-priority-low">Walking</label> 
							<input type="radio"	id="demo-priority-normal" name="car"> 
								<label for="demo-priority-normal">Car</label> 
							<input type="radio"	id="demo-priority-high" name="bicycle"> 
								<label for="demo-priority-high">Bicycle</label> 
						</div>
						<div class="select-wrapper" id="guide_howmany" style="color: black">
							<select name="people" id="demo-category">
								<option value="">-People-</option>
								<option value="1">1 Person</option>
								<option value="2">2 People</option>
								<option value="3">3 People</option>
								<option value="4">4 People</option>
								<option value="5">5 People</option>
								<option value="6">6 People</option>
								<option value="7">7 People</option>
								<option value="8">8 People</option>
								<option value="9">9 People</option>
								<option value="10">10 People</option>
							</select>
						</div>

						<div id="demo1">
							<input type="text" id="dt" placeholder="Select Date" name="date">
							<div id="dd"></div>
						</div>
						
					</div>
				</div>
				
				<div id="sortGuide">
					<div class="select-wrapper tourist_local">
						<select name="text_loc" id="demo-category">
							<option value="">- Sort -</option>
							<option value="Newest">Newest</option>
							<option value="Cheapest">Cheapest</option>
							<option value="Popular-Guide">Popular-Guide</option>
						</select>
					</div>
				</div>
			</form>
		</div>
	</section>

	<!-- 3x3가이드리스트 출력 -->
	<div id="guideList">
		<jsp:include page="guideList.jsp"></jsp:include>
	</div>

</article>

</body>
</html>
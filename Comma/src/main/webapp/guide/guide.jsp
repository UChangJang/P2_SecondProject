<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
<head>
<title>guide</title>
</head>
<body>

<div id="nav2" >
	<ul>
	 	 <li><a class="scrolly" href="#guide_margin">Search</a></li>
	 	 <li><a class="scrolly" href="#guideList">Guide List</a></li>
	</ul>
</div>

<!-- Main -->
<article id="main">
	<header id="header_guideList">
		
	</header>

	<section class="wrapper style5" id="guide_margin">
		<div class="inner">
			<form method="post" action="#">
				<div class="row uniform">
					<div id="hotkeyword_guide">
					<span><b>Hot Keyword</b></span>&nbsp;&nbsp;&nbsp;&nbsp;
					<span>SEOUL</span>&nbsp;&nbsp;<span>JEJU</span>
					&nbsp;&nbsp;<span>DAEGU</span>&nbsp;&nbsp;
					<span>GWANGJU</span>&nbsp;&nbsp;<span>BUSAN</span>
					</div>
					
					<div class="9u 12u$(xsmall)">
						<input type="text" name="demo-name" id="demo-name" value=""
							placeholder="지역 검색" />
					</div>
					<div class="3u$ 12u$(xsmall)">
						<ul class="actions">
							<a href="#two" class="scrolly">
								<li><input type="submit" value="Send Message"
									class="special" /></li>
							</a>
						</ul>
					</div>
				</div>

				<div id="wrapdetail">
					<div id="bt">상세검색</div>
				</div>

				<div class="row uniform" id="panel">
					<!-- 상세검색div -->						

					<div class="12u$ 12u$(xsmall)">
						<!-- 2. 상세체크 -->
						<div class="selectGuideMethod">
							<input type="radio" id="demo-priority-low"
							name="demo-priority" checked class="guideLabel"> 
							<label for="demo-priority-low">걷기</label> <input type="radio"
							id="demo-priority-normal" name="demo-priority"> <label
							for="demo-priority-normal">자동차</label> <input type="radio"
							id="demo-priority-high" name="demo-priority"> <label
							for="demo-priority-high">자전거</label> 
							</div>
						<div class="select-wrapper" id="guide_howmany">
							<select name="demo-category" id="demo-category">
								<option value="">people&nbsp;&nbsp;&nbsp;&nbsp;</option>
								<option value="1">1명</option>
								<option value="2">2명</option>
								<option value="3">3명</option>
								<option value="4">4명</option>
								<option value="5">5명</option>
								<option value="6">6명</option>
								<option value="7">7명</option>
								<option value="8">8명</option>
								<option value="9">9명</option>
								<option value="10">10명</option>
							</select>
						</div>

						<div id="demo1">
							<input type="text" id="dt" placeholder="날짜선택">
							<div id="dd"></div>
						</div>
						
					</div>
				</div>
				
				<div id="sortGuide">
					<div class="select-wrapper tourist_local">
						<select name="text_loc" id="demo-category">
							<option value="">- 정렬 -</option>
							<option value="최신">최신순</option>
							<option value="가격">가격순</option>
							<option value="인기가이드">인기가이드순</option>
						</select>
					</div>
				</div>
			</form>
		</div>
	</section>

	<!-- 3x3가이드리스트 출력 -->
	<%-- <div id="guideList">
		<jsp:include page="guideList.jsp"></jsp:include>
	</div> --%>

</article>

</body>
</html>
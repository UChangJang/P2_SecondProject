<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
<head>
<title>guide</title>
<meta charset="utf-8" />
</head>
<body>
<!-- Main -->
<article id="main">
	<header>
		<h2>가이드찾기</h2>
		<p>가이드찾기설명</p>
	</header>

	<section class="wrapper style5">
		<div class="inner">
			<form method="post" action="#">
				<div class="row uniform">
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
						<div class="selectGuidepeople">
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
								<option value="">인원선택</option>
								<option value="1">1명</option>
								<option value="1">2</option>
								<option value="1">3</option>
								<option value="1">4</option>
								<option value="1">5</option>
								<option value="1">6</option>
								<option value="1">7</option>
								<option value="1">8</option>
								<option value="1">9</option>
								<option value="1">10</option>
							</select>
						</div>

						<div id="demo">
							<input type="text" id="dt" placeholder="날짜선택">
							<div id="dd"></div>
						</div>
						
					</div>
				</div>
			</form>
		</div>
	</section>

	<!-- 3x3가이드리스트 출력 -->
	<jsp:include page="guideList.jsp"></jsp:include>
</article>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
<head>
<title>guide</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript" src="ajax.js"></script>

<script type="text/javascript">
	$(function(){
		
		//sendMessage("POST", "tourist_nextPrev.do", null, tourContent);
		
		//1.검색했을 때
		$('#guideSearch').click(function(){		//select_지역선택
			var place=$('#place').val();		//1.지역값 가져오기
			if(place==""){
				alert("Place is an essential condition in searching.")
				return;
			}
						
			var methods = document.getElementsByName('method');		//2.수단 가져오기
			var method_value; // 여기에 선택된 radio 버튼의 값이 담기게 된다.
			for(var i=0; i<methods.length; i++) {
			    if(methods[i].checked) {
			    	method_value = methods[i].id;
			    }
			}			
			
			if(method_value==null){				//상세검색 안 할 때---------		//검색조건 만족여부 체크리스트
				var param="place="+place;
				sendMessage("POST", "guide_search.do", param, guideList);
				alert("단순지역_검색버튼누름_:"+method_value+","+people+","+date);
			}else{								//상세검색 할 때---------
				var people=$('#people').val();		//3.인원 가져오기
				var date=$('#dt').val();			//4.날짜값 가져오기		
				var param="place="+place+"&method="+method_value+"&people="+people+"&date="+date;
				sendMessage("POST", "guide_search_detail.do", param, guideList);
				alert("디테일_검색버튼누름_:"+method_value+","+people+","+date);
			}
		});

		//2.정렬
		$('#sortType').change(function(){		
			var sortType=$('#sortType').val();	//ex_가격높은순
			
			var place=$('#place').val();							//1.지역값 가져오기
			var methods = document.getElementsByName('method');		//2.이동수단 가져오기
			var method_value; // 여기에 선택된 radio 버튼의 값이 담기게 된다.
			for(var i=0; i<methods.length; i++) {
			    if(methods[i].checked) {
			    	method_value = methods[i].id;
			    }
			}	
			var people=$('#people').val();							//3.인원 가져오기
			var date=$('#dt').val();								//4.날짜값 가져오기	
			
			if(place!=""){		//정렬은 적어도 지역검색했을 때 가능
				var param="place="+place+"&method="+method_value+"&people="+people+"&date="+date+"&type="+sortType;
				sendMessage("POST", "guide_sort.do",param, guideList);
			}else{
				alert("Please search first!!");
			}	
		});
	});

	//마지막. 데이터리스트 불러오기
	function guideList() {
		if (httpRequest.readyState == 4) {
			if (httpRequest.status == 200) {
				$('#guideList').html(httpRequest.responseText);
			}
		}
	}
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
				<div class="row uniform">
					<div id="hotkeyword_guide">
					<span><b>Hot Keyword</b></span>&nbsp;&nbsp;&nbsp;&nbsp;
					<span>SEOUL</span>&nbsp;&nbsp;<span>JEJU</span>
					&nbsp;&nbsp;<span>DAEGU</span>&nbsp;&nbsp;
					<span>GWANGJU</span>&nbsp;&nbsp;<span>BUSAN</span>
					</div>
					
					<div class="9u 12u$(xsmall)">
						<div class="select-wrapper tourist_local">
							<select name="text_loc1" id="place">					<!-- place -->
								   <option value="">- PLACE -</option>
		                           <option value="SEOUL">SEOUL</option>
		                           <option value="DAEGU">DAEGU</option>
		                           <option value="BUSAN">BUSAN</option>
		                           <option value="JEJU">JEJU</option>
		                           <option value="INCHEON">INCHEON</option>
		                           <option value="CHUNCHEON">CHUNCHEON</option>
		                           <option value="BORYEONG">BORYEONG</option>
		                           <option value="JEONJU">JEONJU</option>
		                           <option value="GYEONGJU">GYEONGJU</option>
		                           <option value="YEOSU">YEOSU</option>
		                           <option value="KANGWONDO">KANGWONDO</option>
		                           <option value="GYEONGGIDO">GYEONGGIDO</option>
							</select>
						</div>
					</div>
					
					<div class="3u$ 12u$(xsmall)">
						<ul class="actions">
							<a href="#two" class="scrolly">
								<li><input type="submit" value="GO" class="special" id="guideSearch" /></li>
							</a>
						</ul>
					</div>
				</div>

				<div id="wrapdetail">
					<div id="bt">Detail Searching</div>
				</div>

				<div class="row uniform" id="panel">					<!-- 상세검색div -->	
					<div class="12u$ 12u$(xsmall)">
						<div class="selectGuideMethod">						<!-- 1.방법 -->
							<input type="radio" id="walking" name="method" class="guideLabel"> <!--checked뺌 -->
								<label for="walking">walking</label> 
							<input type="radio" id="car" name="method"> 
								<label for="car">car</label> 
							<input type="radio" id="bicycle" name="method"> 
								<label for="bicycle">bicycle</label> 
						</div>
						
						<div class="select-wrapper" id="guide_howmany">		<!-- 2.사람 -->
							<select name="demo-category" id="people">
								<option value="">People&nbsp;&nbsp;&nbsp;&nbsp;</option>
								<option value="1">1person</option>
								<option value="2">2person</option>
								<option value="5">5person</option>
								<option value="10">10person</option>
								<option value="15">15person</option>
							</select>
						</div>

						<div id="demo1">									<!-- 3.날짜 -->
							<input type="text" id="dt" placeholder="날짜선택">
							<div id="dd"></div>
						</div>
						
					</div>
				</div>
		</div>
		
		<!-- 3. 정렬 -->
			<div class="inner">
				<br><br>
				<div class="9u 12u$(xsmall) tourFit">
					<h4>I FIND GUIDE!</h4>
				</div>
				
				<div class="select-wrapper tourist_select 3u$ 12u$(xsmall) tourFit">
					<select name="text_loc2" id="sortType">
						<option value="">- SORT -</option>
						<option value="cost">Cost</option>			<!-- 저렴한순 -->
						<option value="newest">Newest</option>		<!-- 최신순 -->
						<option value="ranking">Ranking</option>	<!-- 가이드랭킹높은순 -->
					</select>
				</div>
			</div>	
	</section>



	<!-- 3x3가이드리스트 출력 -->
	<div id="guideList">
		<jsp:include page="guideList.jsp"></jsp:include>
	</div>

</article>

</body>
</html>
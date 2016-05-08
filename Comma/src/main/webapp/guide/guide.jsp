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
		
		//1.�˻����� ��
		$('#guideSearch').click(function(){		//select_��������
			var place=$('#place').val();		//1.������ ��������
			if(place==""){
				alert("Place is an essential condition in searching.")
				return;
			}
						
			var methods = document.getElementsByName('method');		//2.���� ��������
			var method_value; // ���⿡ ���õ� radio ��ư�� ���� ���� �ȴ�.
			for(var i=0; i<methods.length; i++) {
			    if(methods[i].checked) {
			    	method_value = methods[i].id;
			    }
			}			
			
			if(method_value==null){				//�󼼰˻� �� �� ��---------		//�˻����� �������� üũ����Ʈ
				var param="place="+place;
				sendMessage("POST", "guide_search.do", param, guideList);
				alert("�ܼ�����_�˻���ư����_:"+method_value+","+people+","+date);
			}else{								//�󼼰˻� �� ��---------
				var people=$('#people').val();		//3.�ο� ��������
				var date=$('#dt').val();			//4.��¥�� ��������		
				var param="place="+place+"&method="+method_value+"&people="+people+"&date="+date;
				sendMessage("POST", "guide_search_detail.do", param, guideList);
				alert("������_�˻���ư����_:"+method_value+","+people+","+date);
			}
		});

		//2.����
		$('#sortType').change(function(){		
			var sortType=$('#sortType').val();	//ex_���ݳ�����
			
			var place=$('#place').val();							//1.������ ��������
			var methods = document.getElementsByName('method');		//2.�̵����� ��������
			var method_value; // ���⿡ ���õ� radio ��ư�� ���� ���� �ȴ�.
			for(var i=0; i<methods.length; i++) {
			    if(methods[i].checked) {
			    	method_value = methods[i].id;
			    }
			}	
			var people=$('#people').val();							//3.�ο� ��������
			var date=$('#dt').val();								//4.��¥�� ��������	
			
			if(place!=""){		//������ ��� �����˻����� �� ����
				var param="place="+place+"&method="+method_value+"&people="+people+"&date="+date+"&type="+sortType;
				sendMessage("POST", "guide_sort.do",param, guideList);
			}else{
				alert("Please search first!!");
			}	
		});
	});

	//������. �����͸���Ʈ �ҷ�����
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

				<div class="row uniform" id="panel">					<!-- �󼼰˻�div -->	
					<div class="12u$ 12u$(xsmall)">
						<div class="selectGuideMethod">						<!-- 1.��� -->
							<input type="radio" id="walking" name="method" class="guideLabel"> <!--checked�� -->
								<label for="walking">walking</label> 
							<input type="radio" id="car" name="method"> 
								<label for="car">car</label> 
							<input type="radio" id="bicycle" name="method"> 
								<label for="bicycle">bicycle</label> 
						</div>
						
						<div class="select-wrapper" id="guide_howmany">		<!-- 2.��� -->
							<select name="demo-category" id="people">
								<option value="">People&nbsp;&nbsp;&nbsp;&nbsp;</option>
								<option value="1">1person</option>
								<option value="2">2person</option>
								<option value="5">5person</option>
								<option value="10">10person</option>
								<option value="15">15person</option>
							</select>
						</div>

						<div id="demo1">									<!-- 3.��¥ -->
							<input type="text" id="dt" placeholder="��¥����">
							<div id="dd"></div>
						</div>
						
					</div>
				</div>
		</div>
		
		<!-- 3. ���� -->
			<div class="inner">
				<br><br>
				<div class="9u 12u$(xsmall) tourFit">
					<h4>I FIND GUIDE!</h4>
				</div>
				
				<div class="select-wrapper tourist_select 3u$ 12u$(xsmall) tourFit">
					<select name="text_loc2" id="sortType">
						<option value="">- SORT -</option>
						<option value="cost">Cost</option>			<!-- �����Ѽ� -->
						<option value="newest">Newest</option>		<!-- �ֽż� -->
						<option value="ranking">Ranking</option>	<!-- ���̵巩ŷ������ -->
					</select>
				</div>
			</div>	
	</section>



	<!-- 3x3���̵帮��Ʈ ��� -->
	<div id="guideList">
		<jsp:include page="guideList.jsp"></jsp:include>
	</div>

</article>

</body>
</html>
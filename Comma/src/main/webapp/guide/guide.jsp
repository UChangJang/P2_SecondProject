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
							placeholder="���� �˻�" />
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
					<div id="bt">�󼼰˻�</div>
				</div>

				<div class="row uniform" id="panel">
					<!-- �󼼰˻�div -->						

					<div class="12u$ 12u$(xsmall)">
						<!-- 2. ��üũ -->
						<div class="selectGuideMethod">
							<input type="radio" id="demo-priority-low"
							name="demo-priority" checked class="guideLabel"> 
							<label for="demo-priority-low">�ȱ�</label> <input type="radio"
							id="demo-priority-normal" name="demo-priority"> <label
							for="demo-priority-normal">�ڵ���</label> <input type="radio"
							id="demo-priority-high" name="demo-priority"> <label
							for="demo-priority-high">������</label> 
							</div>
						<div class="select-wrapper" id="guide_howmany">
							<select name="demo-category" id="demo-category">
								<option value="">people&nbsp;&nbsp;&nbsp;&nbsp;</option>
								<option value="1">1��</option>
								<option value="2">2��</option>
								<option value="3">3��</option>
								<option value="4">4��</option>
								<option value="5">5��</option>
								<option value="6">6��</option>
								<option value="7">7��</option>
								<option value="8">8��</option>
								<option value="9">9��</option>
								<option value="10">10��</option>
							</select>
						</div>

						<div id="demo1">
							<input type="text" id="dt" placeholder="��¥����">
							<div id="dd"></div>
						</div>
						
					</div>
				</div>
				
				<div id="sortGuide">
					<div class="select-wrapper tourist_local">
						<select name="text_loc" id="demo-category">
							<option value="">- ���� -</option>
							<option value="�ֽ�">�ֽż�</option>
							<option value="����">���ݼ�</option>
							<option value="�αⰡ�̵�">�αⰡ�̵��</option>
						</select>
					</div>
				</div>
			</form>
		</div>
	</section>

	<!-- 3x3���̵帮��Ʈ ��� -->
	<%-- <div id="guideList">
		<jsp:include page="guideList.jsp"></jsp:include>
	</div> --%>

</article>

</body>
</html>
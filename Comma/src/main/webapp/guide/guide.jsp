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
		<h2>���̵�ã��</h2>
		<p>���̵�ã�⼳��</p>
	</header>

	<section class="wrapper style5">
		<div class="inner">
			<form method="post" action="#">
				<div class="row uniform">
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
						<div class="selectGuidepeople">
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
								<option value="">�ο�����</option>
								<option value="1">1��</option>
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
							<input type="text" id="dt" placeholder="��¥����">
							<div id="dd"></div>
						</div>
						
					</div>
				</div>
			</form>
		</div>
	</section>

	<!-- 3x3���̵帮��Ʈ ��� -->
	<jsp:include page="guideList.jsp"></jsp:include>
</article>

</body>
</html>
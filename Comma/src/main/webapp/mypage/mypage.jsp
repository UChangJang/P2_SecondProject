<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<title>MyPage</title>
	<!-- <link rel="stylesheet" href="../controller/assets/css/mytest2(danbi_mypage)" />  -->
</head>
<body>
<!-- Main -->
<article id="main">
	<header>
		<h2>My Page</h2>
	</header>
	
	<section class="wrapper style5">
		<div class="inner">
		
			<!-- �޴� �ۼ� -->
			<section>
				<h4>Mypage</h4>								<!-- ���� �������� -->
				<div class="row uniform">							
					<div class="4u 12u$(small)">			<!-- 1 ���� -->
						<div class="mypicture">
							<img src="../controller/images/character.png">
						</div>
						<div class="mypictureCaption">
							<h3>${sessionScope.id }</h3>
							<h4>3���̵� 4����</h4>	
						</div>
					</div>
					
					<div class="7u$ 12u$(small)">				<!-- 2 ������ -->
						<ul class="alt">
							<form method='POST' name="mywish" style="margin:0" onsubmit="wish_form()">
								<input type="hidden" value="${sessionScope.id }" name="userid">		
								<li><a href="#none"><h5>���ø���Ʈ</h5></a></li>
							</form>
							<li><a href="mypage_myWriting.html"><h5>���� �� ��</h5></a></li>
							<li><a href="mypage_bookingList.html"><h5>���ฮ��Ʈ</h5></a></li>
							<form method='POST' name="mydetail" style="margin:0" onsubmit="check_form1()">										
								<input type="hidden" value="${sessionScope.id }" name="userid">
								<li><a href="#none" onclick="check_form1()"><h5>��������</h5></a></li>
							</form>
							<li><a href="mypage_opinion.html"><h5>�ı��</h5></a></li>																		
							<form method='POST' name="mymessage" style="margin:0" onsubmit="check_form()">
							<input type="hidden" value="${sessionScope.id }" name="userid">												
								  <li><a href="#none" onclick="check_form()"><h5>�޼�����</h5></a></li>																								 
							</form>

						</ul>
					</div>
				</div>
			</section>
		</div>
	</section>
	
	<%-- <jsp:include page="${mypage }"></jsp:include> --%>

</article>

<script type="text/javascript">		
		function check_form(){
		  var m = document.mymessage;
		  m.action = "mypage_letter.do";
		  m.submit();
		}
		function wish_form(){
			var m = document.mywish;
			m.action = "mypage_wishlist.do";
			m.submit();
		}
		function check_form1(){
			var m = document.mydetail;
			m.action = "mypage_infoCorrection.do";
			m.submit();
		}
		
</script> 
</body>
</html>
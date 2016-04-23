<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<title>MyPage</title>
	<link rel="stylesheet" href="../controller/assets/css/mypage.css" /> 
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
							<form method='POST' name="mywish" style="margin:0">
													<input type="hidden" value="${sessionScope.id }" name="userid">		
													<li><a href="#none" onclick="wish_form()"><h5>���ø���Ʈ</h5></a></li>
												</form>												
												<li><a href="mypage_myWriting.html"><h5>���� �� ��</h5></a></li>
												<form method='POST' name="myreservation" style="margin:0">				
													<input type="hidden" value="${sessionScope.id }" name="userid">											
													<li><a href="#none" onclick="reservation_form()"><h5>���ฮ��Ʈ</h5></a></li>
												</form>												
												<form method='POST' name="mydetail" style="margin:0">										
													<input type="hidden" value="${sessionScope.id }" name="userid">
													<li><a href="#none" onclick="infoCorrection_form()"><h5>��������</h5></a></li>
												</form>												
												<form method='POST' name="myreview" style="margin:0">
												<input type="hidden" value="${sessionScope.id }" name="userid">
													<li><a href="#none" onclick="review_form()"><h5>�ı��</h5></a></li>
												</form>																													
												<form method='POST' name="mymessage" style="margin:0">
													<input type="hidden" value="${sessionScope.id }" name="userid">												
 													<li><a href="#none" onclick="message_form()"><h5>�޼�����</h5></a></li>																								 
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
function message_form(){
	  var m = document.mymessage;
	  m.action = "mypage_letter.do";
	  m.submit();
	}
	function wish_form(){
		var m = document.mywish;
		m.action = "mypage_wishlist.do";
		m.submit();
	}
	function infoCorrection_form(){
		var m = document.mydetail;
		m.action = "mypage_infoCorrection.do";
		m.submit();
	}
	function review_form(){
		var m =document.myreview;
		m.action = "mypage_review.do";
		m.submit();
	}
	function reservation_form(){
		var m =document.myreservation;
		m.action = "mypage_reservation.do";
		m.submit();
	}
	
</script> 
</body>
</html>
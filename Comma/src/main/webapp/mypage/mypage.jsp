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
					<div class="4kk 12u$(small)">			<!-- 1 ���� -->
						<div class="mypicture">
							<img src="../controller/images/character.png">
						</div>
						<div class="mypictureCaption">
							<h3>${sessionScope.id }</h3>
							<h4>3���̵� 4����</h4>	
						</div>
					</div>
					
					 <div class="7u$ 12u$(small)"> 				<!-- 2 ������ -->
					
					 <div class="row uniform 50%">  
					
				      <div class="tab2">
				      <form method='POST' name="mywish" style="margin:0">
				      <input type="hidden" value="${sessionScope.id }" name="userid">   
				      <a href="#none" onclick="wish_form()"><span class="mainRight_span"><img src="images/home.png"></span>���ø���Ʈ</a>
				      </form>   </div>
				      
				      <div class="tab2">
				      <form method='POST' name="mywriter" style="margin:0">            
				      <input type="hidden" value="${sessionScope.id }" name="userid">   
				      <a href="#none" onclick="mywriter_form()"><img src="images/home.png">���� �� ��</a>
				      </form>   </div>
				      
				      <div class="tab2">
				      <form method='POST' name="myreservation" style="margin:0">            
				      <input type="hidden" value="${sessionScope.id }" name="userid">   
				      <a href="#none" onclick="reservation_form()"><img src="images/home.png">���� ����Ʈ</a>
				      </form>   </div>
				      
				      <div class="tab2">
				      <form method='POST' name="mydetail" style="margin:0">            
				      <input type="hidden" value="${sessionScope.id }" name="userid">   
				      <a href="#none" onclick="infoCorrection_form()"><img src="images/home.png">��������</a>
				      </form>   </div>
				      
				      <div class="tab2">
				      <form method='POST' name="myreview" style="margin:0">
				      <input type="hidden" value="${sessionScope.id }" name="userid">      
				      <a href="#none" onclick="review_form()"><img src="images/home.png">�����ı�</a>
				      </form></div>
				      
				       <div class="tab2">
				      <form method='POST' name="mymessage" style="margin:0">
				      <input type="hidden" value="${sessionScope.id }" name="userid">      
				      <a href="#none" onclick="message_form()"><img src="images/home.png">�޼�����</a>
				      </div></form>
					
					</div> 
					<!-- 
					<div class="2u$ 12u$(small) mainRight1">					3 ������
						<table id="mainRight">
							<tr>
							  <td><span class="mainRight_span"><img src="images/home.png"></span></td>
							  <th><a href="#">Home</a></th>
							</tr>
							<tr>
							  <td><span class="mainRight_span"><img src="images/comma.png"></span></td>
							  <th><a href="#">Comma</a></th>
							</tr>
							<tr>
							  <td><span class="mainRight_span"><img src="images/korea.png"></span></td>
							  <th><a href="#">Tour</a></th>
							</tr>
							<tr>
							  <td><span class="mainRight_span"><img src="images/guide.png"></span></td>
							  <th><a href="#">Request</a></th>
							</tr>
							<tr>
							  <td><span class="mainRight_span"><img src="images/commu.png"></span></td>
							  <th><a href="#">Community</a></th>
							</tr>
						</table>
					</div>
					 -->
						<%-- <ul class="alt">
							<form method='POST' name="mywish" style="margin:0">
								<input type="hidden" value="${sessionScope.id }" name="userid">		
								<li><a href="#none" onclick="wish_form()"><h5>���ø���Ʈ</h5></a></li>
							</form>
							<form method='POST' name="mywriter" style="margin:0">
								<input type="hidden" value="${sessionScope.id }" name="userid">												
								<li><a href="#none" onclick="mywriter_form()"><h5>���� �� ��</h5></a></li>
							</form>
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

						</ul> --%>
				
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
	function mywriter_form(){
		var m = document.mywriter;
		m.action = "mypage_mywriter.do"
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
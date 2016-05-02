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
	<header id="mypage_back">
		<h2>My Page</h2>
		<center>
			<p>I will Find You!</p>
			<p>Check the board to guide someone in Korea!</p>
		</center>
		<a href="#one" class="more scrolly"><img src="images/triangle.png">
		<br>view more</a>
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
					
					 <div class="7u$ 12u$(small)" style="padding-top:5em" > 				<!-- 2 ������ -->
					 <div class="row uniform 50%" >  
					 
					 <div class="tab2" >
					 <form method='POST' name="mywish" style="margin:0 ; width:10em; height: 3em; ">
				      <input type="hidden" value="${sessionScope.id }" name="userid">   
				     <a href="#none"  onclick="wish_form()" style="background-color:white; border:1px gray solid;border-radius:3px; ">
				     <img src="images/mywriters.jpg" style="align:left; vertical-align:middle">���ø���Ʈ</a>
				      </form>   </div>
				      
				       <div class="tab2" >
					 <form method='POST' name="mywriter" style="margin:0 ; width:10em; height: 3em; ">
				      <input type="hidden" value="${sessionScope.id }" name="userid">   
				     <a href="#none"  onclick="mywriter_form()" style="background-color:white; border:1px gray solid;border-radius:3px; ">
				     <img src="images/mywriters.jpg" style="align:left; vertical-align:middle">���� �� ��</a>
				      </form>   </div>
				      
				       <div class="tab2" >
					 <form method='POST' name="myreservation" style="margin:0; width:10em; height: 3em;">
				      <input type="hidden" value="${sessionScope.id }" name="userid">   
				     <a href="#none"  onclick="reservation_form()" style="background-color:white; border:1px gray solid;border-radius:3px; ">
				     <img src="images/myreservations.jpg" style="align:left; vertical-align:middle">���� ����Ʈ</a>
				      </form>   </div>
				      
				       <div class="tab2" >
					 <form method='POST' name="mydetail" style="margin:0; width:10em; height: 3em;">
				      <input type="hidden" value="${sessionScope.id }" name="userid">   
				     <a href="#none"  onclick="mydetail_form()" style="background-color:white; border:1px gray solid;border-radius:3px; ">
				     <img src="images/mydetails.jpg" style="align:left; vertical-align:middle">��������</a>
				      </form>   </div>
				      
				      <div class="tab2" >
					 <form method='POST' name="myreview" style="margin:0; width:10em; height: 3em;">
				      <input type="hidden" value="${sessionScope.id }" name="userid">   
				     <a href="#none"  onclick="review_form()" style="background-color:white; border:1px gray solid;border-radius:3px; ">
				     <img src="images/myreviews.jpg" style="align:left; vertical-align:middle">�����ı�</a>
				      </form>   </div>
				      
				      <div class="tab2" >
					 <form method='POST' name="mymessage" style="margin:0; width:10em; height: 3em;">
				      <input type="hidden" value="${sessionScope.id }" name="userid">   
				     <a href="#none"  onclick="message_form()" style="background-color:white; border:1px gray solid;border-radius:3px; ">
				     <img src="images/mymessages.jpg" style="align:left; vertical-align:middle">�޼�����</a>
				      </form>   </div>
				      
				      
					
					</div> 
				</div>

			</section>
		</div>
	</section>
	

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
	function mydetail_form(){
		var m = document.mydetail;
		m.action = "mypage_mydetail.do";
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
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
		
			<!-- 메뉴 작성 -->
			<section>
				<h4>Mypage</h4>								<!-- 제목 왼쪽정렬 -->
				<div class="row uniform">							
					<div class="4kk 12u$(small)">			<!-- 1 왼쪽 -->
						<div class="mypicture">
							<img src="../controller/images/character.png">
						</div>
						<div class="mypictureCaption">
							<h3>${sessionScope.id }</h3>
							<h4>3가이드 4관광</h4>	
						</div>
					</div>
					
					 <div class="7u$ 12u$(small)" style="padding-top:5em" > 				<!-- 2 오른쪽 -->
					 <div class="row uniform 50%" >  
					 
					 <div class="tab2" >
					 <form method='POST' name="mywish" style="margin:0 ; width:10em; height: 3em; ">
				      <input type="hidden" value="${sessionScope.id }" name="userid">   
				     <a href="#none"  onclick="wish_form()" style="background-color:white; border:1px gray solid;border-radius:3px; ">
				     <img src="images/mywriters.jpg" style="align:left; vertical-align:middle">위시리스트</a>
				      </form>   </div>
				      
				       <div class="tab2" >
					 <form method='POST' name="mywriter" style="margin:0 ; width:10em; height: 3em; ">
				      <input type="hidden" value="${sessionScope.id }" name="userid">   
				     <a href="#none"  onclick="wish_form()" style="background-color:white; border:1px gray solid;border-radius:3px; ">
				     <img src="images/mywriters.jpg" style="align:left; vertical-align:middle">내가 쓴 글</a>
				      </form>   </div>
				      
				       <div class="tab2" >
					 <form method='POST' name="myreservation" style="margin:0; width:10em; height: 3em;">
				      <input type="hidden" value="${sessionScope.id }" name="userid">   
				     <a href="#none"  onclick="reservation_form()" style="background-color:white; border:1px gray solid;border-radius:3px; ">
				     <img src="images/myreservations.jpg" style="align:left; vertical-align:middle">예약 리스트</a>
				      </form>   </div>
				      
				       <div class="tab2" >
					 <form method='POST' name="mydetail" style="margin:0; width:10em; height: 3em;">
				      <input type="hidden" value="${sessionScope.id }" name="userid">   
				     <a href="#none"  onclick="mydetail_form()" style="background-color:white; border:1px gray solid;border-radius:3px; ">
				     <img src="images/mydetails.jpg" style="align:left; vertical-align:middle">정보수정</a>
				      </form>   </div>
				      
				      <div class="tab2" >
					 <form method='POST' name="myreview" style="margin:0; width:10em; height: 3em;">
				      <input type="hidden" value="${sessionScope.id }" name="userid">   
				     <a href="#none"  onclick="myreview_form()" style="background-color:white; border:1px gray solid;border-radius:3px; ">
				     <img src="images/myreviews.jpg" style="align:left; vertical-align:middle">여행후기</a>
				      </form>   </div>
				      
				      <div class="tab2" >
					 <form method='POST' name="mymessage" style="margin:0; width:10em; height: 3em;">
				      <input type="hidden" value="${sessionScope.id }" name="userid">   
				     <a href="#none"  onclick="mymessage_form()" style="background-color:white; border:1px gray solid;border-radius:3px; ">
				     <img src="images/mymessages.jpg" style="align:left; vertical-align:middle">메세지함</a>
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
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
		
			<!-- 메뉴 작성 -->
			<section>
				<div class="row uniform">
					<table class="2kk 12u$(small)" id="mypageMenu">
					  <thead>
					    <h4>Mypage</h4>								<!-- 제목 왼쪽정렬 -->
					  </thead>
					  <tr>
					    <td rowspan="4" class="mypic_td">
							<div class="mypicture">
								<img src="http://211.238.142.74:8080/controller/profile/${user_img }">
							</div>
							<div class="mypictureCaption">
								<h3>${sessionScope.id }</h3>
								<h4>3가이드 4관광</h4>	
							</div>
						</td>
					  </tr>
					  <tr>
					     <form method='POST' name="mywish"">
					     <td>
						     <a href="#none"  onclick="wish_form()">
						     <table class="mypageMenu_menu">
						       <tr>
							     <td class="tdImg"><img src="images/mywish.png" style="vertical-align:middle"></td>
						         <td>Wish List</td>
						         <input type="hidden" value="${sessionScope.id }" name="userid">
						       </tr>
						     </table> 
						     </a>
					     </td>
					     </form>
					     
					     <form method='POST' name="mywriter">
						 <input type="hidden" value="${sessionScope.id }" name="userid">   
					     <td>
						     <a href="#none"  onclick="mywriter_form()">
						     <table class="mypageMenu_menu">
						       <tr>
						         <td><img src="images/mywriters.png" style="vertical-align:middle"></td>
						         <td>My Write</td>
						       </tr>
						     </table> 
						     </a>
					     </td>
						 </form>
					  </tr>
					  
					  <tr>
					    <form method='POST' name="myreservation">
					    <input type="hidden" value="${sessionScope.id }" name="userid">
					    <td>
					    	<a href="#none"  onclick="reservation_form()">
					    	<table class="mypageMenu_menu">
					    	  <tr>
					    	    <td><img src="images/myreservations.png"></td>
					    	    <td>Reservation List</td>
					    	  </tr>
					    	</table>
					    	</a>
					    </td>
					    </form>
					    
					    <form method='POST' name="mydetail">
					    <input type="hidden" value="${sessionScope.id }" name="userid">
					    <td>
					    	<a href="#none"  onclick="mydetail_form()">
					    	<table class="mypageMenu_menu">
					    	  <tr>
					    	    <td><img src="images/mydetails.png"></td>
					    	    <td>Modify Information</td>
					    	  </tr>
					    	</table>
					    	</a>
					    </td>
					    </form>
					  </tr>
					  
					  <tr>
					    <form method='POST' name="myreview">
					    <input type="hidden" value="${sessionScope.id }" name="userid">
					    <td>
					      <a href="#none"  onclick="review_form()">
					      <table class="mypageMenu_menu">
					        <tr>
					          <td><img src="images/myreviews.png" style="vertical-align:middle"></td>
					          <td>My Review</td>
					        </tr>
					      </table>
					      </a>
					    </td>
					    </form>
					    
					    <form method='POST' name="mymessage">
				      	<input type="hidden" value="${sessionScope.id }" name="userid">
					    <td>
					      <a href="#none"  onclick="message_form()">
				     	  <table class="mypageMenu_menu">
				     	    <tr>
				     	      <td><img src="images/mymessages.png" style="vertical-align:middle"></td>
				     	      <td>Message</td>
				     	    </tr>
				     	  </table>
					      </a>
					    </td>
				       </form>
					  </tr>
					</table>
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
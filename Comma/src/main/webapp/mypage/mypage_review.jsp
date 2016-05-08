<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>


</head>
<body>
	<section class="wrapper style5">
	<div class="inner">
		<section id="tabs">

		<div class="tab1">
			<a href="#">여행 후기 쓰기</a>
		</div>
		<div class="tab2">
			<a href="#">나에게 달린 후기 </a>
		</div>


		<div class="box alt table-wrapper tabscontents t1">
			<table class="alt">
				<thead>
					<tr>
						<th width="7%">번호</th>
						<th width="30%">글 제목</th>					
						<th width="10%">가이드이름</th>
						<th width="10%">쓰기</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="guidevo" items="${guidevo }">
					<tr>
						<td>${guidevo.guide_no }</td>
						<td>${guidevo.guide_subject }</td>
						<th>${guidevo.user_id }</th>
						<td><input type="button" value="쓰기" class =reviewBtn id="reviewBtn${guidevo.guide_no }" ></td>
					</tr>	
				</c:forEach>				
				</tbody>
			</table>
		</div>



		<div class="table-wrapper tabscontents t2">
			<table class="alt">
				<thead>
					<tr>
						<th width="7%">번호</th>
						<th width="10%">글 제목</th>
						<th width="10%">작성자 별명</th>
						<th width="30%">내용</th>
						<th width="10%">점수</th>						
						
						
					</tr>
				</thead>
				<tbody>
				<c:forEach var="vo" items="${list }">
					<tr>
						<td>${vo.reviewvo.review_no }</td>
						<td>${vo.guidevo.guide_subject }</td>
						<th>${vo.uservo.user_nick }</th>
						<td>${vo.reviewvo.review_text }</td>
						<td>${vo.reviewvo.review_score }</td>					
					</tr>	
				</c:forEach>				
				</tbody>
			</table>
		</div>
		</section>
	</div>
	<c:forEach var="guidevo" items="${guidevo }">
	 <form class="white-popup mfp-hide" id="review${guidevo.guide_no }"  method="post" action="reviewWrite.do">
	                  <h1>Message</h1>
	                    <table>	           
	                     	<tr>
	                     	  <td align="center">점수</td>
	                     	  <td>    
	                     	  	 <select name="score">	                     	  	 
	                     	    	 <option value="1">★☆☆☆☆</option>
	                     	    	 <option value="2">★★☆☆☆</option>
	                     	    	 <option value="3">★★★☆☆</option>
	                     	    	 <option value="4">★★★★☆</option>
	                     	    	 <option value="5">★★★★★</option>           
	                     	   	</select>
	                     	  </td>	                     	  
	                     	</tr>
	                     	<tr>
	                     	  <td colspan="2"><textarea rows="5" name=review_text></textarea></td>
	                     	</tr>
	                     	<tr>
	                     	  <td colspan="2" align="center"> 
	                     	  	<input type="button" value="후기달기" class="sendReviwBtn" id="sendReviwBtn${guidevo.guide_no }" > 
	                     	  	<input type="hidden" value="${guidevo.guide_no }" name="guide_no">                 	  	
	                     	  	
	                       	  </td>
	                       	 </tr>
	                     </table>         
	               </form> 
	   </c:forEach>
	
	</section>



	<script async src="//jsfiddle.net/cosmosjs/xQ8JC/3/embed/"></script>
	<script type="text/javascript">
		$('.t1').show();

		$('#tabs div a').on(
				'click',
				function() {
					// alert('');
					index = $(this).parent().index() + 1;
					if (index == 3) {
						index = 2;
					}
					$('#tabs div a').css('background-color', '#999')
							.removeClass('active')
					$('.tabscontents').hide();

					$('.t' + index).fadeIn();
					$(this).css('background-color', '#000').addClass('active');
				});
		
		$('.reviewBtn').click(function(){	
			var id= $(this).attr('id');
			var no=id.substring(9)			
			  $.magnificPopup.open({
			        items :{src:'#review'+no,type : 'inline'},
			              preloader: false,focus: '#name',
			              callbacks: {beforeOpen: function() {
			                 if($(window).width() < 700) {
			                    this.st.focus = false;
			                 } else {
			                    this.st.focus = '#messageTextarea';
			                 }
			              }
			        }

			     });
			
		})
		$('.sendReviwBtn').click(function(){
			var id=$(this).attr('id'); 
			var no=id.substring(12)
			$('#review'+no).submit();
			
		})
		
		
		
</script>

</body>
</html>
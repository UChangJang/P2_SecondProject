<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<section class="wrapper style5">
	<div class="inner">
		<section id="tabs">
		
			<div class="tab1"><a href="#">받은 쪽지</a></div>
			<div class="tab2"><a href="#">보낸 쪽지</a></div>
			
			<!-- 1.받은 쪽지 -->
			<div class="table-wrapper tabscontents t1">
				<table class="alt">
					<thead>					
						<tr>
							<th width="10%">확인</th>
							<th width="40%">내용</th>
							<th width="10%">보낸 사람 별명</th>
							<th width="10%">날짜</th>
							<th width="7%">답장</th>
						</tr>					
					</thead>
					
					<tbody>
					<c:forEach var="recvo" items="${recvo }">
						<tr>
							
							<c:if test="${recvo.message_check=='n' }">
							<td style=" color: red; font: bold;">new 
							</td>
							</c:if>
							<c:if test="${recvo.message_check!='n' }">
							<td style=" color: black; font: bold;">read 
							</td>
							</c:if>
							
							<td class="recvomessageText" id="recvo${recvo.message_no }" style="cursor: pointer; ">${recvo.message_text }</td>
							<td>${recvo.message_send }</td>
							<td>${recvo.message_time }</td>
							<td><input type="button" value="답장" class="ReBtn" id="reBtn${recvo.message_no }" ></td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
			
			<div class="table-wrapper tabscontents t2">
				<table class="alt">
					<thead>
						<tr>
							<th width="10%">확인</th>
							<th width="40%">내용</th>
							<th width="10%">받는 사람별명</th>
							<th width="10%">날짜</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach var="sendvo" items="${sendvo }">
						<tr>
							<c:if test="${sendvo.message_check=='n' }">
								<td style=" color: red; font: bold;">no 
								</td>
							</c:if>
								<c:if test="${sendvo.message_check!='n' }">
								<td style=" color: blue; font: bold;">yes 
							</td>
							</c:if>
							<td class="sendvomessageText" id="send${sendvo.message_no }" style="cursor: pointer; ">${sendvo.message_text }</td>
							<td>${sendvo.message_receive }</td>
							<td>${sendvo.message_time }</td>							
						</tr>
					</c:forEach>						
					</tbody>
				</table>
			</div>
			</section>
			</div>

	          <c:forEach var="recvo" items="${recvo }"  >
	               <form class="white-popup mfp-hide" id="re${recvo.message_no }" method="post" action="messageDelete.do">
	                  <h1>Message Detail</h1>

	                    <table>
	                     	<tr>
	                     	  <td width="30%" align="right">보낸 사람</td>
	                     	  <td width="70%" align="left" >${recvo.message_send }</td>
	                     	</tr>
	                     	<tr>
	                     	  <td width="30%" align="right">시간</td>
	                     	  <td width="70%" align="left">${recvo.message_time }</td>
	                     	</tr>
	                     	<tr>
	                     	  <td colspan="2" align="center">내용</td>
	                     	</tr>
	                     	<tr>
	                     	  <td colspan="2"><textarea rows="5" readonly="readonly">${recvo.message_text}</textarea></td>
	                     	</tr>
	     					<tr>
	                     	  <td colspan="2" align="center"> 
	                     	  	<input type="button" value="삭제" class="DelBtn" id="DelBtn${recvo.message_no }" > 
	                     	  	<input type="hidden" value="${recvo.message_no }" name="message_no">
	                       	  </td>
	                     	</tr>
	                     </table>         
	               </form> 
	               
	               
	               <!--  -->
	               	<form class="white-popup mfp-hide" id="send${recvo.message_no }"  method="post" action="messageSend.do" >
	                  <h1>Message Reple</h1>
	                    <table>
	                     	<tr>
	                     	  <td width="30%" align="right">받는 사람</td>
	                     	  <td width="70%" align="left">
	                     	  <input type="text" name="message_receive" value="${recvo.message_send }">
	                     	 </td>
	                     	</tr>
	                     	<tr>
	                     	  <td colspan="2" align="center">내용</td>
	                     	</tr>
	                     	<tr>
	                     	  <td colspan="2"><textarea rows="5" name="message_text"></textarea></td>
	                     	</tr>
	     					<tr>
	                     	  <td colspan="2" align="center"> 
	                     	  	<input type="button" value="답장" class="ReSendBtn" id="reSendBtn${recvo.message_no }" >                  
	                       	  </td>
	                     	</tr>
	                     </table>         
	               </form> 
	               </c:forEach> 
	               
	               <c:forEach var="sendvo" items="${sendvo }">
	                <form class="white-popup mfp-hide" id="sendpopup${sendvo.message_no }"  method="post" action="messageDelete.do">
	                  <h1>Message</h1>
	                    <table>
	                     	<tr>
	                     	  <td width="30%" align="right">받는사람</td>
	                     	  <td width="70%" align="left">${sendvo.message_receive }</td>
	                     	</tr>
	                     	<tr>
	                     	  <td width="30%" align="right">시간</td>
	                     	  <td width="70%" align="left">${sendvo.message_time }</td>
	                     	</tr>
	                     	<tr>
	                     	  <td colspan="2" align="center">내용</td>
	                     	</tr>
	                     	<tr>
	                     	  <td colspan="2"><textarea rows="5" readonly="readonly">${sendvo.message_text}</textarea></td>
	                     	</tr>
	                     	<tr>
	                     	  <td colspan="2" align="center"> 
	                     	  	<input type="button" value="삭제" class="sendDelBtn" id="sendDelBtn${sendvo.message_no }" > 
	                     	  	<input type="hidden" value="${sendvo.message_no }" name="message_no">
	                       	  </td>
	                       	 </tr>
	                     </table>         
	               </form> 
	               </c:forEach>  
	                
		</section>
	
<script async src="//jsfiddle.net/cosmosjs/xQ8JC/3/embed/"></script>
<script type="text/javascript">
$('.ReBtn').click(function(){
	var id=$(this).attr('id');
	var no=id.substring(5) 
  	var magnificPopup = $.magnificPopup.instance; 	  
 	magnificPopup.close();
	  $.magnificPopup.open({
	        items :{src:'#send'+no,type : 'inline'},
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
$('.DelBtn').click(function(){
	var id=$(this).attr('id');
	var no=id.substring(6);
	$('#re'+no).submit();   
	
	
})
$('.sendDelBtn').click(function(){
	var id=$(this).attr('id');
	var no=id.substring(10);
	$('#sendpopup'+no).submit();   
	
	
})
$('.recvomessageText').click(function(){
	
	var id=$(this).attr('id');
	var no=id.substring(5);
	  $.magnificPopup.open({
        items :{src:'#re'+no,type : 'inline'},
              preloader: false,focus: '#name',
              callbacks: {beforeOpen: function() {
                 if($(window).width() < 700) {
                    this.st.focus = false;
                 } else {
                    this.st.focus = '#name';
                 }
              }
        }

     });
	
})
$('.sendvomessageText').click(function(){
	
	var id=$(this).attr('id');
	var no=id.substring(4);
	  $.magnificPopup.open({
        items :{src:'#sendpopup'+no,type : 'inline'},
              preloader: false,focus: '#name',
              callbacks: {beforeOpen: function() {
                 if($(window).width() < 700) {
                    this.st.focus = false;
                 } else {
                    this.st.focus = '#name';
                 }
              }
        }

     });
	
})
$('.ReSendBtn').click(function(){
	var id= $(this).attr('id');
	var no=id.substring(9);
	$('#send'+no).submit();   

})	

$('.t1').show();
   $(document).ready(function() {
	   $('#tabs div a').on('click',
				function() {
					// alert('');
					index = $(this).parent().index() + 1;
					if(index==3){
						index=2;
					}
					$('#tabs div a').css('background-color', '#999').removeClass('active')
					$('.tabscontents').hide();
					
					$('.t' + index).fadeIn();
					$(this).css('background-color', '#000').addClass('active');
				});	   
	     



	     
	      
   });


	</script>

</body>
</html>
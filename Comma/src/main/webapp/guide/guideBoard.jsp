<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
<title>guideBoard</title>
<!-- bxSlider() �Լ� ��ü�� �̻��ϴٰ� �Ǵ�!! �ٸ����� �ִ� ���� �ٸ� jquery�� ������... -->
<!-- <script type="text/javascript">
	$(function() {
		$('.bxslider').bxSlider();
	});
</script> -->

<script type=text/javascript>
<<<<<<< HEAD
$(function(){
	   $('#wish_ok').click(function(){
	      var param= "guide_no="+$('#wishwish').val();
	      sendMessage("POST", "wish_ok.do", param, wish)
	   });
	});
	function wishok()
	{
	   if(httpRequest.readyState==4)
	   {
	      if(httpRequest.status==200)
	      {
	         $('#tab1').html(httpRequest.responseText);
	      }
	   }
	}	
 $(function(){
=======
	
$(function(){
>>>>>>> refs/remotes/origin/master
	var width1=$(window).width();
	var navoffset = $('#guideBoardSide').offset();

	$(window).scroll(function(){  //��ũ���ϸ� �Ʒ� �ڵ� ����
		
		
	       var num = $(this).scrollTop();  // ��ũ�Ѱ�
	       if( num >= 530 && width1>=2000){  			// ��ũ���� 36�̻� ���� ��
	    	   $("#guideBoardSide").css("position","fixed").css("width","13em").css("top","7em");
	    	}
	       if( num >= 530 && width1>1680){  			// ��ũ���� 36�̻� ���� ��
	    	   $("#guideBoardSide").css("position","fixed").css("width","13em").css("top","7em");
	    	}else if(num >= 530 && width1>1280){
	    		   $("#guideBoardSide").css("position","fixed").css("width","12.5em").css("top","7em");
	    	}else if(num >= 530 && width1>1100){
	    		   $("#guideBoardSide").css("position","fixed").css("width","14em").css("top","7em");
	    	}
	    	else if(num >= 530 && width1>980){
	    		   $("#guideBoardSide").css("position","fixed").css("width","16em").css("top","5em");
	    	}else if(num >= 530 && width1>780){
	    		   $("#guideBoardSide").css("position","fixed").css("width","14em").css("top","5em");
	    	}	         
	       
			if(num<530){				//��ũ�� ���� ������
	          $("#guideBoardSide").css("position","relative").css("width","100%");
	       }  
			
			if(width1<980){				//���α��� ª������ �������
				 $(".side2").css("display","none");
			}
	  });
	
	 $('#messageWrite').magnificPopup({
         items :{src:'#message-form',type : 'inline'},
               preloader: false,focus: '#message_content',
               callbacks: {beforeOpen: function() {
                  if($(window).width() < 700) {
                     this.st.focus = false;
                  } else {
                     this.st.focus = '#message_content';
                  }
               }
         }
         
      });
	
	 $('#msg_btn').click(function(){
		
		 var message_content = $('#message_content').val();
		 if(message_content.trim()==""){
			 $('#message_content').focus();
			 return;
		 }
		 
		 $('#message-form').submit();
	 });
	
}); 

</script>
</head>
<body>


<div id="nav2">
	<ul>
	 	 <li><a class="scrolly" href="#intropeople">���̵�Ұ�</a></li>
	 	 <li><a class="scrolly" href="#introplace">�����Ұ�</a></li>
		 <li><a class="scrolly" href="#pic">�ֿ����</a></li>
		 <li><a class="scrolly" href="#detail">������</a></li>
		 <li><a class="scrolly" href="#mention">�ı�</a></li>
	</ul>
	
	 <!-- ���������� ��� -->
     <form class="white-popup mfp-hide" id="message-form" method="post" action="messageSend.do">
        <h1>Message</h1>
        <div>
           <font color="pink">
           <input name="receive_name" id="receive_name" required="" type="text"
              placeholder="�޴»��" style="width:10em;float:left" disabled="disabled" value="${vo.uservo.user_name }"></font>  
           <input name="send_name" id="send_name" required="" type="text"
              placeholder="�����»��" style="width:10em;float:right" disabled="disabled" value="${sessionScope.name }">
        </div>
		<br><br>
        <div>
           <textarea placeholder="Message Detail" style="height:15em" name="message_text" id="message_content"></textarea>
        </div>
        <br>
        <div align="center">
           <input value="Send" id="msg_btn" type="button">
        </div>
        
        <input type="hidden" name="message_receive" value="${vo.uservo.user_id }">
      
     </form>
</div>

<!-- Main -->
<article id="main">
	<header>
		<h2>[����]���ﵵ������</h2>
		<p>��մ� ����</p>
	</header>
	
	<section class="wrapper style5">
		<div class="inner">
			<!-- <section class="style5"> -->
			<div class="row side0">

				<div class="3u 12u$(small)">								<!-- 1 ���� -->
					<div id="">
						<div>���̵�</div>		
						<div class="topBoardShort">${vo.uservo.user_name }</div>							
					</div>
				</div>
				<div class="2u 12u$(small)">								<!-- 1 ���� -->
					<div id="">
						<div>����Ը�</div>		
						<div class="topBoardShort">${vo.text_total_person }</div>							
					</div>
				</div>
				<div class="2u 12u$(small)">								<!-- 1 ���� -->
					<div id="">
						<div>�ҿ�ð�</div>		
						<div class="topBoardShort">${vo.text_time }</div>							
					</div>
				</div>
				<div class="2u 12u$(small)">								<!-- 1 ���� -->
					<div id="">
						<div>�̵�����</div>		
						<div class="topBoardShort">${vo.text_move }</div>							
					</div>
				</div>
				<div class="3u$ 12u$(small)">	
																
				</div>
				
				
				<div class="9u 12u$(medium) side1">
					<hr id="intropeople"/>
					<h5>���̵�Ұ�</h5>
					<textarea style="height:20em">${vo.uservo.user_introduce }</textarea>

					<hr id="introplace" />
					<h5>������Ÿ�ϼҰ�</h5>
					<textarea style="height:20em">${vo.guidevo.guide_loc_intro }</textarea>

					<hr id="pic"/>
					<h4>�������� ����</h4>					
					<span class="image fit a">
					 <div id="main_bn">
							<li><img src="http://211.238.142.74:8080/controller/image/${vo.guidevo.guide_img }" alt="" /></li>		
							
					</div> 
					</span>

					<hr id="detail" />
					<h5>���λ���</h5>
					<div class="table-wrapper">
						<table>
							<thead>
								<tr>
									<th>�׸�</th>
									<th>���λ���</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>����</td>
									<td>${vo.text_loc }</td>
								</tr>
								<tr>
									<td>���</td>
									<td>${vo.text_cost }</td>
								</tr>
								<tr>
									<td>���Ի���</td>
									<td>${vo.guidevo.guide_cost_detail }</td>
								</tr>
								<tr>
									<td>����Ը�</td>
									<td>${vo.text_total_person }</td>
								</tr>
								<tr>
									<td>������¥</td>
									<td>${vo.text_tour_date }</td>
								</tr>
								<tr>
									<td>�����ð�</td>
									<td>${vo.text_time1 }${vo.text_time2 } ~ ${vo.text_time3 }${vo.text_time4 }</td>
								</tr>
								<tr>
									<td>�������</td>
									<td>${vo.guidevo.guide_meet }</td>
								</tr>
							</tbody>
						</table>
					</div>



					<hr id="mention"/>
					<h5>�ı�</h5>
					<div class="box alt">
						<div class="row uniform 50%">
						
						<c:forEach var="i" begin="1" end="5">
							<div class="2u">
								<span class="image fit"> <a href="guideWrite.do"><img
										src="images/banner.jpg" alt="" /></a>
								</span>
							</div>

							<div class="10u">
								<span class="image fit">
									<table class="alt">
										<tr>
											<td>�Ⱥ���</td>
											<td>���ټ���</td>
										</tr>
										<tr>
											<td colspan=4>���������̾����ϴ�.���������̾����ϴ�.���������̾����ϴ�.</td>
										</tr>
									</table>
								</span>
							</div>
						</c:forEach>
							
						</div>
					</div>

					<hr />
					<c:if test="${confirmId == false }">
					<ul class="actions fit small">
<<<<<<< HEAD
						<li><a href="#" class="button special fit small">����������</a></li>
						<li><a href="#" class="button fit small">�����ϱ�</a></li>
						<li><input type="button" id="wish_ok" value="���ϱ�" ><input type="hidden" id="wish wish" value="${vo.guidevo.guide_no }"></li>
=======
						<li><button class="button special fit small" id="messageWrite">����������</button></li>
						<li><button class="button fit small">�����ϱ�</button></li>
						<li><button class="button special fit small">���ϱ�</button></li>
>>>>>>> refs/remotes/origin/master
					</ul>
					</c:if>
					<c:if test="${confirmId == true }">
					<ul class="actions fit small">
						<li><a href="guideUpdate.do?no=${vo.guidevo.guide_no }" class="button special fit small">�����ϱ�</a></li>
						<li><a href="guideDelete.do?no=${vo.guidevo.guide_no }" class="button fit small">�����ϱ�</a></li>
					</ul>	
					</c:if>
				</div>


				<!-- ���̵�޴�! -->
				<div class="3u$ side2">
					<div id="guideBoardSide">
						<div id="reservenow">RESERVE NOW</div>	
						<div class="BoardSide1">�ų��� ���� �߰� ����</div>
						<hr>
						<div class="BoardSide1">����:${vo.text_cost }��</div>
						<div class="BoardSide1">��¥:${vo.text_tour_date }</div>
						<div class="BoardSide1">�ο�:${vo.text_total_person }��</div>
						<div class="BoardSide1">����:${vo.text_move }</div>
						<div class="BoardSide1">��ȸ��:${vo.text_hit }</div>
						<div class="BoardSide1"><input type="button" value="reserve"></div>
					</div>
				</div>
			</div>

		</div>
	</section>
</article>

</body>
</html>
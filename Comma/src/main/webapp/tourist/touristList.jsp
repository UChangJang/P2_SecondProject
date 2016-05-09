<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Tourist</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript" src="ajax.js"></script>
<script type="text/javascript">
$(function(){
		//1.������ư 
		$('#prevBtn').click(function(){		//select_��������
			if('${curpage}'>1){					//������������ ���� ����
				var place=$('#place').val();		//1.������ ��������
				var date=$('#dt').val();			//2.��¥�� ��������
				if(place=="" || date==""){			//*�˻������ �ֽż����� ����
					var param="page="+${curpage-1};
					sendMessage("POST", "tourist_nextPrev.do",param, tourContent2);
				}else{								//*�˻��� �ִ� ���¿��� ����	
					var sortType=$('#sortType').val();	//���ݳ�����
					var param="place="+place+"&date="+date+"&type="+sortType+"&page="+${curpage-1};
					sendMessage("POST", "tourist_sort.do",param, tourContent2);
				}	
			}else{								//������������ ���� �Ұ���
				alert("This is the 1st page.");
				return;
			}
		});
		
		//2.���� ��ư
		$('#nextBtn').click(function(){		//select_��������
			if('${curpage}'<'${totalpage}'){		//������������ ���� ����
				var place=$('#place').val();		//1.������ ��������
				var date=$('#dt').val();			//2.��¥�� ��������
				
				if(place=="" || date==""){			//*�˻������ �ֽż����� ����
					var param="page="+${curpage+1};
					sendMessage("POST", "tourist_nextPrev.do",param, tourContent2);
				}else{								//*�˻��� �ִ� ���¿��� ����	
					var sortType=$('#sortType').val();	//���ݳ�����
					var param="place="+place+"&date="+date+"&type="+sortType+"&page="+${curpage+1};
					sendMessage("POST", "tourist_sort.do",param, tourContent2);
				}	
			}else{								//������������ ���� �Ұ���
				alert("This is the last page.");
				return;
			}
		});
		
		$('.wishlist').click(function(){		//1.���ø���Ʈ�� ���(�̹��߰��� or �߰��Ϸ�)
			<c:if test="${sessionScope.id==null }">	
				alert("You should login first.");
				return;
			</c:if>
			
			var id=$(this).attr('id');
			var no=id.substring(4);	//wish${vo.touristvo.tour_no}
			var param="tour_no="+no+"&id="+"${sessionScope.id}";
			sendMessage("POST", "wishCheck.do", param, wishCheck);
		});


		$('.reserve').click(function(){		//2.�����ϱ�(�̹��߰��� or �߰��Ϸ�)
			<c:if test="${sessionScope.id==null }">	
				alert("You should login first.");
				return;
			</c:if>
			
			var id=$(this).attr('id');
			var no=id.substring(3);			//res${vo.touristvo.tour_no}
			var param="tour_no="+no+"&id="+"${sessionScope.id}";
			sendMessage("POST", "resTourCheck.do", param, resCheck);
		});
});




function wishCheck() {
	if (httpRequest.readyState == 4) {
		if (httpRequest.status == 200) {
			alert(httpRequest.responseText);
		}
	}
}

function resCheck() {
	if (httpRequest.readyState == 4) {
		if (httpRequest.status == 200) {
			alert(httpRequest.responseText);
		}
	}
}

function tourContent2() {
	if (httpRequest.readyState == 4) {
		if (httpRequest.status == 200) {
			$('#tourContent').html(httpRequest.responseText);
		}
	}
}
</script>

</head>
<body>
	<section class="wrapper style5" id="touristMarginTop">		<!-- tourist����Ʈ 5���� -->
		<div class="inner">	
	
			<div class="box alt">
					<div class="row uniform 50%">
						
					<c:forEach var="vo" items="${list }">
						<div class="3u">					<!-- ���� -->
							<span class="mypictureTour">
								<img src="http://211.238.142.74:8080/controller/profile/${vo.uservo.user_img }" alt=""/><!-- �̹������� -->
							</span>	
						</div>
						<div class="9u">					<!-- ����Ʈ -->
							<span class="image fit c">
								<table class="plusDetail" id="d${vo.touristvo.tour_no}" >	<!-- #d3 �̷������� ���� -->
									<tr>
										<td colspan=3>[${vo.text_loc}]${vo.touristvo.tour_theme }</td>
									</tr>
									<tr>
										<td>DATE:${vo.text_tour_date}</td>
										<td>TIME:${vo.text_time1}${vo.text_time2 }~${vo.text_time3}${vo.text_time4}</td>	<!-- ��¥ -->
										<td>PEOPLE:${vo.text_total_person} </td>
									</tr>
									<tr>
										<td>NICK:${vo.uservo.user_nick}[${vo.touristvo.user_id }]</td>
										<td>METHOD:${vo.text_move}</td>
										<td>COST:${vo.text_cost }</td>
									</tr>
								</table>
							</span>	
						</div>
						
						<!-- �󼼺���1 �󼼺���1 �󼼺���1 �󼼺���1 �󼼺���1 �󼼺���1 �󼼺���1 �󼼺���1 �󼼺���1 �󼼺���1 -->
						<div class="3u 12u$(xsmall) dd${vo.touristvo.tour_no}" style="display:none"></div>
						<div class="9u$ 12u$(xsmall) dd${vo.touristvo.tour_no}" style="display:none">					<!-- ����Ʈ -->
							<div id="detail_textarea">
								<textarea>${vo.touristvo.tour_detail }</textarea>
							</div>
							<div id="detail_textarea1"> 
								<span><button class="button tourB letter" id="let${vo.touristvo.tour_no}">Message</button></span>
								<span><button class="button tourB wishlist" id="wish${vo.touristvo.tour_no}">WishList</button></span>
								<span><button class="button tourB reserve" id="res${vo.touristvo.tour_no}">Reserve</button></span>
							</div>
						</div>
					</c:forEach>
						
				</div>
			</div>
				<!-- ���������� -->

				<c:forEach var="list" items="${list }">
			 <form class="white-popup mfp-hide" id="letPop${list.touristvo.tour_no }">

	                  <h1>Message</h1>
	                    <table>
	                     	<tr>
	                     	  <td width="30%" align="right">�޴»��</td>
	                     	  <td width="70%" align="left" >
	                     	  <input type="text" readonly="readonly" value="${list.touristvo.user_id }" name="message_receive"></td>
	                     	</tr>
	                     	<tr>
	                     	  <td colspan="2" align="center">����</td>
	                     	</tr>
	                     	<tr>
	                     	  <td colspan="2"><textarea rows="5"  name="message_text" ></textarea></td>
	                     	</tr>
	                     	<tr>
	                     	  <td>
	                     	  <input type="button"  value="������"id="messageBtn${list.touristvo.tour_no}" class="messgaeBtn"> 
	                     	</tr>
	                     </table>         
	               		</form> 
	            </c:forEach>

			
               
			<!-- ������ ��Ʈ�� -->
			<table id="table_content">
			<tr>
				<td align=right>
					<img src="images/prev.png" border=0 id="prevBtn">&nbsp;
					<img src="images/next.png" border=0 id="nextBtn">&nbsp;&nbsp;
					${curpage} page / ${totalpage } pages 
				</td>
			</tr>
			</table>
		</div>
	</section>
	
                  


<!-- ���γ��� �߰� jquery -->
	<script type="text/javascript">
		var d = 0;
		$(function() {
			$('.plusDetail').click(function() {
				var id = $(this).attr('id'); //id���� ������
				var no = id.substring(1); //d1 d2 d3...
				if (d == 0) {
					$('.dd' + no).show();
					d = 1;
				} else {
					$('.dd' + no).hide();
					d = 0;
				}
			});
		 });
	</script>

<!-- ���������� â -->
<script async src="//jsfiddle.net/cosmosjs/xQ8JC/3/embed/"></script> 
<script type="text/javascript">

$('.letter').click(function(){	
	var id=$(this).attr('id');
	
	var no=id.substring(3);
	
	alert(no)
	  $.magnificPopup.open({
	        items :{src:'#letPop'+no,type : 'inline'},
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
});
$('.messgaeBtn').click(function(){
	var id=$(this).attr('id');
	var no=id.substring(10);
	$('#message'+no).submit();
})
</script>


</body>
</html>
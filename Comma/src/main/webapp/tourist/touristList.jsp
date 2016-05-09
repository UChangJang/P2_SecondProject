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
		//1.이전버튼 
		$('#prevBtn').click(function(){		//select_지역선택
			if('${curpage}'>1){					//이전페이지로 가기 가능
				var place=$('#place').val();		//1.지역값 가져오기
				var date=$('#dt').val();			//2.날짜값 가져오기
				if(place=="" || date==""){			//*검색어없이 최신순으로 볼때
					var param="page="+${curpage-1};
					sendMessage("POST", "tourist_nextPrev.do",param, tourContent2);
				}else{								//*검색어 있는 상태에서 볼때	
					var sortType=$('#sortType').val();	//가격높은순
					var param="place="+place+"&date="+date+"&type="+sortType+"&page="+${curpage-1};
					sendMessage("POST", "tourist_sort.do",param, tourContent2);
				}	
			}else{								//이전페이지로 가기 불가능
				alert("This is the 1st page.");
				return;
			}
		});
		
		//2.다음 버튼
		$('#nextBtn').click(function(){		//select_지역선택
			if('${curpage}'<'${totalpage}'){		//다음페이지로 가기 가능
				var place=$('#place').val();		//1.지역값 가져오기
				var date=$('#dt').val();			//2.날짜값 가져오기
				
				if(place=="" || date==""){			//*검색어없이 최신순으로 볼때
					var param="page="+${curpage+1};
					sendMessage("POST", "tourist_nextPrev.do",param, tourContent2);
				}else{								//*검색어 있는 상태에서 볼때	
					var sortType=$('#sortType').val();	//가격높은순
					var param="place="+place+"&date="+date+"&type="+sortType+"&page="+${curpage+1};
					sendMessage("POST", "tourist_sort.do",param, tourContent2);
				}	
			}else{								//이전페이지로 가기 불가능
				alert("This is the last page.");
				return;
			}
		});
		
		$('.wishlist').click(function(){		//1.위시리스트에 담기(이미추가됨 or 추가완료)
			<c:if test="${sessionScope.id==null }">	
				alert("You should login first.");
				return;
			</c:if>
			
			var id=$(this).attr('id');
			var no=id.substring(4);	//wish${vo.touristvo.tour_no}
			var param="tour_no="+no+"&id="+"${sessionScope.id}";
			sendMessage("POST", "wishCheck.do", param, wishCheck);
		});


		$('.reserve').click(function(){		//2.예약하기(이미추가됨 or 추가완료)
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
	<section class="wrapper style5" id="touristMarginTop">		<!-- tourist리스트 5개씩 -->
		<div class="inner">	
	
			<div class="box alt">
					<div class="row uniform 50%">
						
					<c:forEach var="vo" items="${list }">
						<div class="3u">					<!-- 사진 -->
							<span class="mypictureTour">
								<img src="http://211.238.142.74:8080/controller/profile/${vo.uservo.user_img }" alt=""/><!-- 이미지사진 -->
							</span>	
						</div>
						<div class="9u">					<!-- 리스트 -->
							<span class="image fit c">
								<table class="plusDetail" id="d${vo.touristvo.tour_no}" >	<!-- #d3 이런식으로 보냄 -->
									<tr>
										<td colspan=3>[${vo.text_loc}]${vo.touristvo.tour_theme }</td>
									</tr>
									<tr>
										<td>DATE:${vo.text_tour_date}</td>
										<td>TIME:${vo.text_time1}${vo.text_time2 }~${vo.text_time3}${vo.text_time4}</td>	<!-- 날짜 -->
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
						
						<!-- 상세보기1 상세보기1 상세보기1 상세보기1 상세보기1 상세보기1 상세보기1 상세보기1 상세보기1 상세보기1 -->
						<div class="3u 12u$(xsmall) dd${vo.touristvo.tour_no}" style="display:none"></div>
						<div class="9u$ 12u$(xsmall) dd${vo.touristvo.tour_no}" style="display:none">					<!-- 리스트 -->
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
				<!-- 쪽지보내기 -->

				<c:forEach var="list" items="${list }">
			 <form class="white-popup mfp-hide" id="letPop${list.touristvo.tour_no }">

	                  <h1>Message</h1>
	                    <table>
	                     	<tr>
	                     	  <td width="30%" align="right">받는사람</td>
	                     	  <td width="70%" align="left" >
	                     	  <input type="text" readonly="readonly" value="${list.touristvo.user_id }" name="message_receive"></td>
	                     	</tr>
	                     	<tr>
	                     	  <td colspan="2" align="center">내용</td>
	                     	</tr>
	                     	<tr>
	                     	  <td colspan="2"><textarea rows="5"  name="message_text" ></textarea></td>
	                     	</tr>
	                     	<tr>
	                     	  <td>
	                     	  <input type="button"  value="보내기"id="messageBtn${list.touristvo.tour_no}" class="messgaeBtn"> 
	                     	</tr>
	                     </table>         
	               		</form> 
	            </c:forEach>

			
               
			<!-- 페이지 컨트롤 -->
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
	
                  


<!-- 세부내용 추가 jquery -->
	<script type="text/javascript">
		var d = 0;
		$(function() {
			$('.plusDetail').click(function() {
				var id = $(this).attr('id'); //id값을 가져옴
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

<!-- 쪽지보내기 창 -->
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
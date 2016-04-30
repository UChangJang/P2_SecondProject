<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
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
					alert(param);
					sendMessage("POST", "tourist_nextPrev.do",param, tourContent2);
				}else{								//*검색어 있는 상태에서 볼때	
					var sortType=$('#sortType').val();	//가격높은순
					var param="place="+place+"&date="+date+"&type="+sortType+"&page="+${curpage-1};
					alert(param);
					sendMessage("POST", "tourist_sort.do",param, tourContent2);
				}	
			}else{								//이전페이지로 가기 불가능
				alert("첫페이지입니다.");
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
					alert(param);
					sendMessage("POST", "tourist_nextPrev.do",param, tourContent2);
				}else{								//*검색어 있는 상태에서 볼때	
					var sortType=$('#sortType').val();	//가격높은순
					var param="place="+place+"&date="+date+"&type="+sortType+"&page="+${curpage+1};
					alert(param);
					sendMessage("POST", "tourist_sort.do",param, tourContent2);
				}	
			}else{								//이전페이지로 가기 불가능
				alert("끝페이지입니다.");
				return;
			}
		});
});

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
							<span class="image fit">
								<img src="../controller/images/pic01.jpg" alt=""/><!-- 이미지사진 -->
							</span>	
						</div>
						<div class="9u">					<!-- 리스트 -->
							<span class="image fit c">
								<table class="plusDetail" id="d${vo.touristvo.tour_no}" >	<!-- #d3 이런식으로 보냄 -->
									<tr>
										<td colspan=3>[${vo.text_loc}]${vo.touristvo.tour_theme }</td>
									</tr>
									<tr>
										<td>투어날짜:${vo.text_tour_date}</td>
										<td>${vo.text_time1 }~${text_time2}</td>
										<td>${vo.text_total_person}명 </td>
									</tr>
									<tr>
										<td>${vo.uservo.user_nick}(${vo.touristvo.user_id })</td>
										<td>성별:${vo.uservo.user_sex}</td>
										<td>${vo.text_cost }원</td>
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
								<span><button class="button tourB" id="res${vo.touristvo.tour_no}">Message</button></span>
								<span><button class="button tourB">WishList</button></span>
								<span><button class="button tourB">Reserve</button></span>
							</div>
						</div>
						</c:forEach>
				</div>
			</div>
			
			<!-- 예약창 -->
			<form class="white-popup mfp-hide" id="resPop${vo.touristvo.tour_no}" method="post" action="login.do">
                     <h1>Log-In</h1>
                     <div>
                     	<input type="text" value="NICK:${vo.uservo.user_nick}">
                     	<input type="text" value="LOCATION:${vo.text_loc}[${vo.touristvo.tour_theme }]">
                     </div>
                     <br>
                     <div>
                        <textarea>${vo.touristvo.tour_detail }</textarea>
                     </div>
                     <br>
                     <br>
                     <div class="logbtn">
                        <input name="idfind" value="SEND" id="idfind-btn" type="button">
                        <input name="pwdfind" value="BACK" id="pwdfind-btn" type="button">
                     </div>
               </form>
               
               
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
	<script type="text/javascript">
	Shadowbox.init({
		   players:["iframe"]
		});
			 $('#res'+'${vo.touristvo.tour_no}').magnificPopup({
		         items :{src:'#resPop'+'${vo.touristvo.tour_no}',type : 'inline'},
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
	 </script>
	
	

</body>
</html>
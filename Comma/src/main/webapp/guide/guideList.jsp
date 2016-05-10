<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Guide</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript" src="ajax.js"></script>
<script type="text/javascript">
$(function(){
	
	//1.이전버튼 
	$('#prevBtn').click(function(){		//select_지역선택
		 if('${curpage}'>1){	 				//이전페이지로 가기 가능
			var place=$('#place').val();							//1.지역값 가져오기
			var methods = document.getElementsByName('method');		//2.이동수단 가져오기
			var method_value; // 여기에 선택된 radio 버튼의 값이 담기게 된다.
			for(var i=0; i<methods.length; i++) {
			    if(methods[i].checked) {
			    	method_value = methods[i].id;
			    }
			}	
			var people=$('#people').val();							//3.인원 가져오기
			var date=$('#dt').val();								//4.날짜값 가져오기				
			
			if(place==""){											//1.검색안했을 때	(정렬도 필요없음)	
				var param="page="+${curpage-1};
				sendMessage("POST", "guide_p.do",param, guideContent);
			}
			else if(place!="" && method_value==null){				//2.지역_검색했을 때
				//2-1.정렬 했을 때
				var sortType=$('#sortType').val();	//가격높은순
				
				if(sortType!=""){	//정렬했을 때
					var param="page="+${curpage-1}+"&place="+place+"&type="+sortType;
					sendMessage("POST", "guide_sort.do",param,guideContent);
				}else{				//정렬안했을 때
					var param="page="+${curpage-1}+"&place="+place;
					sendMessage("POST", "guide_search.do",param,guideContent);
				}
			}
			
			//문제 발생 부분!!!!
			else if(place!="" && method_value!=null && place!="" && people!="" && date!=""){	//3.지역,이동수단,인원,날짜_검색했을 때
				var sortType=$('#sortType').val();
			
				if(sortType!=""){	//정렬했을 때
					var param="page="+${curpage-1}+"&place="+place+"&method="+method_value+"&people="+people+"&date="+date+"&type="+sortType;
					sendMessage("POST", "guide_sort.do",param,guideContent);
				}else{				//정렬안했을 때
					var param="page="+${curpage-1}+"&place="+place+"&method="+method_value+"&people="+people+"&date="+date;
					sendMessage("POST", "guide_search_detail.do",param,guideContent);
				}				
			}
		}else{								//이전페이지로 가기 불가능
			alert("This is 1st page.");
			return;
		} 
	});
			
	//2.다음 버튼
	$('#nextBtn').click(function(){				//select_지역선택
		
		if('${curpage}'<'${totalpage}'){		//다음페이지로 가기 가능
			var place=$('#place').val();							//1.지역값 가져오기
			var methods = document.getElementsByName('method');		//2.이동수단 가져오기
			var method_value; 					// 여기에 선택된 radio 버튼의 값이 담기게 된다.
			for(var i=0; i<methods.length; i++) {
			    if(methods[i].checked) {
			    	method_value = methods[i].id;
			    }
			}	
			var people=$('#people').val();							//3.인원 가져오기
			var date=$('#dt').val();								//4.날짜값 가져오기	
			
						
			if(place==""){											//1.검색안했을 때	(정렬도 필요없음)	
				var param="page="+${curpage+1};
				sendMessage("POST", "guide_p.do",param, guideContent);
	}
			else if(place!="" && method_value==null){				//2.지역_검색했을 때
				//2-1.정렬 했을 때
				var sortType=$('#sortType').val();	//가격높은순
				
				if(sortType!=""){	//정렬했을 때
					var param="page="+${curpage+1}+"&place="+place+"&type="+sortType;
					sendMessage("POST", "guide_sort.do",param,guideContent);
					
				}else{				//정렬안했을 때
					var param="page="+${curpage+1}+"&place="+place;
					sendMessage("POST", "guide_search.do",param,guideContent);
				}
			}
			
			//문제발생부분
			else if(place!="" && method_value!=null && place!="" && people!="" && date!=""){	//3.지역,이동수단,인원,날짜_검색했을 때
				var sortType=$('#sortType').val();
				
				if(sortType!=""){	//정렬했을 때
					var param="page="+${curpage+1}+"&place="+place+"&method="+method_value+"&people="+people+"&date="+date+"&type="+sortType;
					sendMessage("POST", "guide_sort.do",param,guideContent);
				}else{				//정렬안했을 때
					var param="page="+${curpage+1}+"&place="+place+"&method="+method_value+"&people="+people+"&date="+date;
					sendMessage("POST", "guide_search_detail.do",param,guideContent);
				}	
			}	
		}else{								//이전페이지로 가기 불가능.
			alert("This is the last page.");
			return;
		}
	});
	
	

});

function guideContent() {
	if (httpRequest.readyState == 4) {
		if (httpRequest.status == 200) {
			$('#guideList').html(httpRequest.responseText);
		}
	}
}
</script>
</head>
<body>
<section class="wrapper style5" id="guideListSection">
	<div class="inner">
		<div class="box alt">
			<div class="row uniform 50%">
			
			<c:forEach var="vo" items="${list }">
				<div class="4u">
					<span class="image fit a" id="guidePic"> 
					<a href="guideBoard.do?no=${vo.guidevo.guide_no }" target="_top">
					<img src="http://211.238.142.74:8080/controller/image/${vo.guidevo.guide_img }" alt="" /></a>
						<div class="listText" id="testtest"></div>
						<div class="listText2">
							<div>
								<input type="button" value="${vo.text_loc }" style="width:10em;font-size:9pt;padding-left:2px;padding-right:2px;float:right;background-color: #0080ff;color: white">
								<span>${vo.uservo.user_nick }(${vo.uservo.user_id })</span>
							</div>
							<div class="secondTable" style="font-weight:bold;font-size: 12pt;max-height: 2em;padding-top: 1px">${vo.guidevo.guide_subject }</div>
							<div class="ThirdTable">
								<span><font color="white">￦${vo.text_cost }</font></span>
							</div>
							<div class="FourthTable">
								<span style="font-weight:bold"><font color="white">${vo.text_move }</font></span>
								<span><font color="yellow">
								<c:forEach var="k" begin="1" end="${vo.num }">★</c:forEach><c:if test="${vo.num!=5 }"><c:forEach var="l" begin="${vo.num+1 }" end="5">☆</c:forEach></c:if>
								</font></span>
							</div>
						</div>
						
						<c:if test="${vo.resNum==0 }">
							<div class="listTextQuickly" style="font-weight:bold;">HURRY UP!!</div>
						</c:if>
						<c:if test="${vo.resNum==1 }">
							<div class="listTextFinish" style="font-weight:bold;"><h1>SOLD<br>OUT </h1></div>
						</c:if>
					</span>
				</div>
			</c:forEach>
			
			</div>
			<br>
			<div>
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
		</div>
	</div>
</section>

</body>
</html>
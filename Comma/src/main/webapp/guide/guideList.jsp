<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>GuideList</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript" src="../ajax.js"></script>
<script type="text/javascript">
$(function(){
	//1.������ư 
	$('#prevBtn').click(function(){		
		
		var param="page="+${curpage-1};		
		sendMessage("POST", "guide_p.do",param, guideContent);
			
	});
	
	//2.���� ��ư
	$('#nextBtn').click(function(){		
		
		var param="page="+${curpage+1};
		sendMessage("POST", "guide_p.do",param, guideContent);
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
		<h4>���̵帮��Ʈ</h4>
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
								<span>����</span>&nbsp;<span>${vo.uservo.user_name }</span>
							</div>
							<div class="secondTable">[����]${vo.guidevo.guide_subject }</div>
							<div class="ThirdTable">
								<span>����</span>&nbsp;<span>${vo.text_cost }��</span>
							</div>
							<div class="FourthTable">
								<span>��������</span>&nbsp;<span><font color="pink">${vo.text_move }</font></span>
							</div>
							<div class="FourthTable">
								<span>���̵�����</span>&nbsp;<span><font color="pink">15��</font></span>
							</div>
						</div>
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
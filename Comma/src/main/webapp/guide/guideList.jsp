<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<section class="wrapper style5" id="guideListSection">
	<div class="inner">
		<h4>���̵帮��Ʈ</h4>
		<div class="box alt">
			<div class="row uniform 50%">
			
			<c:set var="i" value="1" />
			<%-- <c:forEach begin="${i }" end="9" step="1"> --%>
			<c:forEach var="vo" items="${list }">
				<div class="4u">
					<span class="image fit a" id="guidePic"> 
					<a href="guideBoard.do?no=${vo.guidevo.guide_no }" target="_top">
					<!-- <img src="..//211.238.142.74/images/back.jpg" alt="" /></a> -->
					<img src="../controller/images/busan1.jpg" alt="" /></a>
					<!-- <img src="\\\\211.238.142.74\\images\\${vo.guidevo.guide_img}" alt="" /></a> -->
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
								<span>�ı��</span>&nbsp;<span><font color="pink">5��</font></span>
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
			<table>
				<tr>
					<td align=center>[1][2][3][4][5]</td>
				</tr>
				<tr>
					<td align=right>${curpage } page / ${totalpage } pages</td>
				</tr>
			</table>
			
		</div>
	</div>
</section>

</body>
</html>
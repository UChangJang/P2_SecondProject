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
			<c:forEach begin="${i }" end="9" step="1">
				<div class="4u">
					<span class="image fit a" id="guidePic"> 
					<a href="guideBoard.do" target="_top">
					<img src="../controller/images/busan1.jpg" alt="" /></a>
						<div class="listText" id="testtest"></div>
						<div class="listText2">
							<div>
								<span>����</span>&nbsp;<span>�Ⱥ���</span>
							</div>
							<div class="secondTable">[����]����</div>
							<div class="ThirdTable">
								<span>����</span>&nbsp;<span>50000��</span>
							</div>
							<div class="FourthTable">
								<span>��������</span>&nbsp;<span>��ŷ</span>
							</div>
							<div class="FourthTable">
								<span>�ı��</span>&nbsp;<span>5��</span>
							</div>
							<div class="FourthTable">
								<span>���̵�����</span>&nbsp;<span>15��</span>
							</div>
						</div>
					</span>
				</div>
			</c:forEach>
			
			</div>
		</div>
	</div>
</section>

</body>
</html>
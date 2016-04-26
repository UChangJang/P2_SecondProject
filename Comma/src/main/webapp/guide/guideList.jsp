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
		<h4>가이드리스트</h4>
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
								<span>사진</span>&nbsp;<span>안보영</span>
							</div>
							<div class="secondTable">[서울]제목</div>
							<div class="ThirdTable">
								<span>가격</span>&nbsp;<span>50000원</span>
							</div>
							<div class="FourthTable">
								<span>여행유형</span>&nbsp;<span>워킹</span>
							</div>
							<div class="FourthTable">
								<span>후기수</span>&nbsp;<span>5개</span>
							</div>
							<div class="FourthTable">
								<span>가이드평점</span>&nbsp;<span>15개</span>
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
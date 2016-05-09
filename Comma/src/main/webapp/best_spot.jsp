<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>best</title>
</head>
<body>
<c:forEach items="${list }" var="list">
<center>
<a href="guideBoard.do?no=${list.guide_no }">
<tr>
	<p>
		<td><b>${list.text_tour_date }</b></td>
		<td>${list.text_cost }<b>KPW</b></td>
		<td>${list.text_hit }<b>HIT</b></td>
	</p>
</tr>
</a>
</center>
</c:forEach>

</body>
</html>
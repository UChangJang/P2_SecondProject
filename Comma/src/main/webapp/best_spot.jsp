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
<tr>
<td>
${list.text_tour_date }-${list.text_cost }-${list.text_hit }
</td>
</tr>

</c:forEach>

</body>
</html>
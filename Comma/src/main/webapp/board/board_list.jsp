<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>자유롭게 </title>
<link rel="stylesheet" type="text/css" href="table.css">
</head>
<body>
  <center>
    <h3>게시판</h3>
    <header id="table_header">
		<p><img alt="사진이 없성" src="images/boardlist.png"></p>
	</header>
    <!-- <table border=0 width=700>
      <tr>
        <td align=left>
         <a href="board_insert.do">
         <img src="board/image/btn_write.gif" border=0></a>
        </td>
      </tr>
    </table> -->
    <table id="table_content">
      <tr>
        <th width=10%>번호</th>
        <th width=45%>제목</th>
        <th width=15%>이름</th>
        <th width=20%>작성일</th>
        <th width=10%>조회수</th>
      </tr>
      <c:forEach var="vo" items="${list }">
        <tr class="dataTr">
         <td width=10% class="tdcenter">${vo.no }</td>
         <td width=45% class="tdleft">
          <a href="board_content.do?no=${vo.no }&page=${curpage}">${vo.subject }</a>
          &nbsp;
          <c:if test="${today==vo.dbday }">
           <img src="board/image/icon_new (2).gif">
          </c:if>
          &nbsp;
          <c:if test="${vo.replyCount>0 }">
           (${vo.replyCount })
          </c:if>
         </td>
         <td width=15% class="tdcenter">${vo.name }</td>
         <td width=20% class="tdcenter">
         <fmt:formatDate value="${vo.regdate }" pattern="yyyy-MM-dd"/>
         </td>
         <td width=10% class="tdcenter">${vo.hit }</td>
        </tr>
      </c:forEach>
    </table>
    <table id="table_content">
      <tr>
        <td align=right>
          <a href="board_insert.do">
          <img src="board/image/btn_write.gif" border=1></a>
          <a href="board_list.do?page=${curpage>1?curpage-1:curpage }">
          <img src="board/image/prev.gif" border=0></a>&nbsp;
          <a href="board_list.do?page=${curpage<totalpage?curpage+1:curpage }">
          <img src="board/image/next.gif" border=0></a>&nbsp;&nbsp;
          ${curpage } page / ${totalpage } pages
        </td>
      </tr>
    </table>
  </center>
</body>
</html>

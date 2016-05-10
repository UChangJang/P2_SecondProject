<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>자유롭게 </title>

	
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript" src="../../ajax.js"></script>
<script type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="table.css">
<link rel="stylesheet" type="text/css" href="../controller/assets/css/board.css" />
</head>
<body>
<article id="main">
		<header id="header_board">
			<h2 class="headerMagin" style=color:black;>Q&A</h2>
			<center>
			<p>Planning your next trip to Korea and have a question? </p>
			<p>Write your question to Q&A!</p>
			</center>
			<a href="#one" class="more scrolly"><img src="images/triangle.png">
					<br>view more</a>
		</header>
<section class="wrapper style5" id=one>
	<div class="inner">
		<div class="box alt">
    <center>
<div class="box alt ">				<!-- 게시판 틀 -->
			<table class="alt">
				<thead>
					<tr>
        <th width=10%>No</th>
        <th width=45%>Title</th>
        <th width=15%>Name</th>
        <th width=20%>Date</th>
        <th width=10%>Hit</th>
      </tr>
      </thead>
      <tbody>
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
     </tbody>
    </table>
			
			
			
				
				
          
        
          
					<img src="images/prev.png" border=0 id="prevBtn">&nbsp;
					<img src="images/next.png" border=0 id="nextBtn">&nbsp;&nbsp;
					${curpage} page / ${totalpage } pages 
				&nbsp;&nbsp;
				<a href="board_insert.do">
          <input type=button value="Write" style="height:40px" id="WriteBtn"></button></a>
		
			
			
  
     
    </div>
  </center>
  		</div>
		</div>
	
</section>
</body>
</html>

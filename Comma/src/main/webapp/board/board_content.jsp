<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
  <!--   ///8 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>게시판 글 작성</title>
<link rel="stylesheet" type="text/css" href="../controller/assets/css/introKor.css" />
<!-- ///6댓글 -->
<link rel="stylesheet" type="text/css" href="table.css">
<link rel="stylesheet" type="text/css" href="../controller/assets/css/board.css" />
<script type="text/javascript" src="http://code.jquery.com/jqueryjs"></script>
<script type="text/javascript">
var i=0;
var w=0;
var m=0;

$(function(){
	$('.reply_table').show();
	$('#reply_show').click(function(){
		if(i==0)
		{
			$('#reply_show').text("댓글보기");
			  $('.reply_table').hide();
			  i=0;
		  
		}
		else
		{
			$('#reply_show').text("댓글닫기");
			  $('.reply_table').show();
			  i=1;
		}
	});
	$('.reply_write').click(function(){
		var id=$(this).attr('id');
		var no=id.substring(1);// ww1 ww2 ww3
		if(w==0)
			{
				$('#ww'+no).show();
				w=1;
			}
		else
			{
				$('#ww'+no).hide();
				w=0;
			}
	});
	$('.reply_modify').click(function(){
		var id=$(this).attr('id');
		var no=id.substring(1);// mm1 mm2 mm3
		if(m==0)
			{
				$('#mm'+no).show();
				m=1;
			}
		else
			{
				$('#mm'+no).hide();
				m=0;
			}
	});
	$('#replyBtn').click(function(){
		var rd=$('#reply_data').val();
		if(rd.trim()=="")
			{
				$('#reply_data').focus();
				return;
			}
		$('#rifrm').submit();
	});
	$('.ruBtn').click(function(){
		
		var id=$(this).attr('id');
		var no=id.substring(3);// id에서 3번째부터 잘라와라
		var data=$('#rd'+no).val();
		if(data.trim=="")
			{
				$('#rd'+no).focus();
				return;
			}
		$('#frm'+no).submit();
	});
	//@댓댓1
	$('.riBtn').click(function(){
		var id=$(this).attr('id');
		var no=id.substring(4);
		var data=$('#d'+no).val();
		if(data.trim()=="")
		{
			$('#d'+no).focus();
			return;
		}
		$('#rfrm'+no).submit();
	});
});
</script>
</head>


<article id="main">
		<header id="header_board">
			<h2 class="headerMagin" style=color:black;>Q&A</h2>
			
			</header>
<body>
<section class="wrapper style5">
	<div class="inner">
		<div class="box alt">
			
  <center>
<td colspan=3 class="tdleft"><h3>${vo.subject }</h3></td>
    <table id="alt">
      <tr>
        <td width=10% class="tdcenter">No</td>
        <td width=10% class="tdcenter">${vo.no }</td>
        <td width=20% class="tdcenter">
          <fmt:formatDate value="${vo.regdate }" pattern="yyyy-MM-dd"/>
        </td>
      
        <td width=10% class="tdcenter">Name</td>
        <td width=20% class="tdcenter">${vo.name }</td>
        <td width=10% class="tdcenter">Hit</td>
        <td width=10% class="tdcenter">${vo.hit }</td>
      </tr>
      
      <tr>
        <td colspan=4 class="tdleft" valign="top" height=100>
          <pre>${vo.content }</pre>
        </td>
      </tr>
    </table>
    <table id="alt">
      <tr>
        <td align="right">
          <a href="board_update.do?no=${vo.no }&page=${page}">
          <button>Modify</button></a><!-- ////10////-->
           <button>Delete</button>
          <a href="board_list.do?page=${page }">
          <button>List</button></a>
        </td>
      </tr>
     <!--  //게시글삭3 후 컨트롤러로-->
     <%--  <tr>
      <td >
      <form method="post" action="board_delete.do">
      <input type=hidden name="no" value="${vo.no }">
         <input type=hidden name="page" value="${page }">
         
          Password: <input type="password" name=pwd size=10>
         
         <button>Delete</button>
        </form>
      </td>
      </tr> --%>
    </table>
 <!--  <div><a href="#" id="reply_show">댓글보기</a></div>  -->
    <table id="alt" class="reply_table" style="display:none">
     <tr>
      <th colspan=2>Reply</th>
     </tr>
  <!--    ////4댓글달기 -->
   <c:forEach var="rvo" items="${list }">
       <tr>
         <td width="75%" height="30">
          <c:if test="${rvo.group_tab>0 }">
           <c:forEach var="i" begin="1" end="${rvo.group_tab }">
            &nbsp;&nbsp;
           </c:forEach>
           <img src="board/image/icon_reply.gif">
          </c:if>
          ${rvo.msg }<br>
          <c:if test="${rvo.group_tab>0 }">
           <c:forEach var="i" begin="1" end="${rvo.group_tab }">
            &nbsp;&nbsp;
           </c:forEach>
          </c:if>
          <font color=blue>${rvo.name }</font>
          (${rvo.dbday })
         </td>
         <td width="25%" class="tdcenter">
           <img src="board/image/btn_reply.gif" id="w${rvo.no }" class="reply_write">
           <c:if test="${sessionScope.id==rvo.id }">
             <img src="board/image/btn_modify.gif" id="m${rvo.no }" class="reply_modify">
            <!-- @댓삭1 -->
            
             <a href="reply_delete.do?no=${rvo.no}&bno=${vo.no}&page${page}">
             <img src="board/image/btn_delete.gif"></a>
           </c:if>
         </td>
       </tr>
     <tr id="ww${rvo.no }" style="display:none"><!-- 댓글달기, 수정 감춤   위에 스크립트부분도 추가-->
      <td colspan="2"><!-- @댓댓1 -->
         <form method="post" action="reply_re_insert.do" id="rfrm${rvo.no }">
         <input type="hidden" name="bno" value="${vo.no }">
         <input type="hidden" name="page" value="${page}">
         <input type="hidden" name="no" value="${rvo.no }">
         <textarea rows="2" cols="70" name="reply_data" style="float: left" id="d${rvo.no }"></textarea>
         <input type=button value="댓글달기" style="height:60px" id="rBtn${rvo.no }" class="riBtn">
        </form>
      </td>
     </tr>
     <tr id="mm${rvo.no }" style="display:none">
      <td colspan="2">
      <!-- ////9댓글수정  스크립트도 추가 후 보드컨트롤러로-->
       <form method="post" action="reply_update.do" id="frm${rvo.no }">
         <input type="hidden" name="bno" value="${vo.no }">
         <input type="hidden" name="page" value="${page}">
         <input type="hidden" name="no" value="${rvo.no }">
        <textarea rows="2" cols="70" name="reply_data" style="float: left" id="rd${rvo.no }">${rvo.msg }</textarea>
        <input type=button value="댓글수정" style="height:60px" id="btn${rvo.no }" class="ruBtn">
       </form>
      </td>
     </tr>
     </c:forEach>
     <!--   ///6댓글  위에 링크 하단 스크립트부분보기-->
     <!-- ////1 댓글달기  후 보드dao로-->
     
     <!--    ////5댓글달기  위에 스크립트부분도 추가 후 보트컨트롤로-->
    <tr>
      <td colspan="2">
      <form method="post" action="reply_insert.do" id="rifrm">
      <input type="hidden" name="bno" value="${vo.no }">
      <input type="hidden" name="page" value="${page}">
        <textarea rows="2" cols="70" name="reply_data" style="float: left" id="reply_data"></textarea>
        <input type=button value="Reply" style="height:40px" id="replyBtn">
        </form>
      </td>
     </tr>
    </table>
  </center>
</div>
		
	</div>
</section>
</body>
</html>







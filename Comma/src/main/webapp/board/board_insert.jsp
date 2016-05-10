<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="table.css">
<link rel="stylesheet" type="text/css" href="../controller/assets/css/introKor.css" />
<link rel="stylesheet" type="text/css" href="../controller/assets/css/board.css" />
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	$('#writeBtn').click(function(){
		var name=$('#name').val();
		if(name.trim()=="")
		{
			$('#name').focus();
			return;
		}
		
		var subject=$('#subject').val();
		if(subject.trim()=="")
		{
			$('#subject').focus();
			return;
		}
		var content=$('#content').val();
		if(content.trim()=="")
		{
			$('#content').focus();
			return;
		}
		var pwd=$('#pwd').val();
		if(pwd.trim()=="")
		{
			$('#pwd').focus();
			return;
		}
		
		$('#boardFrm').submit();
	});
});
</script>
</head>
<body>

<article id="main">
		<header id="header_board">
			<h2 class="headerMagin" style=color:black;>Q&A</h2>
			
			</header>

<section class="wrapper style5">
	<div class="inner">
		<div class="box alt">
   <center>
      <h3>Write</h3>
      <form method="post" action="board_insert_ok.do" id="boardFrm">
      <table id="alt">
        <tr>
          <td align=right width=15%>Name</td>
          <td align=left width=85%>
           <input type=text name=name size=15 id="name">
          </td>
        </tr>
        <tr>
          <td align=right width=15%>Title</td>
          <td align=left width=85%>
           <input type=text name=subject size=50 id="subject">
          </td>
        </tr>
        <tr>
          <td align=right width=15%>content</td>
          <td align=left width=85%>
           <textarea rows="10" cols="55" name=content id="content"></textarea>
          </td>
        </tr>
        <tr>
          <td align=right width=15%>Password</td>
          <td align=left width=85%>
           <input type="password" name=pwd size=10 id="pwd">
          </td>
        </tr>
        <tr>
          <td align=center colspan="2">
           <input type=button value=Submit id="writeBtn">
           <input type=button value=Cancel
           onclick="javascript:history.back()">
          </td>
        </tr>
      </table>
      </form>
   </center>
   </div>
</div>
</section>
</body>
</html>

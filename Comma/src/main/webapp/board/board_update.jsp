<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript" src="../../ajax.js"></script>
<script type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="table.css">

<link rel="stylesheet" type="text/css" href="../controller/assets/css/basic.css" />
<link rel="stylesheet" type="text/css" href="../controller/assets/css/style.css" />
<link rel="stylesheet" type="text/css" href="../controller/assets/css/main.css" />
<link rel="stylesheet" type="text/css" href="../controller/assets/css/board.css" />
</head>
<body>
<article id="main">
		<header id="header_board">
			<h2 class="headerMagin" style=color:black;>Q&A</h2>
			
			</header>

  <section class="wrapper style5" id=one>
	<div class="inner">
		<div class="alt">
    <center>
      <h3>Update</h3>
      <form method="post" action="board_update_ok.do">
      <table id="table_content">
        <tr>
          <td align=right width=15%>Name</td>
          <td align=left width=85%>
           <input type=text name=name size=15 value="${vo.name }">
           <input type=hidden name=no value="${vo.no }">
           <input type=hidden name=page value="${page }">
          </td>
        </tr>
        <tr>
          <td align=right width=15%>Title</td>
          <td align=left width=85%>
           <input type=text name=subject size=50 value="${vo.subject }">
          </td>
        </tr>
        <tr>
          <td align=right width=15%>Content</td>
          <td align=left width=85%>
           <textarea rows="10" cols="55" name=content>${vo.content }</textarea>
          </td>
        </tr>
        <tr>
          <td align=right width=15%>Password</td>
          <td align=left width=85%>
           <input type="password" name=pwd size=10>
          </td>
        </tr>
        <tr>
          <td align=center colspan="2">
           <input type=submit value=Update>
           <input type=button value=Cancel
           onclick="javascript:history.back()">
          </td>
        </tr>
      </table>
      </form>
  </div>
		</div>
	
</section>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>error</title>
</head>
<body>
<!-- Main -->
<article id="main">
	<header id="header_guideList">

		<h2>Error</h2>
		<center>
		<p>An Error occur!</p>
		<p>Check the Error and find a problem.</p>
		</center>

	</header>
	<section class="wrapper style5" id="guide_margin">
		<div class="inner">
			<div style="text-align:center;">${msg }</div>
			<br><br>
			<div style="text-align:center;"><a href="javascript:history.back()"><input type="button" value="Back"></a></div>
			<br><br>
		</div>
	</section>

</article>
		
</body>
</html>
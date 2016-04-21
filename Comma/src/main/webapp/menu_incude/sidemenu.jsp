<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="EUC-KR">
<body>
	<!-- Header -->
		<header id="header" class="alt">
			<h1>
				<a href="main.do">상단메뉴</a>
			</h1>
			<nav id="nav">
				<ul>
					<li class="special">
					
						<!-- 1추가:로그인 레이어 팝업창 -->
						<button class="button special log" id="login-btn">Login</button> 
						<form class="white-popup mfp-hide" id="login-form">
							<h1>Log-In</h1>
							<div>
								<input name="id" id="id" required="" type="text"
									placeholder="ID">
							</div>
							<br>
							<div>
								<input name="pwd" id="pwd" required="" type="password"
									placeholder="Password">
							</div>
							<br>
							<div class="logbtn">
								<input name="login" value="login" id="login-btn" type="button">
								<input name="join" value="join" id=join-btn type="button">
							</div>
							<br>
							<div class="logbtn">
								<input name="idfind" value="id찾기" id="login-btn" type="button">
								<input name="pwdfind" value="pwd찾기" id="pwd-btn" type="button">
							</div>
							</ol>
						</form>  
						
						<!-- 2추가:회원가입 레이어 팝업창 -->
						<form class="white-popup mfp-hide" id="join-form">
							<h1>Join-us</h1>
							<div>
								<input name="id" id="id1" required="" type="text"
									placeholder="ID"> <input name="id2" value="확인" id="id2"
									type="button">
							</div>
							<br>
							<div>
								<input name="pwd" id="pwd1" required="" type="password"
									placeholder="Password">
							</div>
							<br>
							<div>
								<input name="pwd" id="pwd2" required="" type="password"
									placeholder="Password">
							</div>
							<br>
							<div>
								<input name="name" id="name" required="" type="text"
									placeholder="Name">
							</div>
							<br>
							<div>
								<input name="nickName" id="nickName" required="" type="text"
									placeholder="NickName"> <input name="id2" value="확인"
									id="id2" type="button">
							</div>
							<br>
							<div>
								<input name="email" id="email" required="" type="text"
									placeholder="E-mail">
							</div>
							<br>
							<div class="logbtn">
								<input name="join" value="join" id="join" type="button">
							</div>
							</ol>
						</form> 
						<a href="#menu" class="menuToggle"><span>Menu</span></a>
						<div id="menu" class="group g1">
							<ul>
								<div class="box">
									<li><a href="main.do">Home</a></li>
								</div>
								<div class="box">
									<li><a href="introduceSite.do">소개페이지</a></li>
								</div>
								<div class="box">
									<li><a href="introduceKor.do">한국소개</a></li>
								</div>

								<div class="box">
									<li class="title"><a href="#">가이드</a></li>
									<div class="cont">
										<li><a href="guide.do">1.가이드목록</a></li>
										<li><a href="guideWrite.do">2.가이드글쓰기</a></li>
									</div>
								</div>

								<div class="box">
									<li class="title"><a href="#">관광객</a></li>
									<div class="cont">
										<li><a href="tourist.do">1.관광객목록</a></li>
										<li><a href="touristWrite.do">2.관광객글쓰기</a></li>
									</div>
								</div>
								<div class="box">
									<li><a href="mypage.do">마이페이지</a></li>
								</div>
							</ul>
						</div> 
					</li>
				</ul>
			</nav>
		</header>

	
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
<<<<<<< HEAD
	<head>
		<title>[소개]한국소개</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="../assets/css/main.css" />
		<link rel="stylesheet" href="../assets/css/mytest.css" /> 
		<link rel="stylesheet" href="../assets/css/introKor.css" /> 
	
			

	</head>
	<body>
=======
<head>
<title>[소개]한국소개</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="../controller/assets/css/main.css" />		
<link rel="stylesheet" href="../controller/assets/css/mytest.css" /> 
>>>>>>> refs/remotes/origin/master

<!-- 마우스클릭시 서브메뉴나옴 -->
		<script type="text/javascript" src="./jquery.js"></script>
	    <link href="style.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="./menu.js"></script>
</head>
<body>

	<!-- Page Wrapper -->
	<div id="page-wrapper">

		<!-- Header -->
		<!-- 모든페이지의 공통부분 -->
		<header id="header">
			<h1>
				<a href="index.jsp">Home</a>
			</h1>
			<nav id="nav">
				<ul>
					<li class="special">
						
						<!-- 3사이드메뉴 --> 
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
<<<<<<< HEAD
						</nav>
					</header>
					
					
					<div id="nav2">
            			<ul>
            				 <li><a class="scrolly" href="#incheon">INCHEON</a></li>
               				 <li><a class="scrolly" href="#seoul">SEOUL</a></li>
                			 <li><a class="scrolly" href="#chuncheon">CHUNCHEON</a></li>
                			 <li><a class="scrolly" href="#boryeong">BORYEONG</a></li>
                			 <li><a class="scrolly" href="#jeonju">JEONJU</a></li>
                			  <li><a class="scrolly" href="#gyeongju">GYEONGJU</a></li>
                			 <li><a class="scrolly" href="#busan">BUSAN</a></li>
                			 <li><a class="scrolly" href="#yeosu">YEOSU</a></li>
                			 <li><a class="scrolly" href="#jeju">JEJU</a></li>

            			</ul>
        			</div>
					
=======
						</div>
					</li>
				</ul>
			</nav>
		</header>
>>>>>>> refs/remotes/origin/master

<<<<<<< HEAD
				<!-- Main -->
					<article id="main">
						<header id="test">
							<h2>About Korea</h2>
							<p>한국소개 페이지입니다.</p>
							<a href="#one" class="more scrolly">사이트 구경 하기</a>
							
				
       			
						</header>
						<section class="wrapper style5">
							<div class="inner">
							
							<!-- new -->
								<section class="style5" id="one">
									<h4>Image</h4>
									<h5>Fit</h5>
									<div class="box alt">
										<div class="row uniform 50%">
			<!-- <script type="text/javascript" src="jquery-1.3.2.js"></script>
        	<script type="text/javascript">
       			$(document).ready(function(){
			$("4u").on("mouseenter",function(){
			$("4u").animate({"width":"500px","height":"500px"},800);
			});
			$("4u").on("mouseleave",function(){
			$("4u").animate({"width":"300px","height":"300px"},800);
			});
		}); </script> -->
											<!-- <div class="image">
  												<img alt="" src="http://www.kavoir.com/img/text-over-image.jpg" />
 												 <div class="text">
    												<p>This lovely image gladly demonstrates how I (this text) can be flying over her face.</p>
  													<p>It's very kind of her but don't you agree that this place needs a camp fire and a little love?</p>
 												 </div>
											</div> -->
											
												
											<!-- <div class="4u" ><span class="image fit" >
												<a href="#incheon" class="more scrolly"><img src="../images/incheon1.jpg" alt="" id="box"/>
												<div class="text"><h4>TEST  TEST</h4></div></a>
											</span></div> -->
											
											
									 	     <div class="4u"><span class="image fit">
												<a href="#incheon" class="more scrolly"><img src="../images/incheon1.jpg" alt="" id="box"/><div class="text"><h4>INCHEON</h4></div></a></span></div>
											<div class="4u"><span class="image fit">
												<a href="#seoul" class="more scrolly"><img src="../images/seoul1.jpg" alt="" /><div class="text"><h4>SEOUL</h4></div></a></span></div>
											<div class="4u"><span class="image fit">
												<a href="#chuncheon" class="more scrolly"><img src="../images/chuncheon1.jpg" alt="" /><div class="text"><h4>CHUNCHEON</h4></div></a></span></div>
											<div class="4u"><span class="image fit">
												<a href="#boryeong" class="more scrolly"><img src="../images/pic02.jpg" alt="" /><div class="text"><h4>BORYEONG</h4></div></a></span></div>	
											<div class="4u"><span class="image fit">
												<a href="#jeonju" class="more scrolly"><img src="../images/pic03.jpg" alt="" /><div class="text"><h4>JEONJU</h4></div></a></span></div>
											<div class="4u"><span class="image fit">
												<a href="#gyeongju" class="more scrolly"><img src="../images/pic03.jpg" alt="" /><div class="text"><h4>GYEONGJU</h4></div></a></span></div>
												<div class="4u"><span class="image fit">
												<a href="#busan" class="more scrolly"><img src="../images/pic03.jpg" alt="" /><div class="text"><h4>BUSAN</h4></div></a></span></div>
											<div class="4u"><span class="image fit">
												<a href="#yeosu" class="more scrolly"><img src="../images/pic02.jpg" alt="" /><div class="text"><h4>YEOSU</h4></div></a></span></div>
											<div class="4u"><span class="image fit">
												<a href="#jeju" class="more scrolly"><img src="../images/pic02.jpg" alt="" /><div class="text"><h4>JEJU</h4></div></a></span></div>
											
											
											
										</div>
										
									</div>
								</section>
								<section class="style8" id="incheon">	<!-- 안에 내용 배경색 style7,8번갈아 쓰기 -->
									<h3>incheon</h3>
									<!-- <h5>Fit</h5>
									<h5>Left &amp; Right</h5> -->
									<p><span class="image left"><img src="../images/incheon3.jpg" alt="" /></span>Incheon Coast east coast fish market one pier and all attractions are also Wolmido Island Jung bukseongdong crowds looking for. Incheon has many attractions related to the sea because the port abutting the ocean and city. Stairway to Heaven, sad love songs, such as Silmido known Muuido, Shinto, try, such as Silmido island off the coast of Incheon in various dramas and movies have become the famous backlot of the island are frequented vacationer. Jung bukseongdong Wolmido street culture is also one of the highlights is a crowd looking for. October 2009, completed the Incheon Bridge is the longest bridge in the world and a long bridge to seventh in the Republic of Korea and to connect gu okryeondong Yeongjongdo. There are many hanok Ganghwa oldest cathedral of the Anglican Cathedral and strengthen yongheunggung, chojijin, gwangseongbo of modern history and cultural heritage in the Republic of Korea. Recently, songwoldong fairytale town also appeared in various media and turned the visiting crowds increased, depending on the popularity and to the toktok a contribution to tourism activation of Dongincheon gaining popularity as Songdo Central Park and Canal Walk sightseeing points according to Songdo International City Development .
									</p>
									<p><span class="image right"><img src="../images/incheon2.jpg" alt="" /></span>Food specialties of Incheon and the like noodle Eastern hwapyeongdong sesut basin, located in Jung-gu sinpodong began in Sinpo famous market and the aid Sinpo dalgangjeong jjolmyeon, soba noodles, Jung seonrindong jajangmyeon of Chinatown as a representative. Especially if a lot of the food had spread nationally at the Incheon cuisine which is influenced by Chinese culture spread to start from Incheon it started after the opening of the opening of Incheon's Chinatown. Salons distance salons distance in front of Jung-gu, Incheon Coast east coast fish market one pier and all attractions are also Wolmido Island Jung bukseongdong crowds looking for.</p>
								</section>
								<section class="style7" id="seoul">	<!-- 안에 내용 배경색 style7,8번갈아 쓰기 style7,8아직 미지정-->
									<h3>SEOUL</h3>
									<!-- <h5>Fit</h5>
									<h5>Left &amp; Right</h5> -->
									<p><span class="image left"><img src="../images/seoul2.jpg" alt="" /></span>Morbi mattis mi consectetur tortor elementum, varius pellentesque velit convallis. Aenean tincidunt lectus auctor mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et ex tincidunt, quis lacinia velit aliquet. Duis non efficitur nisi, id malesuada justo. Maecenas sagittis felis ac sagittis semper. Curabitur purus leo, tempus sed finibus eget, fringilla quis risus. Maecenas et lorem quis sem varius sagittis et a est. Maecenas iaculis iaculis sem. Donec vel dolor at arcu tincidunt bibendum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce ut aliquet justo. Donec id neque ipsum. Integer eget ultricies odio. Nam vel ex a orci fringilla tincidunt. Aliquam eleifend ligula non velit accumsan cursus. Etiam ut gravida sapien. Morbi mattis mi consectetur tortor elementum, varius pellentesque velit convallis. Aenean tincidunt lectus auctor mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et ex tincidunt, quis lacinia velit aliquet. Duis non efficitur nisi, id malesuada justo. Maecenas sagittis felis ac sagittis semper. Curabitur purus leo, tempus sed finibus eget, fringilla quis risus. Maecenas et lorem quis sem varius sagittis et a est. Maecenas iaculis iaculis sem. Donec vel dolor at arcu tincidunt bibendum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce ut aliquet justo. Donec id neque ipsum. Integer eget ultricies odio. Nam vel ex a orci fringilla tincidunt. Aliquam eleifend ligula non velit accumsan cursus. Etiam ut gravida sapien.</p>
									<p><span class="image right"><img src="../images/seoul3.jpg" alt="" /></span>Vestibulum ultrices risus velit, sit amet blandit massa auctor sit amet. Sed eu lectus sem. Phasellus in odio at ipsum porttitor mollis id vel diam. Praesent sit amet posuere risus, eu faucibus lectus. Vivamus ex ligula, tempus pulvinar ipsum in, auctor porta quam. Proin nec dui cursus, posuere dui eget interdum. Fusce lectus magna, sagittis at facilisis vitae, pellentesque at etiam. Quisque posuere leo quis sem commodo, vel scelerisque nisi scelerisque. Suspendisse id quam vel tortor tincidunt suscipit. Nullam auctor orci eu dolor consectetur, interdum ullamcorper ante tincidunt. Mauris felis nec felis elementum varius. Nam sapien ante, varius in pulvinar vitae, rhoncus id massa. Donec varius ex in mauris ornare, eget euismod urna egestas. Etiam lacinia tempor ipsum, sodales porttitor justo. Aliquam dolor quam, semper in tortor eu, volutpat efficitur quam. Fusce nec fermentum nisl. Aenean erat diam, tempus aliquet erat. Etiam iaculis nulla ipsum, et pharetra libero rhoncus ut. Phasellus rutrum cursus velit, eget condimentum nunc blandit vel. In at pulvinar lectus. Morbi diam ante, vulputate et imperdiet eget, fermentum non dolor. Ut eleifend sagittis tincidunt. Sed viverra commodo mi, ac rhoncus justo. Duis neque ligula, elementum ut enim vel, posuere finibus justo. Vivamus facilisis maximus nibh quis pulvinar. Quisque hendrerit in ipsum id tellus facilisis fermentum. Proin mauris dui.</p>
								</section>
								<section class="style8" id="chuncheon">	<!-- 안에 내용 배경색 style7,8번갈아 쓰기 -->
									<h3>chuncheon</h3>
									<h5>Fit</h5>
									<h5>Left &amp; Right</h5>
									<p><span class="image left"><img src="../images/chuncheon4.jpg" alt="" /></span>Chuncheon, uiamho chuncheonho, widely known as the country due to the lakeside city of Soyang each year many tourists come to find and there are plenty of tourism income reaches 1000 people per year in thousand. Soyanggang picked up around the tourist routes have been developed in the naeseolak and cementing the city as a tourist aspects. Tourist facilities are well-equipped and comfortable transportation, including the various flights. In addition there are scenic spots such as Lake Amusement Park, Alpine gongjicheon sogeumgang, chugok divisor, dorsal margin falls, nine waterfalls. In addition there are attractions such as the prehistoric sites, the middle Nami Island in Chuncheon, including lakeside, cheongpyeongsa. In the spring, the Chuncheon International Mime Festival is held, as well as the Spring Season Art Festival. In the summer, the Chuncheon Puppet Festival takes place. There is also a Makguksu festival; a cold noodle dish that originated in Chuncheon. Also celebrated in the summer is the International Animation Festival. The city has had its own annual marathon race since 1946; the Chuncheon Marathon is held every October. In winter, snow and ice festivals are organized.</p>
									<p><span class="image right"><img src="../images/chuncheon3.jpg" alt="" /></span>According to the legend surrounding Cheongpyeongsa temple in Chuncheon-si, a man loved a princess so much that he became a snake and wouldn't leave her alone. When she begged leave to collect rice from the temple, the snake let her go but then went looking for her, only to be struck dead by lightning. The princess then buried him at the temple. The city was historically known as a chicken farming region and is famous for "dak galbi", which translates as chicken ribs. It consists of chicken, sliced cabbage, sweet potatoes, tteok (rice cakes), and scallions, mixed with a spicy sauce heavy on gochujang. It is usually cooked in a big iron pan in the center of the table, but the original method is over charcoal. Despite the name, the dish is traditionally made from leg meat, not ribs. There is even a street in the city dedicated to restaurants serving the dish, with some 25 restaurants populating the area.</p>
								</section>
								<section class="style8" id="boryeong">	<!-- 안에 내용 배경색 style7,8번갈아 쓰기 -->
									<h3>boryeong</h3>
									<h5>Fit</h5>
									<h5>Left &amp; Right</h5>
									<p><span class="image left"><img src="../images/pic04.jpg" alt="" /></span>Morbi mattis mi consectetur tortor elementum, varius pellentesque velit convallis. Aenean tincidunt lectus auctor mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et ex tincidunt, quis lacinia velit aliquet. Duis non efficitur nisi, id malesuada justo. Maecenas sagittis felis ac sagittis semper. Curabitur purus leo, tempus sed finibus eget, fringilla quis risus. Maecenas et lorem quis sem varius sagittis et a est. Maecenas iaculis iaculis sem. Donec vel dolor at arcu tincidunt bibendum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce ut aliquet justo. Donec id neque ipsum. Integer eget ultricies odio. Nam vel ex a orci fringilla tincidunt. Aliquam eleifend ligula non velit accumsan cursus. Etiam ut gravida sapien. Morbi mattis mi consectetur tortor elementum, varius pellentesque velit convallis. Aenean tincidunt lectus auctor mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et ex tincidunt, quis lacinia velit aliquet. Duis non efficitur nisi, id malesuada justo. Maecenas sagittis felis ac sagittis semper. Curabitur purus leo, tempus sed finibus eget, fringilla quis risus. Maecenas et lorem quis sem varius sagittis et a est. Maecenas iaculis iaculis sem. Donec vel dolor at arcu tincidunt bibendum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce ut aliquet justo. Donec id neque ipsum. Integer eget ultricies odio. Nam vel ex a orci fringilla tincidunt. Aliquam eleifend ligula non velit accumsan cursus. Etiam ut gravida sapien.</p>
									<p><span class="image right"><img src="../images/pic05.jpg" alt="" /></span>Vestibulum ultrices risus velit, sit amet blandit massa auctor sit amet. Sed eu lectus sem. Phasellus in odio at ipsum porttitor mollis id vel diam. Praesent sit amet posuere risus, eu faucibus lectus. Vivamus ex ligula, tempus pulvinar ipsum in, auctor porta quam. Proin nec dui cursus, posuere dui eget interdum. Fusce lectus magna, sagittis at facilisis vitae, pellentesque at etiam. Quisque posuere leo quis sem commodo, vel scelerisque nisi scelerisque. Suspendisse id quam vel tortor tincidunt suscipit. Nullam auctor orci eu dolor consectetur, interdum ullamcorper ante tincidunt. Mauris felis nec felis elementum varius. Nam sapien ante, varius in pulvinar vitae, rhoncus id massa. Donec varius ex in mauris ornare, eget euismod urna egestas. Etiam lacinia tempor ipsum, sodales porttitor justo. Aliquam dolor quam, semper in tortor eu, volutpat efficitur quam. Fusce nec fermentum nisl. Aenean erat diam, tempus aliquet erat. Etiam iaculis nulla ipsum, et pharetra libero rhoncus ut. Phasellus rutrum cursus velit, eget condimentum nunc blandit vel. In at pulvinar lectus. Morbi diam ante, vulputate et imperdiet eget, fermentum non dolor. Ut eleifend sagittis tincidunt. Sed viverra commodo mi, ac rhoncus justo. Duis neque ligula, elementum ut enim vel, posuere finibus justo. Vivamus facilisis maximus nibh quis pulvinar. Quisque hendrerit in ipsum id tellus facilisis fermentum. Proin mauris dui.</p>
								</section>
								<section class="style8" id="jeonju">	<!-- 안에 내용 배경색 style7,8번갈아 쓰기 -->
									<h3>jeonju</h3>
									<h5>Fit</h5>
									<h5>Left &amp; Right</h5>
									<p><span class="image left"><img src="../images/pic04.jpg" alt="" /></span>Morbi mattis mi consectetur tortor elementum, varius pellentesque velit convallis. Aenean tincidunt lectus auctor mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et ex tincidunt, quis lacinia velit aliquet. Duis non efficitur nisi, id malesuada justo. Maecenas sagittis felis ac sagittis semper. Curabitur purus leo, tempus sed finibus eget, fringilla quis risus. Maecenas et lorem quis sem varius sagittis et a est. Maecenas iaculis iaculis sem. Donec vel dolor at arcu tincidunt bibendum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce ut aliquet justo. Donec id neque ipsum. Integer eget ultricies odio. Nam vel ex a orci fringilla tincidunt. Aliquam eleifend ligula non velit accumsan cursus. Etiam ut gravida sapien. Morbi mattis mi consectetur tortor elementum, varius pellentesque velit convallis. Aenean tincidunt lectus auctor mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et ex tincidunt, quis lacinia velit aliquet. Duis non efficitur nisi, id malesuada justo. Maecenas sagittis felis ac sagittis semper. Curabitur purus leo, tempus sed finibus eget, fringilla quis risus. Maecenas et lorem quis sem varius sagittis et a est. Maecenas iaculis iaculis sem. Donec vel dolor at arcu tincidunt bibendum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce ut aliquet justo. Donec id neque ipsum. Integer eget ultricies odio. Nam vel ex a orci fringilla tincidunt. Aliquam eleifend ligula non velit accumsan cursus. Etiam ut gravida sapien.</p>
									<p><span class="image right"><img src="../images/pic05.jpg" alt="" /></span>Vestibulum ultrices risus velit, sit amet blandit massa auctor sit amet. Sed eu lectus sem. Phasellus in odio at ipsum porttitor mollis id vel diam. Praesent sit amet posuere risus, eu faucibus lectus. Vivamus ex ligula, tempus pulvinar ipsum in, auctor porta quam. Proin nec dui cursus, posuere dui eget interdum. Fusce lectus magna, sagittis at facilisis vitae, pellentesque at etiam. Quisque posuere leo quis sem commodo, vel scelerisque nisi scelerisque. Suspendisse id quam vel tortor tincidunt suscipit. Nullam auctor orci eu dolor consectetur, interdum ullamcorper ante tincidunt. Mauris felis nec felis elementum varius. Nam sapien ante, varius in pulvinar vitae, rhoncus id massa. Donec varius ex in mauris ornare, eget euismod urna egestas. Etiam lacinia tempor ipsum, sodales porttitor justo. Aliquam dolor quam, semper in tortor eu, volutpat efficitur quam. Fusce nec fermentum nisl. Aenean erat diam, tempus aliquet erat. Etiam iaculis nulla ipsum, et pharetra libero rhoncus ut. Phasellus rutrum cursus velit, eget condimentum nunc blandit vel. In at pulvinar lectus. Morbi diam ante, vulputate et imperdiet eget, fermentum non dolor. Ut eleifend sagittis tincidunt. Sed viverra commodo mi, ac rhoncus justo. Duis neque ligula, elementum ut enim vel, posuere finibus justo. Vivamus facilisis maximus nibh quis pulvinar. Quisque hendrerit in ipsum id tellus facilisis fermentum. Proin mauris dui.</p>
								</section>
								<section class="style8" id="gyeongju">	<!-- 안에 내용 배경색 style7,8번갈아 쓰기 -->
									<h3>gyeongju</h3>
									<h5>Fit</h5>
									<h5>Left &amp; Right</h5>
									<p><span class="image left"><img src="../images/pic04.jpg" alt="" /></span>Morbi mattis mi consectetur tortor elementum, varius pellentesque velit convallis. Aenean tincidunt lectus auctor mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et ex tincidunt, quis lacinia velit aliquet. Duis non efficitur nisi, id malesuada justo. Maecenas sagittis felis ac sagittis semper. Curabitur purus leo, tempus sed finibus eget, fringilla quis risus. Maecenas et lorem quis sem varius sagittis et a est. Maecenas iaculis iaculis sem. Donec vel dolor at arcu tincidunt bibendum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce ut aliquet justo. Donec id neque ipsum. Integer eget ultricies odio. Nam vel ex a orci fringilla tincidunt. Aliquam eleifend ligula non velit accumsan cursus. Etiam ut gravida sapien. Morbi mattis mi consectetur tortor elementum, varius pellentesque velit convallis. Aenean tincidunt lectus auctor mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et ex tincidunt, quis lacinia velit aliquet. Duis non efficitur nisi, id malesuada justo. Maecenas sagittis felis ac sagittis semper. Curabitur purus leo, tempus sed finibus eget, fringilla quis risus. Maecenas et lorem quis sem varius sagittis et a est. Maecenas iaculis iaculis sem. Donec vel dolor at arcu tincidunt bibendum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce ut aliquet justo. Donec id neque ipsum. Integer eget ultricies odio. Nam vel ex a orci fringilla tincidunt. Aliquam eleifend ligula non velit accumsan cursus. Etiam ut gravida sapien.</p>
									<p><span class="image right"><img src="../images/pic05.jpg" alt="" /></span>Vestibulum ultrices risus velit, sit amet blandit massa auctor sit amet. Sed eu lectus sem. Phasellus in odio at ipsum porttitor mollis id vel diam. Praesent sit amet posuere risus, eu faucibus lectus. Vivamus ex ligula, tempus pulvinar ipsum in, auctor porta quam. Proin nec dui cursus, posuere dui eget interdum. Fusce lectus magna, sagittis at facilisis vitae, pellentesque at etiam. Quisque posuere leo quis sem commodo, vel scelerisque nisi scelerisque. Suspendisse id quam vel tortor tincidunt suscipit. Nullam auctor orci eu dolor consectetur, interdum ullamcorper ante tincidunt. Mauris felis nec felis elementum varius. Nam sapien ante, varius in pulvinar vitae, rhoncus id massa. Donec varius ex in mauris ornare, eget euismod urna egestas. Etiam lacinia tempor ipsum, sodales porttitor justo. Aliquam dolor quam, semper in tortor eu, volutpat efficitur quam. Fusce nec fermentum nisl. Aenean erat diam, tempus aliquet erat. Etiam iaculis nulla ipsum, et pharetra libero rhoncus ut. Phasellus rutrum cursus velit, eget condimentum nunc blandit vel. In at pulvinar lectus. Morbi diam ante, vulputate et imperdiet eget, fermentum non dolor. Ut eleifend sagittis tincidunt. Sed viverra commodo mi, ac rhoncus justo. Duis neque ligula, elementum ut enim vel, posuere finibus justo. Vivamus facilisis maximus nibh quis pulvinar. Quisque hendrerit in ipsum id tellus facilisis fermentum. Proin mauris dui.</p>
								</section>
								<section class="style7" id="busan">	<!-- 안에 내용 배경색 style7,8번갈아 쓰기 -->
									<h3>busan</h3>
									<h5>Fit</h5>
									<h5>Left &amp; Right</h5>
									<p><span class="image left"><img src="../images/pic04.jpg" alt="" /></span>Morbi mattis mi consectetur tortor elementum, varius pellentesque velit convallis. Aenean tincidunt lectus auctor mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et ex tincidunt, quis lacinia velit aliquet. Duis non efficitur nisi, id malesuada justo. Maecenas sagittis felis ac sagittis semper. Curabitur purus leo, tempus sed finibus eget, fringilla quis risus. Maecenas et lorem quis sem varius sagittis et a est. Maecenas iaculis iaculis sem. Donec vel dolor at arcu tincidunt bibendum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce ut aliquet justo. Donec id neque ipsum. Integer eget ultricies odio. Nam vel ex a orci fringilla tincidunt. Aliquam eleifend ligula non velit accumsan cursus. Etiam ut gravida sapien. Morbi mattis mi consectetur tortor elementum, varius pellentesque velit convallis. Aenean tincidunt lectus auctor mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et ex tincidunt, quis lacinia velit aliquet. Duis non efficitur nisi, id malesuada justo. Maecenas sagittis felis ac sagittis semper. Curabitur purus leo, tempus sed finibus eget, fringilla quis risus. Maecenas et lorem quis sem varius sagittis et a est. Maecenas iaculis iaculis sem. Donec vel dolor at arcu tincidunt bibendum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce ut aliquet justo. Donec id neque ipsum. Integer eget ultricies odio. Nam vel ex a orci fringilla tincidunt. Aliquam eleifend ligula non velit accumsan cursus. Etiam ut gravida sapien.</p>
									<p><span class="image right"><img src="../images/pic05.jpg" alt="" /></span>Vestibulum ultrices risus velit, sit amet blandit massa auctor sit amet. Sed eu lectus sem. Phasellus in odio at ipsum porttitor mollis id vel diam. Praesent sit amet posuere risus, eu faucibus lectus. Vivamus ex ligula, tempus pulvinar ipsum in, auctor porta quam. Proin nec dui cursus, posuere dui eget interdum. Fusce lectus magna, sagittis at facilisis vitae, pellentesque at etiam. Quisque posuere leo quis sem commodo, vel scelerisque nisi scelerisque. Suspendisse id quam vel tortor tincidunt suscipit. Nullam auctor orci eu dolor consectetur, interdum ullamcorper ante tincidunt. Mauris felis nec felis elementum varius. Nam sapien ante, varius in pulvinar vitae, rhoncus id massa. Donec varius ex in mauris ornare, eget euismod urna egestas. Etiam lacinia tempor ipsum, sodales porttitor justo. Aliquam dolor quam, semper in tortor eu, volutpat efficitur quam. Fusce nec fermentum nisl. Aenean erat diam, tempus aliquet erat. Etiam iaculis nulla ipsum, et pharetra libero rhoncus ut. Phasellus rutrum cursus velit, eget condimentum nunc blandit vel. In at pulvinar lectus. Morbi diam ante, vulputate et imperdiet eget, fermentum non dolor. Ut eleifend sagittis tincidunt. Sed viverra commodo mi, ac rhoncus justo. Duis neque ligula, elementum ut enim vel, posuere finibus justo. Vivamus facilisis maximus nibh quis pulvinar. Quisque hendrerit in ipsum id tellus facilisis fermentum. Proin mauris dui.</p>
								</section>
								<section class="style8" id="yeosu">	<!-- 안에 내용 배경색 style7,8번갈아 쓰기 -->
									<h4>yeosu</h4>
									<h5>Fit</h5>
									<h5>Left &amp; Right</h5>
									<p><span class="image left"><img src="../images/pic04.jpg" alt="" /></span>Morbi mattis mi consectetur tortor elementum, varius pellentesque velit convallis. Aenean tincidunt lectus auctor mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et ex tincidunt, quis lacinia velit aliquet. Duis non efficitur nisi, id malesuada justo. Maecenas sagittis felis ac sagittis semper. Curabitur purus leo, tempus sed finibus eget, fringilla quis risus. Maecenas et lorem quis sem varius sagittis et a est. Maecenas iaculis iaculis sem. Donec vel dolor at arcu tincidunt bibendum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce ut aliquet justo. Donec id neque ipsum. Integer eget ultricies odio. Nam vel ex a orci fringilla tincidunt. Aliquam eleifend ligula non velit accumsan cursus. Etiam ut gravida sapien. Morbi mattis mi consectetur tortor elementum, varius pellentesque velit convallis. Aenean tincidunt lectus auctor mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et ex tincidunt, quis lacinia velit aliquet. Duis non efficitur nisi, id malesuada justo. Maecenas sagittis felis ac sagittis semper. Curabitur purus leo, tempus sed finibus eget, fringilla quis risus. Maecenas et lorem quis sem varius sagittis et a est. Maecenas iaculis iaculis sem. Donec vel dolor at arcu tincidunt bibendum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce ut aliquet justo. Donec id neque ipsum. Integer eget ultricies odio. Nam vel ex a orci fringilla tincidunt. Aliquam eleifend ligula non velit accumsan cursus. Etiam ut gravida sapien.</p>
									<p><span class="image right"><img src="../images/pic05.jpg" alt="" /></span>Vestibulum ultrices risus velit, sit amet blandit massa auctor sit amet. Sed eu lectus sem. Phasellus in odio at ipsum porttitor mollis id vel diam. Praesent sit amet posuere risus, eu faucibus lectus. Vivamus ex ligula, tempus pulvinar ipsum in, auctor porta quam. Proin nec dui cursus, posuere dui eget interdum. Fusce lectus magna, sagittis at facilisis vitae, pellentesque at etiam. Quisque posuere leo quis sem commodo, vel scelerisque nisi scelerisque. Suspendisse id quam vel tortor tincidunt suscipit. Nullam auctor orci eu dolor consectetur, interdum ullamcorper ante tincidunt. Mauris felis nec felis elementum varius. Nam sapien ante, varius in pulvinar vitae, rhoncus id massa. Donec varius ex in mauris ornare, eget euismod urna egestas. Etiam lacinia tempor ipsum, sodales porttitor justo. Aliquam dolor quam, semper in tortor eu, volutpat efficitur quam. Fusce nec fermentum nisl. Aenean erat diam, tempus aliquet erat. Etiam iaculis nulla ipsum, et pharetra libero rhoncus ut. Phasellus rutrum cursus velit, eget condimentum nunc blandit vel. In at pulvinar lectus. Morbi diam ante, vulputate et imperdiet eget, fermentum non dolor. Ut eleifend sagittis tincidunt. Sed viverra commodo mi, ac rhoncus justo. Duis neque ligula, elementum ut enim vel, posuere finibus justo. Vivamus facilisis maximus nibh quis pulvinar. Quisque hendrerit in ipsum id tellus facilisis fermentum. Proin mauris dui.</p>
								</section>
								<section class="style8" id="jeju">	<!-- 안에 내용 배경색 style7,8번갈아 쓰기 -->
									<h4>jeju</h4>
									<h5>Fit</h5>
									<h5>Left &amp; Right</h5>
									<p><span class="image left"><img src="../images/pic04.jpg" alt="" /></span>Morbi mattis mi consectetur tortor elementum, varius pellentesque velit convallis. Aenean tincidunt lectus auctor mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et ex tincidunt, quis lacinia velit aliquet. Duis non efficitur nisi, id malesuada justo. Maecenas sagittis felis ac sagittis semper. Curabitur purus leo, tempus sed finibus eget, fringilla quis risus. Maecenas et lorem quis sem varius sagittis et a est. Maecenas iaculis iaculis sem. Donec vel dolor at arcu tincidunt bibendum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce ut aliquet justo. Donec id neque ipsum. Integer eget ultricies odio. Nam vel ex a orci fringilla tincidunt. Aliquam eleifend ligula non velit accumsan cursus. Etiam ut gravida sapien. Morbi mattis mi consectetur tortor elementum, varius pellentesque velit convallis. Aenean tincidunt lectus auctor mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et ex tincidunt, quis lacinia velit aliquet. Duis non efficitur nisi, id malesuada justo. Maecenas sagittis felis ac sagittis semper. Curabitur purus leo, tempus sed finibus eget, fringilla quis risus. Maecenas et lorem quis sem varius sagittis et a est. Maecenas iaculis iaculis sem. Donec vel dolor at arcu tincidunt bibendum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce ut aliquet justo. Donec id neque ipsum. Integer eget ultricies odio. Nam vel ex a orci fringilla tincidunt. Aliquam eleifend ligula non velit accumsan cursus. Etiam ut gravida sapien.</p>
									<p><span class="image right"><img src="../images/pic05.jpg" alt="" /></span>Vestibulum ultrices risus velit, sit amet blandit massa auctor sit amet. Sed eu lectus sem. Phasellus in odio at ipsum porttitor mollis id vel diam. Praesent sit amet posuere risus, eu faucibus lectus. Vivamus ex ligula, tempus pulvinar ipsum in, auctor porta quam. Proin nec dui cursus, posuere dui eget interdum. Fusce lectus magna, sagittis at facilisis vitae, pellentesque at etiam. Quisque posuere leo quis sem commodo, vel scelerisque nisi scelerisque. Suspendisse id quam vel tortor tincidunt suscipit. Nullam auctor orci eu dolor consectetur, interdum ullamcorper ante tincidunt. Mauris felis nec felis elementum varius. Nam sapien ante, varius in pulvinar vitae, rhoncus id massa. Donec varius ex in mauris ornare, eget euismod urna egestas. Etiam lacinia tempor ipsum, sodales porttitor justo. Aliquam dolor quam, semper in tortor eu, volutpat efficitur quam. Fusce nec fermentum nisl. Aenean erat diam, tempus aliquet erat. Etiam iaculis nulla ipsum, et pharetra libero rhoncus ut. Phasellus rutrum cursus velit, eget condimentum nunc blandit vel. In at pulvinar lectus. Morbi diam ante, vulputate et imperdiet eget, fermentum non dolor. Ut eleifend sagittis tincidunt. Sed viverra commodo mi, ac rhoncus justo. Duis neque ligula, elementum ut enim vel, posuere finibus justo. Vivamus facilisis maximus nibh quis pulvinar. Quisque hendrerit in ipsum id tellus facilisis fermentum. Proin mauris dui.</p>
								</section>
								<!-- new -->
=======

		<div id="nav2">
			<ul>
				<li><a class="scrolly" href="#seoul">seoul</a></li>
				<li><a class="scrolly" href="#jeju">jeju</a></li>
				<li><a class="scrolly" href="#inchkeongi">inchkeongi</a></li>
				<li><a class="scrolly" href="#busan">busan</a></li>
				<li><a class="scrolly" href="#jeonju">jeonju</a></li>
				<li><a class="scrolly" href="#daegu">daegu</a></li>
				<li><a class="scrolly" href="#kangwondo">kangwondo</a></li>
				<li><a class="scrolly" href="#daejeon">daejeon</a></li>
				<li><a class="scrolly" href="#kwangju">kwangju</a></li>
			</ul>
		</div>


		<!-- Main -->
		<article id="main">
			<header id="test">
				<h2>한국소개</h2>
				<p>한국소개 페이지입니다.</p>
				<a href="#one" class="more scrolly">사이트 구경 하기</a>
			</header>
			<section class="wrapper style5">
				<div class="inner">

					<!-- new -->
					<section class="style5" id="one">
						<h4>Image</h4>
						<h5>Fit</h5>
						<div class="box alt">
							<div class="row uniform 50%">
								<div class="4u">
									<span class="image fit"> <a href="#seoul"
										class="more scrolly"><img src="../controller/images/pic01.jpg" alt="" /></a></span>
								</div>
								<div class="4u">
									<span class="image fit"> <a href="#jeju"
										class="more scrolly"><img src="../controller/images/pic02.jpg" alt="" /></a></span>
								</div>
								<div class="4u">
									<span class="image fit"> <a href="#inchkeongi"
										class="more scrolly"><img src="../controller/images/pic01.jpg" alt="" /></a></span>
								</div>
								<div class="4u">
									<span class="image fit"> <a href="#busan"
										class="more scrolly"><img src="../controller/images/pic03.jpg" alt="" /></a></span>
								</div>
								<div class="4u">
									<span class="image fit"> <a href="#jeonju"
										class="more scrolly"><img src="../controller/images/pic03.jpg" alt="" /></a></span>
								</div>
								<div class="4u">
									<span class="image fit"> <a href="#daegu"
										class="more scrolly"><img src="../controller/images/pic02.jpg" alt="" /></a></span>
								</div>
								<div class="4u">
									<span class="image fit"> <a href="#kangwondo"
										class="more scrolly"><img src="../controller/images/pic01.jpg" alt="" /></a></span>
								</div>
								<div class="4u">
									<span class="image fit"> <a href="#daejeon"
										class="more scrolly"><img src="../controller/images/pic02.jpg" alt="" /></a></span>
								</div>
								<div class="4u">
									<span class="image fit"> <a href="#kwangju"
										class="more scrolly"><img src="../controller/images/pic03.jpg" alt="" /></a></span>
								</div>
>>>>>>> refs/remotes/origin/master
							</div>
						</div>
					</section>

					<section class="style7" id="seoul">
						<!-- 안에 내용 배경색 style7,8번갈아 쓰기 style7,8아직 미지정-->
						<h4>seoul</h4>
						<h5>Fit</h5>
						<h5>Left &amp; Right</h5>
						<p>
							<span class="image left"><img src="../controller/images/pic04.jpg"
								alt="" /></span>Morbi mattis mi consectetur tortor elementum, varius
							pellentesque velit convallis. Aenean tincidunt lectus auctor
							mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et
							ex tincidunt, quis lacinia velit aliquet. Duis non efficitur
							nisi, id malesuada justo. Maecenas sagittis felis ac sagittis
							semper. Curabitur purus leo, tempus sed finibus eget, fringilla
							quis risus. Maecenas et lorem quis sem varius sagittis et a est.
							Maecenas iaculis iaculis sem. Donec vel dolor at arcu tincidunt
							bibendum. Interdum et malesuada fames ac ante ipsum primis in
							faucibus. Fusce ut aliquet justo. Donec id neque ipsum. Integer
							eget ultricies odio. Nam vel ex a orci fringilla tincidunt.
							Aliquam eleifend ligula non velit accumsan cursus. Etiam ut
							gravida sapien. Morbi mattis mi consectetur tortor elementum,
							varius pellentesque velit convallis. Aenean tincidunt lectus
							auctor mauris maximus, ac scelerisque ipsum tempor. Duis
							vulputate ex et ex tincidunt, quis lacinia velit aliquet. Duis
							non efficitur nisi, id malesuada justo. Maecenas sagittis felis
							ac sagittis semper. Curabitur purus leo, tempus sed finibus eget,
							fringilla quis risus. Maecenas et lorem quis sem varius sagittis
							et a est. Maecenas iaculis iaculis sem. Donec vel dolor at arcu
							tincidunt bibendum. Interdum et malesuada fames ac ante ipsum
							primis in faucibus. Fusce ut aliquet justo. Donec id neque ipsum.
							Integer eget ultricies odio. Nam vel ex a orci fringilla
							tincidunt. Aliquam eleifend ligula non velit accumsan cursus.
							Etiam ut gravida sapien.
						</p>
						<p>
							<span class="image right"><img src="../controller/images/pic05.jpg"
								alt="" /></span>Vestibulum ultrices risus velit, sit amet blandit
							massa auctor sit amet. Sed eu lectus sem. Phasellus in odio at
							ipsum porttitor mollis id vel diam. Praesent sit amet posuere
							risus, eu faucibus lectus. Vivamus ex ligula, tempus pulvinar
							ipsum in, auctor porta quam. Proin nec dui cursus, posuere dui
							eget interdum. Fusce lectus magna, sagittis at facilisis vitae,
							pellentesque at etiam. Quisque posuere leo quis sem commodo, vel
							scelerisque nisi scelerisque. Suspendisse id quam vel tortor
							tincidunt suscipit. Nullam auctor orci eu dolor consectetur,
							interdum ullamcorper ante tincidunt. Mauris felis nec felis
							elementum varius. Nam sapien ante, varius in pulvinar vitae,
							rhoncus id massa. Donec varius ex in mauris ornare, eget euismod
							urna egestas. Etiam lacinia tempor ipsum, sodales porttitor
							justo. Aliquam dolor quam, semper in tortor eu, volutpat
							efficitur quam. Fusce nec fermentum nisl. Aenean erat diam,
							tempus aliquet erat. Etiam iaculis nulla ipsum, et pharetra
							libero rhoncus ut. Phasellus rutrum cursus velit, eget
							condimentum nunc blandit vel. In at pulvinar lectus. Morbi diam
							ante, vulputate et imperdiet eget, fermentum non dolor. Ut
							eleifend sagittis tincidunt. Sed viverra commodo mi, ac rhoncus
							justo. Duis neque ligula, elementum ut enim vel, posuere finibus
							justo. Vivamus facilisis maximus nibh quis pulvinar. Quisque
							hendrerit in ipsum id tellus facilisis fermentum. Proin mauris
							dui.
						</p>
					</section>
					<section class="style8" id="jeju">
						<!-- 안에 내용 배경색 style7,8번갈아 쓰기 -->
						<h4>jeju</h4>
						<h5>Fit</h5>
						<h5>Left &amp; Right</h5>
						<p>
							<span class="image left"><img src="../controller/images/pic04.jpg"
								alt="" /></span>Morbi mattis mi consectetur tortor elementum, varius
							pellentesque velit convallis. Aenean tincidunt lectus auctor
							mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et
							ex tincidunt, quis lacinia velit aliquet. Duis non efficitur
							nisi, id malesuada justo. Maecenas sagittis felis ac sagittis
							semper. Curabitur purus leo, tempus sed finibus eget, fringilla
							quis risus. Maecenas et lorem quis sem varius sagittis et a est.
							Maecenas iaculis iaculis sem. Donec vel dolor at arcu tincidunt
							bibendum. Interdum et malesuada fames ac ante ipsum primis in
							faucibus. Fusce ut aliquet justo. Donec id neque ipsum. Integer
							eget ultricies odio. Nam vel ex a orci fringilla tincidunt.
							Aliquam eleifend ligula non velit accumsan cursus. Etiam ut
							gravida sapien. Morbi mattis mi consectetur tortor elementum,
							varius pellentesque velit convallis. Aenean tincidunt lectus
							auctor mauris maximus, ac scelerisque ipsum tempor. Duis
							vulputate ex et ex tincidunt, quis lacinia velit aliquet. Duis
							non efficitur nisi, id malesuada justo. Maecenas sagittis felis
							ac sagittis semper. Curabitur purus leo, tempus sed finibus eget,
							fringilla quis risus. Maecenas et lorem quis sem varius sagittis
							et a est. Maecenas iaculis iaculis sem. Donec vel dolor at arcu
							tincidunt bibendum. Interdum et malesuada fames ac ante ipsum
							primis in faucibus. Fusce ut aliquet justo. Donec id neque ipsum.
							Integer eget ultricies odio. Nam vel ex a orci fringilla
							tincidunt. Aliquam eleifend ligula non velit accumsan cursus.
							Etiam ut gravida sapien.
						</p>
						<p>
							<span class="image right"><img src="../controller/images/pic05.jpg"
								alt="" /></span>Vestibulum ultrices risus velit, sit amet blandit
							massa auctor sit amet. Sed eu lectus sem. Phasellus in odio at
							ipsum porttitor mollis id vel diam. Praesent sit amet posuere
							risus, eu faucibus lectus. Vivamus ex ligula, tempus pulvinar
							ipsum in, auctor porta quam. Proin nec dui cursus, posuere dui
							eget interdum. Fusce lectus magna, sagittis at facilisis vitae,
							pellentesque at etiam. Quisque posuere leo quis sem commodo, vel
							scelerisque nisi scelerisque. Suspendisse id quam vel tortor
							tincidunt suscipit. Nullam auctor orci eu dolor consectetur,
							interdum ullamcorper ante tincidunt. Mauris felis nec felis
							elementum varius. Nam sapien ante, varius in pulvinar vitae,
							rhoncus id massa. Donec varius ex in mauris ornare, eget euismod
							urna egestas. Etiam lacinia tempor ipsum, sodales porttitor
							justo. Aliquam dolor quam, semper in tortor eu, volutpat
							efficitur quam. Fusce nec fermentum nisl. Aenean erat diam,
							tempus aliquet erat. Etiam iaculis nulla ipsum, et pharetra
							libero rhoncus ut. Phasellus rutrum cursus velit, eget
							condimentum nunc blandit vel. In at pulvinar lectus. Morbi diam
							ante, vulputate et imperdiet eget, fermentum non dolor. Ut
							eleifend sagittis tincidunt. Sed viverra commodo mi, ac rhoncus
							justo. Duis neque ligula, elementum ut enim vel, posuere finibus
							justo. Vivamus facilisis maximus nibh quis pulvinar. Quisque
							hendrerit in ipsum id tellus facilisis fermentum. Proin mauris
							dui.
						</p>
					</section>
					<section class="style8" id="inchkeongi">
						<!-- 안에 내용 배경색 style7,8번갈아 쓰기 -->
						<h4>inchkeongi</h4>
						<h5>Fit</h5>
						<h5>Left &amp; Right</h5>
						<p>
							<span class="image left"><img src="../controller/images/pic04.jpg"
								alt="" /></span>Morbi mattis mi consectetur tortor elementum, varius
							pellentesque velit convallis. Aenean tincidunt lectus auctor
							mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et
							ex tincidunt, quis lacinia velit aliquet. Duis non efficitur
							nisi, id malesuada justo. Maecenas sagittis felis ac sagittis
							semper. Curabitur purus leo, tempus sed finibus eget, fringilla
							quis risus. Maecenas et lorem quis sem varius sagittis et a est.
							Maecenas iaculis iaculis sem. Donec vel dolor at arcu tincidunt
							bibendum. Interdum et malesuada fames ac ante ipsum primis in
							faucibus. Fusce ut aliquet justo. Donec id neque ipsum. Integer
							eget ultricies odio. Nam vel ex a orci fringilla tincidunt.
							Aliquam eleifend ligula non velit accumsan cursus. Etiam ut
							gravida sapien. Morbi mattis mi consectetur tortor elementum,
							varius pellentesque velit convallis. Aenean tincidunt lectus
							auctor mauris maximus, ac scelerisque ipsum tempor. Duis
							vulputate ex et ex tincidunt, quis lacinia velit aliquet. Duis
							non efficitur nisi, id malesuada justo. Maecenas sagittis felis
							ac sagittis semper. Curabitur purus leo, tempus sed finibus eget,
							fringilla quis risus. Maecenas et lorem quis sem varius sagittis
							et a est. Maecenas iaculis iaculis sem. Donec vel dolor at arcu
							tincidunt bibendum. Interdum et malesuada fames ac ante ipsum
							primis in faucibus. Fusce ut aliquet justo. Donec id neque ipsum.
							Integer eget ultricies odio. Nam vel ex a orci fringilla
							tincidunt. Aliquam eleifend ligula non velit accumsan cursus.
							Etiam ut gravida sapien.
						</p>
						<p>
							<span class="image right"><img src="../controller/images/pic05.jpg"
								alt="" /></span>Vestibulum ultrices risus velit, sit amet blandit
							massa auctor sit amet. Sed eu lectus sem. Phasellus in odio at
							ipsum porttitor mollis id vel diam. Praesent sit amet posuere
							risus, eu faucibus lectus. Vivamus ex ligula, tempus pulvinar
							ipsum in, auctor porta quam. Proin nec dui cursus, posuere dui
							eget interdum. Fusce lectus magna, sagittis at facilisis vitae,
							pellentesque at etiam. Quisque posuere leo quis sem commodo, vel
							scelerisque nisi scelerisque. Suspendisse id quam vel tortor
							tincidunt suscipit. Nullam auctor orci eu dolor consectetur,
							interdum ullamcorper ante tincidunt. Mauris felis nec felis
							elementum varius. Nam sapien ante, varius in pulvinar vitae,
							rhoncus id massa. Donec varius ex in mauris ornare, eget euismod
							urna egestas. Etiam lacinia tempor ipsum, sodales porttitor
							justo. Aliquam dolor quam, semper in tortor eu, volutpat
							efficitur quam. Fusce nec fermentum nisl. Aenean erat diam,
							tempus aliquet erat. Etiam iaculis nulla ipsum, et pharetra
							libero rhoncus ut. Phasellus rutrum cursus velit, eget
							condimentum nunc blandit vel. In at pulvinar lectus. Morbi diam
							ante, vulputate et imperdiet eget, fermentum non dolor. Ut
							eleifend sagittis tincidunt. Sed viverra commodo mi, ac rhoncus
							justo. Duis neque ligula, elementum ut enim vel, posuere finibus
							justo. Vivamus facilisis maximus nibh quis pulvinar. Quisque
							hendrerit in ipsum id tellus facilisis fermentum. Proin mauris
							dui.
						</p>
					</section>
					<section class="style7" id="busan">
						<!-- 안에 내용 배경색 style7,8번갈아 쓰기 -->
						<h4>busan</h4>
						<h5>Fit</h5>
						<h5>Left &amp; Right</h5>
						<p>
							<span class="image left"><img src="../controller/images/pic04.jpg"
								alt="" /></span>Morbi mattis mi consectetur tortor elementum, varius
							pellentesque velit convallis. Aenean tincidunt lectus auctor
							mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et
							ex tincidunt, quis lacinia velit aliquet. Duis non efficitur
							nisi, id malesuada justo. Maecenas sagittis felis ac sagittis
							semper. Curabitur purus leo, tempus sed finibus eget, fringilla
							quis risus. Maecenas et lorem quis sem varius sagittis et a est.
							Maecenas iaculis iaculis sem. Donec vel dolor at arcu tincidunt
							bibendum. Interdum et malesuada fames ac ante ipsum primis in
							faucibus. Fusce ut aliquet justo. Donec id neque ipsum. Integer
							eget ultricies odio. Nam vel ex a orci fringilla tincidunt.
							Aliquam eleifend ligula non velit accumsan cursus. Etiam ut
							gravida sapien. Morbi mattis mi consectetur tortor elementum,
							varius pellentesque velit convallis. Aenean tincidunt lectus
							auctor mauris maximus, ac scelerisque ipsum tempor. Duis
							vulputate ex et ex tincidunt, quis lacinia velit aliquet. Duis
							non efficitur nisi, id malesuada justo. Maecenas sagittis felis
							ac sagittis semper. Curabitur purus leo, tempus sed finibus eget,
							fringilla quis risus. Maecenas et lorem quis sem varius sagittis
							et a est. Maecenas iaculis iaculis sem. Donec vel dolor at arcu
							tincidunt bibendum. Interdum et malesuada fames ac ante ipsum
							primis in faucibus. Fusce ut aliquet justo. Donec id neque ipsum.
							Integer eget ultricies odio. Nam vel ex a orci fringilla
							tincidunt. Aliquam eleifend ligula non velit accumsan cursus.
							Etiam ut gravida sapien.
						</p>
						<p>
							<span class="image right"><img src="../controller/images/pic05.jpg"
								alt="" /></span>Vestibulum ultrices risus velit, sit amet blandit
							massa auctor sit amet. Sed eu lectus sem. Phasellus in odio at
							ipsum porttitor mollis id vel diam. Praesent sit amet posuere
							risus, eu faucibus lectus. Vivamus ex ligula, tempus pulvinar
							ipsum in, auctor porta quam. Proin nec dui cursus, posuere dui
							eget interdum. Fusce lectus magna, sagittis at facilisis vitae,
							pellentesque at etiam. Quisque posuere leo quis sem commodo, vel
							scelerisque nisi scelerisque. Suspendisse id quam vel tortor
							tincidunt suscipit. Nullam auctor orci eu dolor consectetur,
							interdum ullamcorper ante tincidunt. Mauris felis nec felis
							elementum varius. Nam sapien ante, varius in pulvinar vitae,
							rhoncus id massa. Donec varius ex in mauris ornare, eget euismod
							urna egestas. Etiam lacinia tempor ipsum, sodales porttitor
							justo. Aliquam dolor quam, semper in tortor eu, volutpat
							efficitur quam. Fusce nec fermentum nisl. Aenean erat diam,
							tempus aliquet erat. Etiam iaculis nulla ipsum, et pharetra
							libero rhoncus ut. Phasellus rutrum cursus velit, eget
							condimentum nunc blandit vel. In at pulvinar lectus. Morbi diam
							ante, vulputate et imperdiet eget, fermentum non dolor. Ut
							eleifend sagittis tincidunt. Sed viverra commodo mi, ac rhoncus
							justo. Duis neque ligula, elementum ut enim vel, posuere finibus
							justo. Vivamus facilisis maximus nibh quis pulvinar. Quisque
							hendrerit in ipsum id tellus facilisis fermentum. Proin mauris
							dui.
						</p>
					</section>
					<section class="style8" id="jeonju">
						<!-- 안에 내용 배경색 style7,8번갈아 쓰기 -->
						<h4>jeonju</h4>
						<h5>Fit</h5>
						<h5>Left &amp; Right</h5>
						<p>
							<span class="image left"><img src="../controller/images/pic04.jpg"
								alt="" /></span>Morbi mattis mi consectetur tortor elementum, varius
							pellentesque velit convallis. Aenean tincidunt lectus auctor
							mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et
							ex tincidunt, quis lacinia velit aliquet. Duis non efficitur
							nisi, id malesuada justo. Maecenas sagittis felis ac sagittis
							semper. Curabitur purus leo, tempus sed finibus eget, fringilla
							quis risus. Maecenas et lorem quis sem varius sagittis et a est.
							Maecenas iaculis iaculis sem. Donec vel dolor at arcu tincidunt
							bibendum. Interdum et malesuada fames ac ante ipsum primis in
							faucibus. Fusce ut aliquet justo. Donec id neque ipsum. Integer
							eget ultricies odio. Nam vel ex a orci fringilla tincidunt.
							Aliquam eleifend ligula non velit accumsan cursus. Etiam ut
							gravida sapien. Morbi mattis mi consectetur tortor elementum,
							varius pellentesque velit convallis. Aenean tincidunt lectus
							auctor mauris maximus, ac scelerisque ipsum tempor. Duis
							vulputate ex et ex tincidunt, quis lacinia velit aliquet. Duis
							non efficitur nisi, id malesuada justo. Maecenas sagittis felis
							ac sagittis semper. Curabitur purus leo, tempus sed finibus eget,
							fringilla quis risus. Maecenas et lorem quis sem varius sagittis
							et a est. Maecenas iaculis iaculis sem. Donec vel dolor at arcu
							tincidunt bibendum. Interdum et malesuada fames ac ante ipsum
							primis in faucibus. Fusce ut aliquet justo. Donec id neque ipsum.
							Integer eget ultricies odio. Nam vel ex a orci fringilla
							tincidunt. Aliquam eleifend ligula non velit accumsan cursus.
							Etiam ut gravida sapien.
						</p>
						<p>
							<span class="image right"><img src="../controller/images/pic05.jpg"
								alt="" /></span>Vestibulum ultrices risus velit, sit amet blandit
							massa auctor sit amet. Sed eu lectus sem. Phasellus in odio at
							ipsum porttitor mollis id vel diam. Praesent sit amet posuere
							risus, eu faucibus lectus. Vivamus ex ligula, tempus pulvinar
							ipsum in, auctor porta quam. Proin nec dui cursus, posuere dui
							eget interdum. Fusce lectus magna, sagittis at facilisis vitae,
							pellentesque at etiam. Quisque posuere leo quis sem commodo, vel
							scelerisque nisi scelerisque. Suspendisse id quam vel tortor
							tincidunt suscipit. Nullam auctor orci eu dolor consectetur,
							interdum ullamcorper ante tincidunt. Mauris felis nec felis
							elementum varius. Nam sapien ante, varius in pulvinar vitae,
							rhoncus id massa. Donec varius ex in mauris ornare, eget euismod
							urna egestas. Etiam lacinia tempor ipsum, sodales porttitor
							justo. Aliquam dolor quam, semper in tortor eu, volutpat
							efficitur quam. Fusce nec fermentum nisl. Aenean erat diam,
							tempus aliquet erat. Etiam iaculis nulla ipsum, et pharetra
							libero rhoncus ut. Phasellus rutrum cursus velit, eget
							condimentum nunc blandit vel. In at pulvinar lectus. Morbi diam
							ante, vulputate et imperdiet eget, fermentum non dolor. Ut
							eleifend sagittis tincidunt. Sed viverra commodo mi, ac rhoncus
							justo. Duis neque ligula, elementum ut enim vel, posuere finibus
							justo. Vivamus facilisis maximus nibh quis pulvinar. Quisque
							hendrerit in ipsum id tellus facilisis fermentum. Proin mauris
							dui.
						</p>
					</section>
					<section class="style8" id="daegu">
						<!-- 안에 내용 배경색 style7,8번갈아 쓰기 -->
						<h4>daegu</h4>
						<h5>Fit</h5>
						<h5>Left &amp; Right</h5>
						<p>
							<span class="image left"><img src="../controller/images/pic04.jpg"
								alt="" /></span>Morbi mattis mi consectetur tortor elementum, varius
							pellentesque velit convallis. Aenean tincidunt lectus auctor
							mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et
							ex tincidunt, quis lacinia velit aliquet. Duis non efficitur
							nisi, id malesuada justo. Maecenas sagittis felis ac sagittis
							semper. Curabitur purus leo, tempus sed finibus eget, fringilla
							quis risus. Maecenas et lorem quis sem varius sagittis et a est.
							Maecenas iaculis iaculis sem. Donec vel dolor at arcu tincidunt
							bibendum. Interdum et malesuada fames ac ante ipsum primis in
							faucibus. Fusce ut aliquet justo. Donec id neque ipsum. Integer
							eget ultricies odio. Nam vel ex a orci fringilla tincidunt.
							Aliquam eleifend ligula non velit accumsan cursus. Etiam ut
							gravida sapien. Morbi mattis mi consectetur tortor elementum,
							varius pellentesque velit convallis. Aenean tincidunt lectus
							auctor mauris maximus, ac scelerisque ipsum tempor. Duis
							vulputate ex et ex tincidunt, quis lacinia velit aliquet. Duis
							non efficitur nisi, id malesuada justo. Maecenas sagittis felis
							ac sagittis semper. Curabitur purus leo, tempus sed finibus eget,
							fringilla quis risus. Maecenas et lorem quis sem varius sagittis
							et a est. Maecenas iaculis iaculis sem. Donec vel dolor at arcu
							tincidunt bibendum. Interdum et malesuada fames ac ante ipsum
							primis in faucibus. Fusce ut aliquet justo. Donec id neque ipsum.
							Integer eget ultricies odio. Nam vel ex a orci fringilla
							tincidunt. Aliquam eleifend ligula non velit accumsan cursus.
							Etiam ut gravida sapien.
						</p>
						<p>
							<span class="image right"><img src="../controller/images/pic05.jpg"
								alt="" /></span>Vestibulum ultrices risus velit, sit amet blandit
							massa auctor sit amet. Sed eu lectus sem. Phasellus in odio at
							ipsum porttitor mollis id vel diam. Praesent sit amet posuere
							risus, eu faucibus lectus. Vivamus ex ligula, tempus pulvinar
							ipsum in, auctor porta quam. Proin nec dui cursus, posuere dui
							eget interdum. Fusce lectus magna, sagittis at facilisis vitae,
							pellentesque at etiam. Quisque posuere leo quis sem commodo, vel
							scelerisque nisi scelerisque. Suspendisse id quam vel tortor
							tincidunt suscipit. Nullam auctor orci eu dolor consectetur,
							interdum ullamcorper ante tincidunt. Mauris felis nec felis
							elementum varius. Nam sapien ante, varius in pulvinar vitae,
							rhoncus id massa. Donec varius ex in mauris ornare, eget euismod
							urna egestas. Etiam lacinia tempor ipsum, sodales porttitor
							justo. Aliquam dolor quam, semper in tortor eu, volutpat
							efficitur quam. Fusce nec fermentum nisl. Aenean erat diam,
							tempus aliquet erat. Etiam iaculis nulla ipsum, et pharetra
							libero rhoncus ut. Phasellus rutrum cursus velit, eget
							condimentum nunc blandit vel. In at pulvinar lectus. Morbi diam
							ante, vulputate et imperdiet eget, fermentum non dolor. Ut
							eleifend sagittis tincidunt. Sed viverra commodo mi, ac rhoncus
							justo. Duis neque ligula, elementum ut enim vel, posuere finibus
							justo. Vivamus facilisis maximus nibh quis pulvinar. Quisque
							hendrerit in ipsum id tellus facilisis fermentum. Proin mauris
							dui.
						</p>
					</section>
					<section class="style8" id="kangwondo">
						<!-- 안에 내용 배경색 style7,8번갈아 쓰기 -->
						<h4>kangwondo</h4>
						<h5>Fit</h5>
						<h5>Left &amp; Right</h5>
						<p>
							<span class="image left"><img src="../controller/images/pic04.jpg"
								alt="" /></span>Morbi mattis mi consectetur tortor elementum, varius
							pellentesque velit convallis. Aenean tincidunt lectus auctor
							mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et
							ex tincidunt, quis lacinia velit aliquet. Duis non efficitur
							nisi, id malesuada justo. Maecenas sagittis felis ac sagittis
							semper. Curabitur purus leo, tempus sed finibus eget, fringilla
							quis risus. Maecenas et lorem quis sem varius sagittis et a est.
							Maecenas iaculis iaculis sem. Donec vel dolor at arcu tincidunt
							bibendum. Interdum et malesuada fames ac ante ipsum primis in
							faucibus. Fusce ut aliquet justo. Donec id neque ipsum. Integer
							eget ultricies odio. Nam vel ex a orci fringilla tincidunt.
							Aliquam eleifend ligula non velit accumsan cursus. Etiam ut
							gravida sapien. Morbi mattis mi consectetur tortor elementum,
							varius pellentesque velit convallis. Aenean tincidunt lectus
							auctor mauris maximus, ac scelerisque ipsum tempor. Duis
							vulputate ex et ex tincidunt, quis lacinia velit aliquet. Duis
							non efficitur nisi, id malesuada justo. Maecenas sagittis felis
							ac sagittis semper. Curabitur purus leo, tempus sed finibus eget,
							fringilla quis risus. Maecenas et lorem quis sem varius sagittis
							et a est. Maecenas iaculis iaculis sem. Donec vel dolor at arcu
							tincidunt bibendum. Interdum et malesuada fames ac ante ipsum
							primis in faucibus. Fusce ut aliquet justo. Donec id neque ipsum.
							Integer eget ultricies odio. Nam vel ex a orci fringilla
							tincidunt. Aliquam eleifend ligula non velit accumsan cursus.
							Etiam ut gravida sapien.
						</p>
						<p>
							<span class="image right"><img src="../controller/images/pic05.jpg"
								alt="" /></span>Vestibulum ultrices risus velit, sit amet blandit
							massa auctor sit amet. Sed eu lectus sem. Phasellus in odio at
							ipsum porttitor mollis id vel diam. Praesent sit amet posuere
							risus, eu faucibus lectus. Vivamus ex ligula, tempus pulvinar
							ipsum in, auctor porta quam. Proin nec dui cursus, posuere dui
							eget interdum. Fusce lectus magna, sagittis at facilisis vitae,
							pellentesque at etiam. Quisque posuere leo quis sem commodo, vel
							scelerisque nisi scelerisque. Suspendisse id quam vel tortor
							tincidunt suscipit. Nullam auctor orci eu dolor consectetur,
							interdum ullamcorper ante tincidunt. Mauris felis nec felis
							elementum varius. Nam sapien ante, varius in pulvinar vitae,
							rhoncus id massa. Donec varius ex in mauris ornare, eget euismod
							urna egestas. Etiam lacinia tempor ipsum, sodales porttitor
							justo. Aliquam dolor quam, semper in tortor eu, volutpat
							efficitur quam. Fusce nec fermentum nisl. Aenean erat diam,
							tempus aliquet erat. Etiam iaculis nulla ipsum, et pharetra
							libero rhoncus ut. Phasellus rutrum cursus velit, eget
							condimentum nunc blandit vel. In at pulvinar lectus. Morbi diam
							ante, vulputate et imperdiet eget, fermentum non dolor. Ut
							eleifend sagittis tincidunt. Sed viverra commodo mi, ac rhoncus
							justo. Duis neque ligula, elementum ut enim vel, posuere finibus
							justo. Vivamus facilisis maximus nibh quis pulvinar. Quisque
							hendrerit in ipsum id tellus facilisis fermentum. Proin mauris
							dui.
						</p>
					</section>
					<section class="style8" id="daejeon">
						<!-- 안에 내용 배경색 style7,8번갈아 쓰기 -->
						<h4>daejeon</h4>
						<h5>Fit</h5>
						<h5>Left &amp; Right</h5>
						<p>
							<span class="image left"><img src="../controller/images/pic04.jpg"
								alt="" /></span>Morbi mattis mi consectetur tortor elementum, varius
							pellentesque velit convallis. Aenean tincidunt lectus auctor
							mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et
							ex tincidunt, quis lacinia velit aliquet. Duis non efficitur
							nisi, id malesuada justo. Maecenas sagittis felis ac sagittis
							semper. Curabitur purus leo, tempus sed finibus eget, fringilla
							quis risus. Maecenas et lorem quis sem varius sagittis et a est.
							Maecenas iaculis iaculis sem. Donec vel dolor at arcu tincidunt
							bibendum. Interdum et malesuada fames ac ante ipsum primis in
							faucibus. Fusce ut aliquet justo. Donec id neque ipsum. Integer
							eget ultricies odio. Nam vel ex a orci fringilla tincidunt.
							Aliquam eleifend ligula non velit accumsan cursus. Etiam ut
							gravida sapien. Morbi mattis mi consectetur tortor elementum,
							varius pellentesque velit convallis. Aenean tincidunt lectus
							auctor mauris maximus, ac scelerisque ipsum tempor. Duis
							vulputate ex et ex tincidunt, quis lacinia velit aliquet. Duis
							non efficitur nisi, id malesuada justo. Maecenas sagittis felis
							ac sagittis semper. Curabitur purus leo, tempus sed finibus eget,
							fringilla quis risus. Maecenas et lorem quis sem varius sagittis
							et a est. Maecenas iaculis iaculis sem. Donec vel dolor at arcu
							tincidunt bibendum. Interdum et malesuada fames ac ante ipsum
							primis in faucibus. Fusce ut aliquet justo. Donec id neque ipsum.
							Integer eget ultricies odio. Nam vel ex a orci fringilla
							tincidunt. Aliquam eleifend ligula non velit accumsan cursus.
							Etiam ut gravida sapien.
						</p>
						<p>
							<span class="image right"><img src="../controller/images/pic05.jpg"
								alt="" /></span>Vestibulum ultrices risus velit, sit amet blandit
							massa auctor sit amet. Sed eu lectus sem. Phasellus in odio at
							ipsum porttitor mollis id vel diam. Praesent sit amet posuere
							risus, eu faucibus lectus. Vivamus ex ligula, tempus pulvinar
							ipsum in, auctor porta quam. Proin nec dui cursus, posuere dui
							eget interdum. Fusce lectus magna, sagittis at facilisis vitae,
							pellentesque at etiam. Quisque posuere leo quis sem commodo, vel
							scelerisque nisi scelerisque. Suspendisse id quam vel tortor
							tincidunt suscipit. Nullam auctor orci eu dolor consectetur,
							interdum ullamcorper ante tincidunt. Mauris felis nec felis
							elementum varius. Nam sapien ante, varius in pulvinar vitae,
							rhoncus id massa. Donec varius ex in mauris ornare, eget euismod
							urna egestas. Etiam lacinia tempor ipsum, sodales porttitor
							justo. Aliquam dolor quam, semper in tortor eu, volutpat
							efficitur quam. Fusce nec fermentum nisl. Aenean erat diam,
							tempus aliquet erat. Etiam iaculis nulla ipsum, et pharetra
							libero rhoncus ut. Phasellus rutrum cursus velit, eget
							condimentum nunc blandit vel. In at pulvinar lectus. Morbi diam
							ante, vulputate et imperdiet eget, fermentum non dolor. Ut
							eleifend sagittis tincidunt. Sed viverra commodo mi, ac rhoncus
							justo. Duis neque ligula, elementum ut enim vel, posuere finibus
							justo. Vivamus facilisis maximus nibh quis pulvinar. Quisque
							hendrerit in ipsum id tellus facilisis fermentum. Proin mauris
							dui.
						</p>
					</section>
					<section class="style8" id="kwangju">
						<!-- 안에 내용 배경색 style7,8번갈아 쓰기 -->
						<h4>kwangju</h4>
						<h5>Fit</h5>
						<h5>Left &amp; Right</h5>
						<p>
							<span class="image left"><img src="../controller/images/pic04.jpg"
								alt="" /></span>Morbi mattis mi consectetur tortor elementum, varius
							pellentesque velit convallis. Aenean tincidunt lectus auctor
							mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et
							ex tincidunt, quis lacinia velit aliquet. Duis non efficitur
							nisi, id malesuada justo. Maecenas sagittis felis ac sagittis
							semper. Curabitur purus leo, tempus sed finibus eget, fringilla
							quis risus. Maecenas et lorem quis sem varius sagittis et a est.
							Maecenas iaculis iaculis sem. Donec vel dolor at arcu tincidunt
							bibendum. Interdum et malesuada fames ac ante ipsum primis in
							faucibus. Fusce ut aliquet justo. Donec id neque ipsum. Integer
							eget ultricies odio. Nam vel ex a orci fringilla tincidunt.
							Aliquam eleifend ligula non velit accumsan cursus. Etiam ut
							gravida sapien. Morbi mattis mi consectetur tortor elementum,
							varius pellentesque velit convallis. Aenean tincidunt lectus
							auctor mauris maximus, ac scelerisque ipsum tempor. Duis
							vulputate ex et ex tincidunt, quis lacinia velit aliquet. Duis
							non efficitur nisi, id malesuada justo. Maecenas sagittis felis
							ac sagittis semper. Curabitur purus leo, tempus sed finibus eget,
							fringilla quis risus. Maecenas et lorem quis sem varius sagittis
							et a est. Maecenas iaculis iaculis sem. Donec vel dolor at arcu
							tincidunt bibendum. Interdum et malesuada fames ac ante ipsum
							primis in faucibus. Fusce ut aliquet justo. Donec id neque ipsum.
							Integer eget ultricies odio. Nam vel ex a orci fringilla
							tincidunt. Aliquam eleifend ligula non velit accumsan cursus.
							Etiam ut gravida sapien.
						</p>
						<p>
							<span class="image right"><img src="../controller/images/pic05.jpg"
								alt="" /></span>Vestibulum ultrices risus velit, sit amet blandit
							massa auctor sit amet. Sed eu lectus sem. Phasellus in odio at
							ipsum porttitor mollis id vel diam. Praesent sit amet posuere
							risus, eu faucibus lectus. Vivamus ex ligula, tempus pulvinar
							ipsum in, auctor porta quam. Proin nec dui cursus, posuere dui
							eget interdum. Fusce lectus magna, sagittis at facilisis vitae,
							pellentesque at etiam. Quisque posuere leo quis sem commodo, vel
							scelerisque nisi scelerisque. Suspendisse id quam vel tortor
							tincidunt suscipit. Nullam auctor orci eu dolor consectetur,
							interdum ullamcorper ante tincidunt. Mauris felis nec felis
							elementum varius. Nam sapien ante, varius in pulvinar vitae,
							rhoncus id massa. Donec varius ex in mauris ornare, eget euismod
							urna egestas. Etiam lacinia tempor ipsum, sodales porttitor
							justo. Aliquam dolor quam, semper in tortor eu, volutpat
							efficitur quam. Fusce nec fermentum nisl. Aenean erat diam,
							tempus aliquet erat. Etiam iaculis nulla ipsum, et pharetra
							libero rhoncus ut. Phasellus rutrum cursus velit, eget
							condimentum nunc blandit vel. In at pulvinar lectus. Morbi diam
							ante, vulputate et imperdiet eget, fermentum non dolor. Ut
							eleifend sagittis tincidunt. Sed viverra commodo mi, ac rhoncus
							justo. Duis neque ligula, elementum ut enim vel, posuere finibus
							justo. Vivamus facilisis maximus nibh quis pulvinar. Quisque
							hendrerit in ipsum id tellus facilisis fermentum. Proin mauris
							dui.
						</p>
					</section>
					<!-- new -->
				</div>
			</section>
		</article>

		<!-- Footer -->
		<!-- 모든페이지의 공통부분 -->
		<footer id="footer">
			<ul class="icons">
				<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
				<li><a href="#" class="icon fa-facebook"><span
						class="label">Facebook</span></a></li>
				<li><a href="#" class="icon fa-instagram"><span
						class="label">Instagram</span></a></li>
				<li><a href="#" class="icon fa-dribbble"><span
						class="label">Dribbble</span></a></li>
				<li><a href="#" class="icon fa-envelope-o"><span
						class="label">Email</span></a></li>
			</ul>
			<ul class="copyright">
				<li>&copy; Untitled</li>
				<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
			</ul>
		</footer>

<<<<<<< HEAD
		<!-- Scripts -->
			<script src="../assets/js/jquery.min.js"></script>
			<script src="../assets/js/jquery.scrollex.min.js"></script>
			<script src="../assets/js/jquery.scrolly.min.js"></script>
			<script src="../assets/js/skel.min.js"></script>
			<script src="../assets/js/util.js"></script>
			<script src="../assets/js/main.js"></script>
			<script src="../assets/js/introKor.js"></script>
			
			<!-- 숨김상단메뉴 -->
			<script type="text/javascript" src="jquery-1.3.2.js"></script>
        	<script type="text/javascript">
            $(function() {
                $(window).scroll(function(){
					var scrollTop = $(window).scrollTop();
					if(scrollTop >380)
						$('#nav2').stop().animate({'opacity':'1'},400);
					else	
						$('#nav2').stop().animate({'opacity':'0'},5);
=======
	</div>



	<!-- Scripts -->
	<script src="../controller/assets/js/jquery.min.js"></script>
	<script src="../controller/assets/js/jquery.scrollex.min.js"></script>
	<script src="../controller/assets/js/jquery.scrolly.min.js"></script>
	<script src="../controller/assets/js/skel.min.js"></script>
	<script src="../controller/assets/js/util.js"></script>
	<script src="../controller/assets/js/main.js"></script>

	<!-- 숨김상단메뉴 -->
	<script type="text/javascript" src="jquery-1.3.2.js"></script>
	<script type="text/javascript">
		$(function() {
			$(window).scroll(function() {
				var scrollTop = $(window).scrollTop();
				if (scrollTop > 380)
					$('#nav2').stop().animate({
						'opacity' : '1'
					}, 400);
				else
					$('#nav2').stop().animate({
						'opacity' : '0'
					}, 5);
			});
		});
	</script>
	
	<!-- 사이드 메뉴 -->
	<script type="text/javascript">
				$(function() {

				  var group = $(".group");
				
				  group.each(function() {
				    var _group = new GroupBox(this);
				  });
				
				  // 사용자 정의 생성자 함수 정의
				  function GroupBox(groupElement) {
				
				    var box = $(groupElement).find(".box");
				    var title = $(groupElement).find(".box .title a");
				
				    box.each(function(idx) {
				      var newBox = new RootBox(this);
				      if (idx > 0) {
				        newBox.siblingsClose();
				      }
				    });
				  }
				
				  // 사용자 정의 생성자 함수 정의
				  function RootBox(boxElement) {
				    var _this = this;
				    var boxEl = $(boxElement);
				    var target = $(boxEl).find(".title a");
				    var cont = $(boxEl).find(".cont");
				
				    // _groupParent = $(boxEl).parent();
				
				    target.on("click", anchorClickEvent);
				
				    function anchorClickEvent() {
				
				      if (cont.is(':hidden')) {
				        _this.open();
				      } else {
				        _this.close();
				      }
				    }
				
				    _this.siblingsClose = function() {
				      cont.css('display', 'none');
				    };
				
				    _this.open = function() {
				      cont.slideDown();
				    };
				    _this.close = function() {
				      cont.slideUp();
				    }
				  }
>>>>>>> refs/remotes/origin/master
				});
<<<<<<< HEAD
            });
       		</script>
       	
	</body>
=======
	</script>

</body>
>>>>>>> refs/remotes/origin/master
</html>
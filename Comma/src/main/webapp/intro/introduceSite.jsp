<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
<head>
<title>[소개]사이트 소개</title>
<meta charset="utf-8" />
<link rel="stylesheet" type="text/css" href="../controller/assets/css/introKor.css" />
<!-- 백그라운드 동영상 추가 -->
<script src="./js/jquery-1.11.1.min.js"></script>
<!--1. 제이쿼리(이미 페이지에서 로드했다면 추가안하셔도 됩니다.) -->
<script src="./js/modernizr-2.5.3.min.js"></script>
<!--2. 모더나이즈라고 터치기기 감지하기 위한 파일 입니다. -->
<script src="./js/video.js"></script>
<!--3. 비디오를 웹브라우저에 노출하기 위한 플러그인입니다. 비디오 재생 플레이어의 일종이라 생각하시면 됩니다.-->
<script src="./js/bigvideo.js"></script>
<!--4. 비디오나 이미지를 풀사이즈로 넣는 플러그인입니다. -->
<script src="./js/imagesloaded.pkgd.min.js"></script>
<script>
        var BV = new $.BigVideo({useFlashForFirefox:false, container:$('#header_siteInto')});
            // 비디오나 배경을 노출할 엘리먼트를 선택합니다. $('#videoEle')는 html 태그중에 <div id="videoEle"></div> 를 말하는 것입니다.
            BV.init();
            if (Modernizr.touch) {
                BV.show('../../images/siteInfo.jpg');
                //모바일일 경우 비디오 대신 대체할 이미지입니다.
            } else {
                BV.show(
                    { type: "video/mp4",  src: "./file/SampleVideo_360x240_1mb.mp4", doLoop:true },
                    { type: "video/webm", src: "./file/SampleVideo_360x240_1mb.webm", doLoop:true },
                    { type: "video/ogg",  src: "./file/SampleVideo_360x240_1mb.ogv", doLoop:true }
                );
                //웹브라우저마다 지원하는 비디오 형식이 다르기 때문에 다양하게 만들어서 제공해야합니다. 변환은 다음팟인코더나, 카카오인코더를 이용하세요.
                //옵션중에 doLoop는 영상 반복을 의미합니다. true는 영상 반복, false는 반복 안함입니다.
                BV.getPlayer().volume(0);
                //사운드를 0 즉 음소거 상태로 만듭니다.
            }
</script>
</head>
<body>
<div id="nav2" style="background-color: #72BBF0">
	<ul class="nav2mouseOver">
		<li><a class="scrolly" href="#one">What is Comma?</a></li>&nbsp;&nbsp;
		<li><a class="scrolly" href="#two">How to using Comma?</a></li>
	</ul>
</div>

<!-- Main -->
<article id="main">
	<header id="header_siteInto">
		<p><img alt="" src="images/commaLogo2.png"></p>
		<p><a href="#one" class="more scrolly"><img src="images/triangle.png"><br>
		view more</a></p>
	</header>

	<section class="wrapper style5" id="one">
		<!-- 배경 색... -->
	<div class="inner">
		<!-- 글자들 간격들 조절 -->

		<h3>1.What is Comma?</h3>
		<p>Morbi mattis mi consectetur tortor elementum, varius
			pellentesque velit convallis. Aenean tincidunt lectus auctor
			mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et
			ex tincidunt, quis lacinia velit aliquet. Duis non efficitur nisi,
			id malesuada justo. Maecenas sagittis felis ac sagittis semper.
			Curabitur purus leo, tempus sed finibus eget, fringilla quis
			risus. Maecenas et lorem quis sem varius sagittis et a est.
			Maecenas iaculis iaculis sem. Donec vel dolor at arcu tincidunt
			bibendum. Interdum et malesuada fames ac ante ipsum primis in
			faucibus. Fusce ut aliquet justo. Donec id neque ipsum. Integer
			eget ultricies odio. Nam vel ex a orci fringilla tincidunt.
			Aliquam eleifend ligula non velit accumsan cursus. Etiam ut
			gravida sapien.</p>

		<p>Vestibulum ultrices risus velit, sit amet blandit massa
			auctor sit amet. Sed eu lectus sem. Phasellus in odio at ipsum
			porttitor mollis id vel diam. Praesent sit amet posuere risus, eu
			faucibus lectus. Vivamus ex ligula, tempus pulvinar ipsum in,
			auctor porta quam. Proin nec dui cursus, posuere dui eget
			interdum. Fusce lectus magna, sagittis at facilisis vitae,
			pellentesque at etiam. Quisque posuere leo quis sem commodo, vel
			scelerisque nisi scelerisque. Suspendisse id quam vel tortor
			tincidunt suscipit. Nullam auctor orci eu dolor consectetur,
			interdum ullamcorper ante tincidunt. Mauris felis nec felis
			elementum varius.</p>

		<hr />

		<h4>Feugiat aliquam</h4>
		<p>Nam sapien ante, varius in pulvinar vitae, rhoncus id massa.
			Donec varius ex in mauris ornare, eget euismod urna egestas. Etiam
			lacinia tempor ipsum, sodales porttitor justo. Aliquam dolor quam,
			semper in tortor eu, volutpat efficitur quam. Fusce nec fermentum
			nisl. Aenean erat diam, tempus aliquet erat.</p>

		<p>Etiam iaculis nulla ipsum, et pharetra libero rhoncus ut.
			Phasellus rutrum cursus velit, eget condimentum nunc blandit vel.
			In at pulvinar lectus. Morbi diam ante, vulputate et imperdiet
			eget, fermentum non dolor. Ut eleifend sagittis tincidunt. Sed
			viverra commodo mi, ac rhoncus justo. Duis neque ligula, elementum
			ut enim vel, posuere finibus justo. Vivamus facilisis maximus nibh
			quis pulvinar. Quisque hendrerit in ipsum id tellus facilisis
			fermentum. Proin mauris dui, at vestibulum sit amet, auctor
			bibendum neque.</p>

	</div>
</section>

<section class="wrapper style6" id="two">
	<!-- 배경 색... -->
	<div class="inner">
		<!-- 글자들 간격들 조절 -->

			<h3>2.How to using Comma?</h3>
			<p>Morbi mattis mi consectetur tortor elementum, varius
				pellentesque velit convallis. Aenean tincidunt lectus auctor
				mauris maximus, ac scelerisque ipsum tempor. Duis vulputate ex et
				ex tincidunt, quis lacinia velit aliquet. Duis non efficitur nisi,
				id malesuada justo. Maecenas sagittis felis ac sagittis semper.
				Curabitur purus leo, tempus sed finibus eget, fringilla quis
				risus. Maecenas et lorem quis sem varius sagittis et a est.
				Maecenas iaculis iaculis sem. Donec vel dolor at arcu tincidunt
				bibendum. Interdum et malesuada fames ac ante ipsum primis in
				faucibus. Fusce ut aliquet justo. Donec id neque ipsum. Integer
				eget ultricies odio. Nam vel ex a orci fringilla tincidunt.
				Aliquam eleifend ligula non velit accumsan cursus. Etiam ut
				gravida sapien.</p>

			<p>Vestibulum ultrices risus velit, sit amet blandit massa
				auctor sit amet. Sed eu lectus sem. Phasellus in odio at ipsum
				porttitor mollis id vel diam. Praesent sit amet posuere risus, eu
				faucibus lectus. Vivamus ex ligula, tempus pulvinar ipsum in,
				auctor porta quam. Proin nec dui cursus, posuere dui eget
				interdum. Fusce lectus magna, sagittis at facilisis vitae,
				pellentesque at etiam. Quisque posuere leo quis sem commodo, vel
				scelerisque nisi scelerisque. Suspendisse id quam vel tortor
				tincidunt suscipit. Nullam auctor orci eu dolor consectetur,
				interdum ullamcorper ante tincidunt. Mauris felis nec felis
				elementum varius.</p>

			<hr />

			<h4>Feugiat aliquam</h4>
			<p>Nam sapien ante, varius in pulvinar vitae, rhoncus id massa.
				Donec varius ex in mauris ornare, eget euismod urna egestas. Etiam
				lacinia tempor ipsum, sodales porttitor justo. Aliquam dolor quam,
				semper in tortor eu, volutpat efficitur quam. Fusce nec fermentum
				nisl. Aenean erat diam, tempus aliquet erat.</p>

			<p>Etiam iaculis nulla ipsum, et pharetra libero rhoncus ut.
				Phasellus rutrum cursus velit, eget condimentum nunc blandit vel.
				In at pulvinar lectus. Morbi diam ante, vulputate et imperdiet
				eget, fermentum non dolor. Ut eleifend sagittis tincidunt. Sed
				viverra commodo mi, ac rhoncus justo. Duis neque ligula, elementum
				ut enim vel, posuere finibus justo. Vivamus facilisis maximus nibh
				quis pulvinar. Quisque hendrerit in ipsum id tellus facilisis
				fermentum. Proin mauris dui, at vestibulum sit amet, auctor
				bibendum neque.</p>

		</div>
	</section>
</article>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
<head>
<title>[�Ұ�]����Ʈ �Ұ�</title>
<meta charset="utf-8" />
<link rel="stylesheet" type="text/css" href="../controller/assets/css/introKor.css" />
<!-- ��׶��� ������ �߰� -->
<script src="./js/jquery-1.11.1.min.js"></script>
<!--1. ��������(�̹� ���������� �ε��ߴٸ� �߰����ϼŵ� �˴ϴ�.) -->
<script src="./js/modernizr-2.5.3.min.js"></script>
<!--2. ����������� ��ġ��� �����ϱ� ���� ���� �Դϴ�. -->
<script src="./js/video.js"></script>
<!--3. ������ ���������� �����ϱ� ���� �÷������Դϴ�. ���� ��� �÷��̾��� �����̶� �����Ͻø� �˴ϴ�.-->
<script src="./js/bigvideo.js"></script>
<!--4. ������ �̹����� Ǯ������� �ִ� �÷������Դϴ�. -->
<script src="./js/imagesloaded.pkgd.min.js"></script>
<script>
        var BV = new $.BigVideo({useFlashForFirefox:false, container:$('#header_siteInto')});
            // ������ ����� ������ ������Ʈ�� �����մϴ�. $('#videoEle')�� html �±��߿� <div id="videoEle"></div> �� ���ϴ� ���Դϴ�.
            BV.init();
            if (Modernizr.touch) {
                BV.show('../../images/siteInfo.jpg');
                //������� ��� ���� ��� ��ü�� �̹����Դϴ�.
            } else {
                BV.show(
                    { type: "video/mp4",  src: "./file/SampleVideo_360x240_1mb.mp4", doLoop:true },
                    { type: "video/webm", src: "./file/SampleVideo_360x240_1mb.webm", doLoop:true },
                    { type: "video/ogg",  src: "./file/SampleVideo_360x240_1mb.ogv", doLoop:true }
                );
                //������������ �����ϴ� ���� ������ �ٸ��� ������ �پ��ϰ� ���� �����ؾ��մϴ�. ��ȯ�� ���������ڴ���, īī�����ڴ��� �̿��ϼ���.
                //�ɼ��߿� doLoop�� ���� �ݺ��� �ǹ��մϴ�. true�� ���� �ݺ�, false�� �ݺ� �����Դϴ�.
                BV.getPlayer().volume(0);
                //���带 0 �� ���Ұ� ���·� ����ϴ�.
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
		<!-- ��� ��... -->
	<div class="inner">
		<!-- ���ڵ� ���ݵ� ���� -->

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
	<!-- ��� ��... -->
	<div class="inner">
		<!-- ���ڵ� ���ݵ� ���� -->

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
/*
	Spectral by HTML5 UP
	html5up.net | @n33co
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
*/


(function($) {

	skel
		.breakpoints({
			xlarge:	'(max-width: 1680px)',
			large:	'(max-width: 1280px)',
			medium:	'(max-width: 980px)',
			small:	'(max-width: 736px)',
			xsmall:	'(max-width: 480px)'
		});

	$(function() {

		var	$window = $(window),
			$body = $('body'),
			$wrapper = $('#page-wrapper'),
			$banner1 = $('#banner1'),
			$header = $('#header');

		// Disable animations/transitions until the page has loaded.
			$body.addClass('is-loading');

			$window.on('load', function() {
				window.setTimeout(function() {
					$body.removeClass('is-loading');
				}, 100);
			});

		// Mobile?
			if (skel.vars.mobile)
				$body.addClass('is-mobile');
			else
				skel
					.on('-medium !medium', function() {
						$body.removeClass('is-mobile');
					})
					.on('+medium', function() {
						$body.addClass('is-mobile');
					});

		// Fix: Placeholder polyfill.
			$('form').placeholder();

		// Prioritize "important" elements on medium.
			skel.on('+medium -medium', function() {
				$.prioritize(
					'.important\\28 medium\\29',
					skel.breakpoint('medium').active
				);
			});

		// y.
			$('.scrolly')
				.scrolly({
					speed: 1500,
					offset: $header.outerHeight()
				});
			/*사이트팝업메뉴*//*사이트팝업메뉴*//*사이트팝업메뉴*//*사이트팝업메뉴*//*사이트팝업메뉴*//*사이트팝업메뉴*//*사이트팝업메뉴*/
		// Menu.
			$('#menu')
				.append('<a href="#menu" class="close"></a>')
				.appendTo($body)
				.panel({
					delay: 500,
					hideOnClick: true,
					hideOnSwipe: true,
					resetScroll: true,
					resetForms: true,
					side: 'right',
					target: $body,
					visibleClass: 'is-menu-visible'
				});
			/*사이트팝업메뉴*//*사이트팝업메뉴*//*사이트팝업메뉴*//*사이트팝업메뉴*//*사이트팝업메뉴*//*사이트팝업메뉴*//*사이트팝업메뉴*/
		// Header.
			if (skel.vars.IEVersion < 9)
				$header.removeClass('alt');

			if ($banner1.length > 0
			&&	$header.hasClass('alt')) {

				$window.on('resize', function() { $window.trigger('scroll'); });

				$banner1.scrollex({
					bottom:		$header.outerHeight() + 1,
					terminate:	function() { $header.removeClass('alt'); },
					enter:		function() { $header.addClass('alt'); },
					leave:		function() { $header.removeClass('alt'); }
				});

			}
			
		//다른메뉴로갈 이미지버튼
			$('.features9 .inner2').hover(function() { 			//마우스를 올리는 경우
		        $(this).children('a').fadeIn(200); // 이미지에 마우스가 올라가면 텍스트 출력
		    },function(){
		        $(this).children('a').fadeOut(200);  // 이미지에 마우스가 내려가면 텍스트 사라짐
		    });

	});

})(jQuery);




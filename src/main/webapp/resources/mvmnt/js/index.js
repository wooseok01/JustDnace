$(document).ready(function() {
	var height = $(window).height();
	$('#main-info-page').height(height);

	var rollingWidth = $('#image-rolling-banner').width();
	var rollingHeight = $('#image-rolling-banner').height();
	$('#image-rolling-banner>ul>li').css('width', rollingWidth);

	$('#next').css('left', rollingWidth * 1 - 50);

	$('#icon').click(function() {
		$('html, body').stop().animate({
			scrollTop : $('#main-info-page').height() * 1
		});
	});
	
	var filter = "win16|win32|win64|mac";
	if( navigator.userAgent.match(/Android/i)
			 || navigator.userAgent.match(/webOS/i)
			 || navigator.userAgent.match(/iPhone/i)
			 || navigator.userAgent.match(/iPad/i)
			 || navigator.userAgent.match(/iPod/i)
			 || navigator.userAgent.match(/BlackBerry/i)
			 || navigator.userAgent.match(/Windows Phone/i)
			 ){
		$('#menuIcon').click(function() {
			menuIconClick(null);
		});
	}else{
		$(window).on('scroll', headerColorChange);
		$('#menuIcon, #toggleMenu').hover(menuMouseOver, menuMouseOut);
	}


	$(window).resize(function() {
		var imageHeight = $('#image-rolling-banner>div>img').height();
		var rollingWidth = $('#image-rolling-banner').width();
		var rollingHeight = $('#image-rolling-banner').height();
		var height = $(window).height();

		$('#main-info-page').height(height);
		$('#image-rolling-banner').height(imageHeight);
		fitArrowIcon(imageHeight);
	});

});

function isLoad(img) {
	var imageHeight = $('#image-rolling-banner>div').height() * 1;
	var imageWidth = $(this).width() * 1;

	if (imageHeight != 0) {
		console.log(imageHeight);
		$('#image-rolling-banner').height(imageHeight);
		fitArrowIcon(imageHeight);
	}
}

function fitArrowIcon(imageHeight) {
	$('#image-rolling-banner').height(imageHeight);
	$('#prev, #next').height(imageHeight);
	$('#prev>img, #next>img').css('margin-top', imageHeight / 2 - 16);
	$('#next').css('left', $('#image-rolling-banner').width() * 1 - 50);
}
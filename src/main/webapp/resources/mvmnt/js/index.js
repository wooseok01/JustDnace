$(document).ready(function(){
	var height = $(window).height();
	$('#main-info-page').height(height);
	
	var rollingWidth = $('#image-rolling-banner').width();
	var rollingHeight = $('#image-rolling-banner').height();
	$('#image-rolling-banner>ul>li').css('width', rollingWidth);
	
	
	$('#next').css('left', rollingWidth*1-50);
	$(window).on('scroll',headerColorChange);
	
	$('#icon').click(function(){
		$('html, body').stop().animate({
			scrollTop:$('#main-info-page').height() *1
		});
	});
	
	$('#menuIcon').click(function(){
		menuIconClick(null);
	});
	
	$(window).resize(function(){
		var imageHeight = $('#image-rolling-banner>div>img').height();
		var rollingWidth = $('#image-rolling-banner').width();
		var rollingHeight = $('#image-rolling-banner').height();
		var height = $(window).height();
		
		$('#main-info-page').height(height);
		$('#image-rolling-banner').height(imageHeight);
		fitArrowIcon(imageHeight);
		
	});
	
});

function isLoad(img){
	var imageHeight = $('#image-rolling-banner>div').height()*1;
	var imageWidth = $(this).width()*1;
	
	if(imageHeight != 0){
		console.log(imageHeight);
		$('#image-rolling-banner').height(imageHeight);
		fitArrowIcon(imageHeight);
	}
}

function fitArrowIcon(imageHeight){
	$('#image-rolling-banner').height(imageHeight);
	$('#prev, #next').height(imageHeight);
	$('#prev>img, #next>img').css('margin-top', imageHeight/2-16);
	$('#next').css('left', $('#image-rolling-banner').width()*1-50);
}
$(document).ready(function(){
	$('#menuIcon').attr('src','resources/mvmnt/images/header/menu-black.png');
	$('#nav-fixed>span').css('color','black');
	$('#menuIcon').click(menuIconClick);
	
	headerBackground();
	
	$('.player-thumnail>img').hover(function(){
		$(this).parent().find('.video-icon').attr('src', 'resources/mvmnt/images/about/video-black.png');
	}, function(){
		$(this).parent().find('.video-icon').attr('src', 'resources/mvmnt/images/about/video-white.png');
	});
	
	$('.player-thumnail>img').click(function(){
		$(this).parent().find('iframe').fadeIn('slow');
		$(this).parent().find('img').fadeOut('slow');
	});
});

function fitXY(image){
	
	var thisObj = $(image);
	
	var imageWidth = thisObj.width()*1;
	var imageHeight = thisObj.height()*1;
	
	if(imageWidth != 0){
		thisObj.parent().find('.video-icon').css('left', imageWidth/2-24);
	}
	
	if(imageHeight != 0){
		thisObj.parent().find('.video-icon').css('top', imageHeight/2-24);
	}
}
$(function(){
	$(".youtube").YouTubeModal({autoplay:1, width:480, height:320});
	$(".video-icon").YouTubeModal({autoplay:1, width:640, height:480});
});

$(document).ready(function(){
	$('#menuIcon').attr('src','resources/mvmnt/images/header/menu-black.png');
	$('#nav-fixed>span').css('color','black');
	$('#menuIcon').click(menuIconClick);
	$('#menuIcon, #toggleMenu').hover(menuMouseOver, menuMouseOut);
	headerBackground();
	
	$('.player-thumnail>img').hover(function(){
		$(this).parent().find('.video-icon').attr('src', 'resources/mvmnt/images/about/video-black.png');
	}, function(){
		$(this).parent().find('.video-icon').attr('src', 'resources/mvmnt/images/about/video-white.png');
	});
	
	
});

function descriptionMoreClick(div){
	var description = $(div).parent().find('.description');
	
	if($(div).html() == 'More ▼'){
		$(div).html('Less ▲');
		description.css({
			'height' : 'auto',
			'line-clamp' : 'initial'
		});
	}else{
		$(div).html('More ▼');
		description.css({
			'height' : '48px',
			'line-clamp' : '3'
		});
	}
}

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
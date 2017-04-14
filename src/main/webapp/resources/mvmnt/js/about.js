$(function(){
	$(".youtube").YouTubeModal({autoplay:1, width:640, height:480});
});

$(document).ready(function(){
	$('#menuIcon').attr('src','resources/mvmnt/images/header/menu-black.png');
	
	$('#menuIcon').click(menuIconClick);
	
	$(window).resize(function(){
		var imageHeight = $('#rolling-banner>div>img').height();
		$('#rolling-banner').height(imageHeight);
		fitArrowIcon(imageHeight);
	});
	
	$('.text-movie-data').hover(function(){
		$(this).find('.video-icon').attr('src','resources/mvmnt/images/about/video-black.png');
	}, function(){
		$(this).find('.video-icon').attr('src','resources/mvmnt/images/about/video-white.png');
	});
	
//	$('.text-movie-data').YouTubePopup({
//		autoplay : 0,
//		draggable : false,
//		youtubeId : getYoutubeId($(this).find('.urlValue').val()),
//		title : 'bbbb'
//	});
	
	$('.text-movie-data').click(function(){
		var regExp = /^.*((youtu.be\/)|(v\/)|(\/u\/\w\/)|(embed\/)|(watch\?))\??v?=?([^#\&\?]*).*/;
		var url = $(this).find('.urlValue').val();
		var youtubeId = url.match(regExp);
		
		
		
	});
	
});

function isLoad(img){
	var imageHeight = $('#rolling-banner>div').height()*1;
	var imageWidth = $(this).width()*1;
	
	if(imageHeight != 0){
		$('#rolling-banner').height(imageHeight);
		fitArrowIcon(imageHeight);
	}
}

function fitArrowIcon(imageHeight){
	$('#rolling-banner').height(imageHeight);
	$('#prev, #next').height(imageHeight);
	$('#prev>img, #next>img').css('margin-top', imageHeight/2-16);
	$('#next').css('left', $('#rolling-banner').width()*1-50);
}

function onLoadMovieThumnail(image){
	var height = $(image).height();
	
	if(height != 0){
		$(image).parent().height(height);
	}
}

function fitVideoIconMiddle(image){
	var width = $(image).parent().width()*1;
	var height = $(image).parent().height()*1;
	
	if(width != 0){
		$(image).css('left',width/2-24);
	}
	
	if(height != 0){
		$(image).css('top',height/2-24);
	}
}

function getYoutubeId(youtubeUrl){
	var regExp = /^.*((youtu.be\/)|(v\/)|(\/u\/\w\/)|(embed\/)|(watch\?))\??v?=?([^#\&\?]*).*/;
	var youtubeUrl = youtubeUrl.match(regExp)[7];
	console.log(youtubeUrl);
	return youtubeUrl;
}
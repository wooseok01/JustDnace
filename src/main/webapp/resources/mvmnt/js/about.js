$(document).ready(function(){
	$('#menuIcon').attr('src','resources/mvmnt/images/header/menu-black.png');
	
	$('#menuIcon').click(menuIconClick);
	
	$(window).resize(function(){
		var imageHeight = $('#rolling-banner>div>img').height();
		$('#rolling-banner').height(imageHeight);
		fitArrowIcon(imageHeight);
	});
	
});

function isLoad(img){
	var imageHeight = $('#rolling-banner>div').height()*1;
	var imageWidth = $(this).width()*1;
	
	if(imageHeight != 0){
		console.log(imageHeight);
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
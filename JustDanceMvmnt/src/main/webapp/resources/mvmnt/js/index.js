$(document).ready(function(){
	var height = $(window).height();
	$('#main-info-page').height(height);
	
	var rollingWidth = $('#image-rolling-banner').width();
	var rollingHeight = $('#image-rolling-banner').height();
	$('#image-rolling-banner>ul>li').css('width', rollingWidth);
	$('#prev>img, #next>img').css('margin-top', rollingHeight*1/2-16);
	
	
	$('#next').css('left', rollingWidth*1-50);
	$(window).on('scroll',function(){
		var pos = $(this).scrollTop();
		var mainHeight = $('#main-info-page').height();
		var menuIcon = $('#menuIcon');
		if(pos + 45 >= mainHeight){
			$('#nav-fixed').css('color','black');
			if(menuIcon.attr('active') == 'no'){
				$('#menuIcon').attr('src','resources/mvmnt/images/menu-black.png');
			}else{
				$('#menuIcon').attr('src','resources/mvmnt/images/black-triangle.png');
			}
			$('#toggleMenu>ul>li>a').css('color','black');
		}else{
			$('#nav-fixed').css('color','white');
			if(menuIcon.attr('active') == 'no'){
				$('#menuIcon').attr('src','resources/mvmnt/images/menu-white.png');
			}else{
				$('#menuIcon').attr('src', 'resources/mvmnt/images/white-triangle.png');
			}
			$('#toggleMenu>ul>li>a').css('color','white');
		}
	});
	
	$('#icon').click(function(){
		$('html, body').stop().animate({
			scrollTop:$('#main-info-page').height() *1
		});
	});
	
	$('#menuIcon').click(function(){
		var menuIcon = $(this);
		var pos = $(window).scrollTop();
		var mainHeight = $('#main-info-page').height();
		if(menuIcon.attr('active') == 'no'){
			menuIcon.attr('active','yes');
			menuIcon.fadeOut('slow', function(){
				if(pos + 50 > mainHeight){
					menuIcon.attr('src', 'resources/mvmnt/images/black-triangle.png');
				}else{
					menuIcon.attr('src', 'resources/mvmnt/images/white-triangle.png');
				}
				
				$('#toggleMenu').fadeIn('slow', function(){});
				menuIcon.fadeIn('slow');
			});
		}else{
			menuIcon.attr('active','no');
			menuIcon.fadeOut('slow', function(){
				if(pos + 50 > mainHeight){
					menuIcon.attr('src','resources/mvmnt/images/menu-black.png');
				}else{
					menuIcon.attr('src','resources/mvmnt/images/menu-white.png');
				}
				
				$('#toggleMenu').fadeOut('slow');
				menuIcon.fadeIn('slow');
			});			
		}
	});
	
	$(window).resize(function(){
		var imageHeight = $('#image-rolling-banner>div>img').height();
		var rollingWidth = $('#image-rolling-banner').width();
		var rollingHeight = $('#image-rolling-banner').height();
		var height = $(window).height();
		
		$('#main-info-page').height(height);
		$('#image-rolling-banner').height(imageHeight);
		$('#next').css('left', rollingWidth*1-50);
		$('#prev>img, #next>img').css('margin-top', rollingHeight*1/2-16);
	});
	
});

function moveToMainPage(){
	location.href = 'http://localhost:8080/mvmnt/';
}
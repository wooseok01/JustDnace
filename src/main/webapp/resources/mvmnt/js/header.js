function headerColorChange() {

}

function menuMouseOut(){
	var menuIcon = $('#menuIcon');
	var pos = $(window).scrollTop();
	var mainHeight = $('#main-info-page').height();
	
	if($('#is-main').val() == 'yes'){
		menuIcon.fadeOut('slow', function(){
			if (pos + 50 > mainHeight) {
				menuIcon.attr('src', 'resources/mvmnt/images/header/menu-black.png');
			} else {
				menuIcon.attr('src', 'resources/mvmnt/images/header/menu-white.png');
			}
		});
	}else{
		menuIcon.fadeOut('slow', function(){
			menuIcon.attr('src', 'resources/mvmnt/images/header/menu-black.png');
		});
	}
	$('#toggleMenu').fadeOut('slow', function(){
		menuIcon.fadeIn('slow', function(){});		
	});
	
}

function menuMouseOver(){
	var menuIcon = $('#menuIcon');
	var pos = $(window).scrollTop();
	var mainHeight = $('#main-info-page').height();
	
	if($('#is-main').val() == 'yes'){
		menuIcon.fadeOut('slow', function(){
			if (pos + 50 > mainHeight) {
				menuIcon.attr('src',
						'resources/mvmnt/images/header/black-triangle.png');
				$('#toggleMenu>ul>li>a').css('color','black');
			} else {
				menuIcon.attr('src',
						'resources/mvmnt/images/header/white-triangle.png');
				$('#toggleMenu>ul>li>a').css('color','white');
			}	
		});
	}else{
		menuIcon.fadeOut('slow', function(){
			menuIcon.attr('src',
			'resources/mvmnt/images/header/black-triangle.png');
			
			$('#toggleMenu>ul>li>a').css('color','black');
		});
	}
	
	$('#toggleMenu').fadeIn('slow', function() {
		menuIcon.fadeIn('slow');
	});
}

function menuIconClick(plag) {

	var menuIcon = $('#menuIcon');
	var pos = $(window).scrollTop();
	var mainHeight = $('#main-info-page').height();
	var toggleMenu = $('#toggleMenu');
	
	if(plag == null){
		if(toggleMenu.attr('active') == 'none'){
			toggleMenu.attr('active','active');
			if(pos + 50 > mainHeight){
				menuIcon.attr('src','resources/mvmnt/images/header/black-triangle.png');
			}else{
				menuIcon.attr('src','resources/mvmnt/images/header/white-triangle.png');
			}
			
			toggleMenu.animate({
				'margin-top' : 0
			},500, function(){});
		}else{
			toggleMenu.attr('active','none');
			if(pos + 50 > mainHeight){
				menuIcon.attr('src','resources/mvmnt/images/header/menu-black.png');
			}else{
				menuIcon.attr('src','resources/mvmnt/images/header/menu-white.png');
			}
			
			toggleMenu.animate({
				'margin-top': '-1000px'
			},500, function(){});
		}
	}else{
		if(toggleMenu.attr('active') == 'none'){
			toggleMenu.attr('active','active');
			menuIcon.attr('src','resources/mvmnt/images/header/black-triangle.png');
			
			toggleMenu.animate({
				'margin-top' : '0px'
			}, 500, function(){});
		}else{
			toggleMenu.attr('active','none');
			menuIcon.attr('src','resources/mvmnt/images/header/menu-black.png');
			
			toggleMenu.animate({
				'margin-top' : '-1000px'
			}, 500, function(){});
		}
	}
	
}

function headerColorChange(){
	var pos = $(this).scrollTop();
	var mainHeight = $('#main-info-page').height();
	var menuIcon = $('#menuIcon');
	if(pos + 45 >= mainHeight){
		$('#nav-fixed').css('color','black');
		if(menuIcon.attr('active') == 'no'){
			$('#menuIcon').attr('src','resources/mvmnt/images/header/menu-black.png');
		}else{
			$('#menuIcon').attr('src','resources/mvmnt/images/header/black-triangle.png');
		}
		$('#toggleMenu>ul>li>a').css('color','black');
	}else{
		$('#nav-fixed').css('color','white');
		if(menuIcon.attr('active') == 'no'){
			$('#menuIcon').attr('src','resources/mvmnt/images/header/menu-white.png');
		}else{
			$('#menuIcon').attr('src', 'resources/mvmnt/images/header/white-triangle.png');
		}
		$('#toggleMenu>ul>li>a').css('color','white');
	}
	
	var hiddenVal = $('#hiddenVal').val();
	if(hiddenVal == 'hidden'){
		if(pos + 45 >= mainHeight)
			$('#nav-fixed').css('background-color', 'white');
		else
			$('#nav-fixed').css('background-color', 'transparent');
	}
}

function moveToMainPage(){
	location.href = '/mvmt/';
}

function headerBackground(){
	$('#nav-fixed').css({
		'background-color': 'white',
		'height' : '50px'
	});
}
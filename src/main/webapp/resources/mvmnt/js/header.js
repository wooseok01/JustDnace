function headerColorChange() {

}

function menuIconClick(plag) {

	var menuIcon = $('#menuIcon');
	var pos = $(window).scrollTop();
	var mainHeight = $('#main-info-page').height();
	
	if(plag == null){
		if (menuIcon.attr('active') == 'no') {
			menuIcon.attr('active', 'yes');
			menuIcon.fadeOut('slow', function() {
				if (pos + 50 > mainHeight) {
					menuIcon.attr('src',
							'resources/mvmnt/images/header/black-triangle.png');
				} else {
					menuIcon.attr('src',
							'resources/mvmnt/images/header/white-triangle.png');
				}

				$('#toggleMenu').fadeIn('slow', function() {
				});
				menuIcon.fadeIn('slow');
			});
			return;
		} else {
			menuIcon.attr('active', 'no');
			menuIcon.fadeOut('slow', function() {
				if (pos + 50 > mainHeight) {
					menuIcon.attr('src', 'resources/mvmnt/images/header/menu-black.png');
				} else {
					menuIcon.attr('src', 'resources/mvmnt/images/header/menu-white.png');
				}

				$('#toggleMenu').fadeOut('slow');
				menuIcon.fadeIn('slow');
			});
		}
	}else{
		if(menuIcon.attr('active') == 'no'){
			menuIcon.attr('active','yes');
			menuIcon.fadeOut('slow', function() {
				menuIcon.attr('src', 'resources/mvmnt/images/header/black-triangle.png');
					
				$('#toggleMenu>ul>li>a').css('color','black');
				$('#toggleMenu').fadeIn('slow', function() {});
				menuIcon.fadeIn('slow');
			});
		}else{
			menuIcon.attr('active','no');
			menuIcon.fadeIn('slow', function(){
				menuIcon.attr('src', 'resources/mvmnt/images/header/menu-black.png');
				
				$('#toggleMenu').fadeOut('slow', function(){
					menuIcon.fadeIn('slow');
				});
			});
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
	location.href = '/mvmnt/';
}

function headerBackground(){
	$('#nav-fixed').css({
		'background-color': 'white',
		'height' : '50px'
	});
}
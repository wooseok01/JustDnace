$(document).ready(function(){
	$('#menuIcon').attr('src','resources/mvmnt/images/header/menu-black.png');
	$('#nav-fixed>span').css('color','black');
	
	$('#menuIcon').click(menuIconClick);
	
	headerBackground();
	
	$('.dancer-img').each(function(){
		var imageHeight = $(this).parent().height()*1;
		$(this).parent().find('div').css('padding-top' ,imageHeight/2-12);
	});

});
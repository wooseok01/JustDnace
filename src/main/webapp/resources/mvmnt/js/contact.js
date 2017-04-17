$(document).ready(function(){
	headerBackground();
	$('#menuIcon').attr('src','resources/mvmnt/images/header/menu-black.png');
	$('#nav-fixed>span').css('color', 'black');
	
	$('#menuIcon').click(menuIconClick);
	
	$('.input').each(function(){
		var parentWidth = $(this).parent().width()*1;
		var labelWidth = $(this).parent().find('.formLabel').width()*1;
		
		$(this).width(parentWidth - labelWidth-10);
	});
	
	var parentWidth = $('#message').parent().width()*1;
	var labelWidth = $('#message').parent().find('#labelDiv').width()*1;
	console.log(parentWidth);
	console.log(labelWidth);
	
	$('#message').width(parentWidth - labelWidth - 10);
	googleMapInit();
	
});


function googleMapInit(){
	var myLatlng = new google.maps.LatLng(37.509740, 127.082878);
	
	var mapOptions = {
			zoom : 16,
			center : myLatlng,
			mapTypeId: google.maps.MapTypeId.ROADMAP
	}
	
	var map = 
		new google.maps.Map(
				document.getElementById('googleMap'), 
				mapOptions);
	
	var marker = new google.maps.Marker({
		position : myLatlng,
		map: map,
		title : 'JustdanceMVMNT'
	});
	
	var infowindow = new google.maps.InfoWindow({
		content : '<h4>JustdanceMVMNT</h4>',
		maxWidth : 300
	});
	
	infowindow.open(map, marker);
	
	
}
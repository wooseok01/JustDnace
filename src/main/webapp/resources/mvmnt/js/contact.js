$(document).ready(function(){
	headerBackground();
	$('#menuIcon').attr('src','resources/mvmnt/images/header/menu-black.png');
	$('#nav-fixed>span').css('color', 'black');
	
	$('#menuIcon').click(menuIconClick);
	$('#menuIcon, #toggleMenu').hover(menuMouseOver, menuMouseOut);
	$('.input').each(function(){
		var parentWidth = $(this).parent().width()*1;
		var labelWidth = $(this).parent().find('.formLabel').width()*1;
		
		$(this).width(parentWidth - labelWidth-10);
	});
	
	$(window).on('resize', function(){
		$('.input').each(function(){
			var parentWidth = $(this).parent().width()*1;
			var labelWidth = $(this).parent().find('.formLabel').width()*1;
			
			$(this).width(parentWidth - labelWidth-10);
		});
		var parentWidth = $('#message').parent().width()*1;
		var labelWidth = $('#message').parent().find('#labelDiv').width()*1;
		$('#message').width(parentWidth-labelWidth-10);
	});
	
	var parentWidth = $('#message').parent().width()*1;
	var labelWidth = $('#message').parent().find('#labelDiv').width()*1;
	
	$('#message').width(parentWidth - labelWidth - 10);
	googleMapInit();
	
	$('#sendBtn').click(function(){
		var name = $('#name').val();
		var email = $('#email').val();
		var title = $('#title').val();
		var message = $('#message').val();
		var emailExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		
		if(emailExp.test(email)){
			$('#loading-section').show();
			ajaxCall('./sendEmail', {
				name : name,
				email : email,
				title : title,
				message : message
			}, function(result){
				if(result == 'success!'){
					$('#contact-write-form').empty();
					div = $('<div></div>');
					div.attr('id','success-form');
					div.html('email send success! :)');
					div.css({
						'font-size' : '25px',
						'text-align' : 'center',
						'margin-top' : '30px',
						'margin-bottom' : '30px'
					});
					$('#contact-write-form').append(div);
					var height = $('#contact-section').parent().height()*1;
					$('#contact-write-form').height('auto');
				}else{
					alert('email send fail!\nplease contact justdancemvmt@gmail.com.');
					$('#loading-section').hide();
				}
			});
		}else{
			alert('please check your email!');
		}
		
	});
});

function ajaxCall(url,data, callback){
	$.ajax({
		url : url,
		type : 'POST',
		data : data,
		success : function(result){
			callback(result);
		},
		error : function(err){
			$('#loading-section').hide();
		}
		
	});
}

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
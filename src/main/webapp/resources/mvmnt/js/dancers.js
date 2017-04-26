$(document).ready(function(){
	$('#menuIcon').attr('src','resources/mvmnt/images/header/menu-black.png');
	$('#nav-fixed>span').css('color','black');
	
	$('#menuIcon').click(menuIconClick);
	$('#menuIcon, #toggleMenu').hover(menuMouseOver, menuMouseOut);
	
	headerBackground();
	
	$(window).on('resize', function(){
		$('.img-div').each(function(){
			var imgHight = $(this).find('.dancer-img').height()*1;
			$(this).height(imgHight);
		});
	});
	
	
	$('.img-div, .grid-title').click(function(){
		$('#layer').height($(window).height());
		  $('#layer').css({
			  top : $(document).scrollTop()
		  });
		var thisObj = $(this);
		var name;
		if(thisObj.attr('class') == 'img-div'){
			name = thisObj.find('.dancer-img').attr('name');
		}else{
			name = thisObj.parent().find('.img-div>img').attr('name');
		}
		
		if(name != ''){
			async.series([
			      function(callback){
			    	  callAjax('./careerList', {name : name}, 
			    			  function(result, callback){
					    		  var ul = $('#career-section>ul');
					    		  ul.empty();
					    		  for(var i=0; i<result.length; i++){
					    			  var li = $('<li></li>').html(result[i]);
					    			  ul.append(li);
					    		  }
					    		  
					    		  callback(null,'careerList-complete');
			    	  },callback);
			      }, function(callback){
			    	  callAjax('./personalData', {name:name}, function(result, callback){
			    		  var titleSection = $('#title-section>div');
			    		  titleSection.eq(0).html(result.bTitle);
			    		  titleSection.eq(1).html(result.bDescription);
			    		  $('#select-image>img').attr('src',
			    				  'resources/mvmnt/images/dancers/'+result.bFileName);
			    		  callback(null, 'personalData-complete');
			    	  }, callback);
			      }, function(callback){
			    	  callAjax('educationData', {name: name}, function(result, callback){
			    		  var html = '';
			    		  for(var i=0; i<result.length; i++){
			    			  html += result[i];
			    			  html += '<br>';
			    		  }
			    		  $('#education').html(html);
			    		  callback(null, 'education-complete');
			    	  }, callback);
			      }, function(callback){
			    	  $('#layer').fadeIn('slow', function(){
			    		  $('body').css({
			    			 height : $(window).height(),
			    			 'overflow' : 'hidden'
			    		  });
			    	  });
			      }], function(err, result){
						console.log(result);
			});
		}
	});
});



function callAjax(url, data, cb, callback){
	$.ajax({
		url : url,
		type : 'POST',
		data : data,
		success : function(result){
			cb(result, callback);
		},
		error : function(err){
			console.log(err);
		}
	});
}

function fadeOutClick(div){
	$('body').css({
		 height : 'auto',
		 'overflow' : 'scroll'
	  });
	$('#layer').fadeOut('slow', function(){});
}

function moreDescriptionClick(div){
	var gridDescription = $(div).parent().find('.grid-description');

	if($(div).html() == 'More ▼'){
		console.log('xx');
		gridDescription.css({
			'height' : 'auto',
			'line-clamp' : 'initial'
		});
		$(div).html('Less ▲');
	}else{
		gridDescription.css({
			'height' : '45px',
			'line-clamp' : '3'
		});
		$(div).html('More ▼');
	}
}
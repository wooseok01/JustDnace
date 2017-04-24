<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta HTTP-EQUIV='Pragma' ConTENT='no-cache'>
	
	<meta name="keyword" content="JUSTDANCE, JUSTDANCEMVMT, JUSTDANCEMOVEMENT, JUSTDANCE MOVEMENT, JUSTDANCE MVMT, 저스트댄스, 저스트댄스 무브먼트">
	<meta name="author" content="JUSTDANCE">
	<meta name="description" content="Just Dance is a Global Dance & Culture campagin Team. All art has transcended it's era with deep connection with each other,  which proposes the hyphothesis in creation of a new culture. Just Dance is to express all the art forms that we love by the Performance &  Media.   We want to sympathize with each other emotionally and show, joy and  anger together with sorrow and pleasure, by culture. 'Justdance' is a group of various unique artists. 'Drifterz Crew' represent  the group and is creating projects which magnificently display the beauty  of Korea in cooperation with Seoul Foundation for Arts and Culture, Korea  Tourism Organization, Ministry of Foreign Affairs, and Korea Foundation.">
	<meta name="Distribution" content="Bboy-Ducky">
	<meta name="Copyright" content="JUSTDANCE">
	<meta name="robots" content="index,follow" /> 
	<meta name="Generator" content="Eclipse-spring framework">
	
	<title>JUSTDANCEMVMT</title>
	
	<link rel="stylesheet" href="resources/mvmnt/css/index.css">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.cycle2/2.1.6/jquery.cycle2.js"></script>
	<script type="text/javascript" src="resources/mvmnt/js/index.js"></script>
</head>
<body>
	<input type="hidden" id="hiddenVal" value="hidden">
	<input type="hidden" id="is-main" value="yes">
	<jsp:include page="header.jsp"></jsp:include>
	<div id="main-info-page">
		<div id="bgPlayer">
			<video id="video" autoplay="autoplay" loop="loop" poster="resources/mvmnt/images/index/bgPicture.png">
				<source type="video/mp4" src="resources/mvmnt/movie/mainMovie.mp4" />
			</video>
		</div>
		
		<div id="icon-container">
			<div id="icon-section" >
				<i class="fa fa-angle-down" id="icon"></i>
			</div>
		</div>
	</div>
	<div id="photo-section">
		<div id="photo-section-title">MVMT</div>
		<div id="photo-section-devide">-</div>
		
		<div id="image-rolling-banner">
			<div class="cycle-slideshow"
				data-cycle-fx="scrollHorz" 
				data-cycle-timeout="0">
				<img alt="" src="resources/mvmnt/images/index/home-pic.png" onload="isLoad(this);">			
			</div>
		</div>
	</div>
	
	<div id="banner-description">
		<div id="first-description" >
			<div>Based at Here East in Queen Elizabeth Olympic Park and designed by architectural practice We Not I, Studio Wayne McGregor comprises three dance studios, including two of the largest in London, and a series of playful spaces in which to collaborate, make and create. The first arts organisation to be based on Queen Elizabeth Olympic Park, it is a place for making, developing creative practice, and collaboration across arts, science, technology and research</div>
			<div>Based at Here East in Queen Elizabeth Olympic Park and designed by architectural practice We Not I, Studio Wayne McGregor comprises three dance studios, including two of the largest in London, and a series of playful spaces in which to collaborate, make and create. The first arts organisation to be based on Queen Elizabeth Olympic Park, it is a place for making, developing creative practice, and collaboration across arts, science, technology and research</div>
		</div>
		<div id="second-description">
			<div>A cornerstone programme for Studio Wayne McGregor is FreeSpace, a major new artist development and community engagement programme which will support artists to explore innovation in new directions, form an artists’ incubation and innovation community, and provide inspiring learning opportunities led by professional practising artists to thousands of participants each year</div>
			<div>Based at Here East in Queen Elizabeth Olympic Park and designed by architectural practice We Not I, Studio Wayne McGregor comprises three dance studios, including two of the largest in London, and a series of playful spaces in which to collaborate, make and create. The first arts organisation to be based on Queen Elizabeth Olympic Park, it is a place for making, developing creative practice, and collaboration across arts, science, technology and research</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
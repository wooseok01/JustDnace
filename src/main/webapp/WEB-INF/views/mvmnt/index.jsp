<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JUSTDANCEMVMNT</title>

<link rel="stylesheet" href="resources/mvmnt/css/index.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.cycle2/2.1.6/jquery.cycle2.js"></script>
<script type="text/javascript" src="resources/mvmnt/js/index.js"></script>
</head>
<body>
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
		<div id="photo-section-title">JUSTDANCEMVMNT</div>
		<div id="photo-section-devide">-</div>
		
		<div id="image-rolling-banner">
			<div class="cycle-slideshow"
				data-cycle-fx="scrollHorz" 
				data-cycle-timeout="0"
				data-cycle-prev="#prev"
				data-cycle-next="#next">
				<img alt="" src="resources/mvmnt/images/index/bgPicture.png" onload="isLoad(this);">			
				<img alt="" src="resources/mvmnt/images/index/rolpic1.png" onload="isLoad(this);">			
			</div>
			<div id="leftIconArea">
				<div id="prev">
					<img alt="left-icon" src="resources/mvmnt/images/index/left-arrow.png">
				</div>
				<div id="next">
					<img alt="right-arrow" src="resources/mvmnt/images/index/right-arrow.png">
				</div>
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
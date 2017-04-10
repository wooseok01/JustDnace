<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JUSTDANCEMVMNT</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/3.0.3/normalize.css">
<link rel="stylesheet" 
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/mvmnt/css/index.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.cycle2/2.1.6/jquery.cycle2.js"></script>
<script type="text/javascript" src="resources/mvmnt/js/index.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div id="main-info-page">
		<div id="bgPlayer">
			<video id="video" autoplay="autoplay" loop="loop" poster="resources/mvmnt/images/bgPicture.png">
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
				<img alt="" src="resources/mvmnt/images/bgPicture.png">			
				<img alt="" src="resources/mvmnt/images/rolpic1.png">			
			</div>
			<div id="leftIconArea">
				<div id="prev">
					<img alt="left-icon" src="resources/mvmnt/images/left-arrow.png">
				</div>
				<div id="next">
					<img alt="right-arrow" src="resources/mvmnt/images/right-arrow.png">
				</div>
			</div>
		</div>
	</div>
	
	<footer>
		
	</footer>
</body>
</html>
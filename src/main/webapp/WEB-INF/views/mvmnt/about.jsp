<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="resources/mvmnt/css/about.css">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.cycle2/2.1.6/jquery.cycle2.js"></script>
	<script type="text/javascript" src="resources/mvmnt/js/about.js"></script>
	
	<title>JUSTDANCE</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div id="intro-about">
		<div>about-us</div>
		<div>-</div>
	</div>
	
	<div id="pircture-section">
		<div id="rolling-banner">
			<div class="cycle-slideshow" data-cycle-fx="scrollHorz" 
				data-cycle-timeout="0" data-cycle-prev="#prev" data-cycle-next="#next">
			
				<img alt="about-banner1" src="resources/mvmnt/images/about/about-rolling1.png" 
				onload="isLoad(this);">
				<img alt="about-banner2" src="resources/mvmnt/images/index/rolpic1.png" 
				onload="isLoad(this);">
			</div>
		</div>
		
		<div id="iconArea">
			<div id="prev">
				<img alt="left-arrow" src="resources/mvmnt/images/index/left-arrow.png">
			</div>
			<div id="next">
				<img alt="right-arrow" src="resources/mvmnt/images/index/right-arrow.png">
			</div>
		</div>
		
		<div id="text-area">
			<div></div>
		</div>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
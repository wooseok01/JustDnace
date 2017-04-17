<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="resources/mvmnt/css/about.css">
<link type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/redmond/jquery-ui.css" rel="stylesheet" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery.cycle2/2.1.6/jquery.cycle2.js"></script>
	
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>


<!-- bootstrap -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script type="text/javascript" src="resources/mvmnt/js/bootstrap.youtubepopup.js"></script>
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
				data-cycle-timeout="0">

				<img alt="about-banner1"
					src="resources/mvmnt/images/about/about-rolling1.png"
					onload="isLoad(this);"> 
			</div>
		</div>

		<!-- <div id="iconArea">
			<div id="prev">
				<img alt="left-arrow"
					src="resources/mvmnt/images/index/left-arrow.png">
			</div>
			<div id="next">
				<img alt="right-arrow"
					src="resources/mvmnt/images/index/right-arrow.png">
			</div>
		</div> -->
	</div>

	<div id="text-area">
		<div id="text-left">
			<div>
				<div class="text-title">AS LIKELY TO WORK WITH RADIOHEAD AS THE ROYAL BALLET OR WITH THE WHITE STRIPES AND JIM HENSON.'</div>
				<div class="text-divide">-</div>
				<div class="text-second-title">The NewYork Times</div>
				<div class="text-description">Born in 1970, Wayne McGregor CBE is a multi award winning British choreographer and director, internationally renowned for trailblazing innovations in performance that have radically redefined dance in the modern era. Driven by an insatiable curiosity about movement and its creative potentials, his experiments have led him into collaborative dialogue with an array of artistic forms, scientific disciplines, and technological interventions. The startling and multi-dimensional works resulting from these interactions have ensured McGregor’s position at the cutting edge of contemporary arts for over two decades. </div>
				<div class="text-movie-data">
					<img class="youtube" rel="QjOCXcZ_r3w" alt="player-thumnail" onload="onLoadMovieThumnail(this);"
					src="resources/mvmnt/images/index/bgPicture.png">
					<img alt="player-white" rel="QjOCXcZ_r3w" class="video-icon" onload="fitVideoIconMiddle(this);" 
					src="resources/mvmnt/images/about/video-white.png">
					<input type="hidden" class="urlValue" value="https://www.youtube.com/watch?v=QjOCXcZ_r3w&t=2s">
				</div>
				<div class="text-movie-small-description">TED Talk - A Choreographer's Creative Process in Real Time, Courtesy of TED Conferences LLC</div>
				<div class="text-movie-large-description">Born in 1970, Wayne McGregor CBE is a multi award winning British choreographer and director, internationally renowned for trailblazing innovations in performance that have radically redefined dance in the modern era. Driven by an insatiable curiosity about movement and its creative potentials, his experiments have led him into collaborative dialogue with an array of artistic forms, scientific disciplines, and technological interventions. The startling and multi-dimensional works resulting from these interactions have ensured McGregor’s position at the cutting edge of contemporary arts for over two decades.</div>
			</div>
			
		</div>
		<div id="text-right">
			<div>
				<div class="text-title">AS LIKELY TO WORK WITH RADIOHEAD AS THE ROYAL BALLET OR WITH THE WHITE STRIPES AND JIM HENSON.'</div>
				<div class="text-divide">-</div>
				<div class="text-second-title">The NewYork Times</div>
				<div class="text-description">Born in 1970, Wayne McGregor CBE is a multi award winning British choreographer and director, internationally renowned for trailblazing innovations in performance that have radically redefined dance in the modern era. Driven by an insatiable curiosity about movement and its creative potentials, his experiments have led him into collaborative dialogue with an array of artistic forms, scientific disciplines, and technological interventions. The startling and multi-dimensional works resulting from these interactions have ensured McGregor’s position at the cutting edge of contemporary arts for over two decades. </div>
				<div class="text-movie-data">
					<img class="youtube" rel="QjOCXcZ_r3w" alt="player-thumnail" onload="onLoadMovieThumnail(this);"
					src="resources/mvmnt/images/index/bgPicture.png">
					<img alt="player-white" rel="QjOCXcZ_r3w" class="video-icon" onload="fitVideoIconMiddle(this);" 
					src="resources/mvmnt/images/about/video-white.png">
					<input type="hidden" class="urlValue" value="https://www.youtube.com/watch?v=QjOCXcZ_r3w&t=2s">
				</div>
				<div class="text-movie-small-description">TED Talk - A Choreographer's Creative Process in Real Time, Courtesy of TED Conferences LLC</div>
				<div class="text-movie-large-description">Born in 1970, Wayne McGregor CBE is a multi award winning British choreographer and director, internationally renowned for trailblazing innovations in performance that have radically redefined dance in the modern era. Driven by an insatiable curiosity about movement and its creative potentials, his experiments have led him into collaborative dialogue with an array of artistic forms, scientific disciplines, and technological interventions. The startling and multi-dimensional works resulting from these interactions have ensured McGregor’s position at the cutting edge of contemporary arts for over two decades.</div>
			</div>
		</div>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
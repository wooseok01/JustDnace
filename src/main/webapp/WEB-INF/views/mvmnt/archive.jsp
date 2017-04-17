<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="resources/mvmnt/css/archive.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://www.youtube.com/iframe_api"></script>
	<script type="text/javascript" src="resources/mvmnt/js/archive.js"></script>
	<title>JUSTDANCEMVMNT</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div id="intro-archive">
		<div>Archive</div>
		<div>-</div>
	</div>
	<section id="content-container">
		<div id="text-area">
			<div>Uppercut Danseteater spiller forestillinger for alle aldre pa vores egen scene i Dansekpellet (Kobenhavn NV), i resten af landet og internationalt.</div>
			<div>Her kan du se en oversigt over, hvilke forestillinger vi har pa repetroiret i denne og den kommende season.</div>
			<div>Klik pa den enkelte forestilling, for at laese mere om spilletider, priser og tekniske speckifikationer.</div>
		</div>
		
		<div id="grid-container">
			<div class="player-container">
				<div class="player-thumnail">
					<img alt="grid-thunmail" src="resources/mvmnt/images/archive/archive-7emotions.png" onload="fitXY(this);">
					<img alt="player-white" class="video-icon"  
					src="resources/mvmnt/images/about/video-white.png">
					<iframe src="https://www.youtube.com/embed/nOn9Q4hlTUE" frameborder="0" allowfullscreen showinfo="0"></iframe>
				</div>
				<div class="player-description">
					<div class="description-title">Project 01 : 7 Emotions</div>
					<div class="description">Med heit tempo, kraftfuld breakdance og fysisk teater, puster Uppercut Dansetear nyt liv iH. C.. Andersens kiassiske eventyr, Den grimme AElling. Her underseger fire unge, mandilge dansere, hvordan man laeter at sta ved og acceptere sig selv, som den man er, ogsa nar verden kigger skaevt til en.</div>
				</div>
			</div>
			
			<div class="player-container">
				<div class="player-thumnail">
					<img alt="grid-thunmail" src="resources/mvmnt/images/archive/archive-8monsters.png" onload="fitXY(this);">
					<img alt="player-white" class="video-icon"  
					src="resources/mvmnt/images/about/video-white.png">
					<iframe src="https://www.youtube.com/embed/ANb18xxZ8nc" frameborder="0" allowfullscreen></iframe>
				</div>
				<div class="player-description">
					<div class="description-title">Proejct 02 : 8Monsters</div>
					<div class="description">Med heit tempo, kraftfuld breakdance og fysisk teater, puster Uppercut Dansetear nyt liv iH. C.. Andersens kiassiske eventyr, Den grimme AElling. Her underseger fire unge, mandilge dansere, hvordan man laeter at sta ved og acceptere sig selv, som den man er, ogsa nar verden kigger skaevt til en.</div>
				</div>
			</div>
			
			<div class="player-container">
				<div class="player-thumnail">
					<img alt="grid-thunmail" src="resources/mvmnt/images/archive/archive-cheonsangmudo.png" onload="fitXY(this);">
					<img alt="player-white" class="video-icon"  
					src="resources/mvmnt/images/about/video-white.png">
					<iframe src="https://www.youtube.com/embed/ANb18xxZ8nc" frameborder="0" allowfullscreen></iframe>
				</div>
				<div class="player-description">
					<div class="description-title">Project 03 : Cheonsangmudo</div>
					<div class="description">Med heit tempo, kraftfuld breakdance og fysisk teater, puster Uppercut Dansetear nyt liv iH. C.. Andersens kiassiske eventyr, Den grimme AElling. Her underseger fire unge, mandilge dansere, hvordan man laeter at sta ved og acceptere sig selv, som den man er, ogsa nar verden kigger skaevt til en.</div>
				</div>
			</div>
			
			<div class="player-container">
				<div class="player-thumnail">
					<img alt="grid-thunmail" src="resources/mvmnt/images/archive/archive-whiteCladFolk.png" onload="fitXY(this);">
					<img alt="player-white"  class="video-icon"  
					src="resources/mvmnt/images/about/video-white.png">
					<iframe src="https://www.youtube.com/embed/I3canLcuvTw" frameborder="0" allowfullscreen ></iframe>
				</div>
				<div class="player-description">
					<div class="description-title">Project 04 : White Clad Folk</div>
					<div class="description">Med heit tempo, kraftfuld breakdance og fysisk teater, puster Uppercut Dansetear nyt liv iH. C.. Andersens kiassiske eventyr, Den grimme AElling. Her underseger fire unge, mandilge dansere, hvordan man laeter at sta ved og acceptere sig selv, som den man er, ogsa nar verden kigger skaevt til en.</div>
				</div>
			</div>
			
			<div class="player-container">
				<div class="player-thumnail">
					<img alt="grid-thunmail" src="resources/mvmnt/images/archive/archive-arirang.png" onload="fitXY(this);">
					<img alt="player-white" class="video-icon"  
					src="resources/mvmnt/images/about/video-white.png">
					<iframe src="https://www.youtube.com/embed/57tiQrEA9OA" frameborder="0" allowfullscreen></iframe>
				</div>
				<div class="player-description">
					<div class="description-title">Project 05 :  Arirang Rhapsody</div>
					<div class="description">Med heit tempo, kraftfuld breakdance og fysisk teater, puster Uppercut Dansetear nyt liv iH. C.. Andersens kiassiske eventyr, Den grimme AElling. Her underseger fire unge, mandilge dansere, hvordan man laeter at sta ved og acceptere sig selv, som den man er, ogsa nar verden kigger skaevt til en.</div>
				</div>
			</div>
			
		</div>
	</section>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
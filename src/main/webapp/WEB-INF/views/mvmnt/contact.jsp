<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="resources/mvmnt/css/contact.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBsBy1zOEc8d1buJnhe5fgqkYhCo6kbFxo&callback=initMap"></script>
	<script type="text/javascript" src="resources/mvmnt/js/contact.js"></script>
	<title>JUSTDANCEMVMNT</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div id="intro-contact">
		<div>Contact</div>
		<div>-</div>
	</div>
	<div id="contact-section">
		<div id="contact-information">
			<div>
				<div>I'm a paragraph. Click here to add your own text and edit me. It's easy. Just click "Edit Text" or double click me to add your own content and make changes to the font.</div>
			</div>
			<!-- <div>
				<div>3F, 214-18, JAMSIL-DONG, SONGPA-GU, SEOUL, SOUTH KOREA</div>
			</div>
			<div>
				<div>
					<b>TEL</b>: +82-10-3539-1234 <b>EMAIL</b>: justdancemovement@<span>gmail.com</span>
				</div>
			</div> -->
		</div>
		<div id="contact-write-form">
			<div id="nameAndEmail">
				<div id="nameForm">
					<label class="formLabel">Name</label>
					<input type="text" id="name" class="input">
				</div>
				<div id="emailForm">
					<label class="formLabel">Email</label>
					<input id="email" type="text" class="input">
				</div>
			</div>
			<div id="onlyTitle">
				<div id="titleForm">
					<label class="formLabel">Title</label>
					<input id="title" type="text" class="input">
				</div>
			</div>
			<div id="onlyMessage">
				<div id="messageForm">
					<div id="labelDiv">Message</div>
					<textarea rows="5" cols="20" id="message" draggable="false" ></textarea>
				</div>
			</div>
			<input id="sendBtn" type="button" value="Send">
			<div id="loading-section" >
				<img alt="loading-image" src="resources/mvmnt/images/LoadingImage.gif"><br>
				send email! please wait!
			</div>
		</div>
		
		<div id="googleMap"></div>
		<div id="map-description">
			<div id="company-description">&copy; 2017 by Justdance</div>
			<div id="address-description">/36, Olympic-ro 12-gil, Songpa-gu, Seoul, Republic of Korea/</div>
			<div id="email-description">justdancemovement@gmail.com</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
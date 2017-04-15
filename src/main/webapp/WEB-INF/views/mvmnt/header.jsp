<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="resources/mvmnt/css/header.css">
	<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/3.0.3/normalize.css">
	<link rel="stylesheet" 
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script type="text/javascript" src="resources/mvmnt/js/header.js"></script>
</head>
<body>
	<nav id="nav-fixed" class="layerFirst">
			<img id="menuIcon" alt="menu-icon" 
			src="resources/mvmnt/images/header/menu-white.png" active="no"> 
			<span onclick="moveToMainPage()">JUSTDANCEMVMNT</span>
			<div id="toggleMenu">
				<ul>
					<li><a href="/mvmnt">Home</a></li>
					<li><a href="./about">About</a></li>
					<li><a href="./archive">Archive</a></li>
					<li><a href="./dancers">Dancers</a></li>
					<li><a href="./contact">Contact</a></li>
				</ul>
			</div>
		</nav>
</body>
</html>
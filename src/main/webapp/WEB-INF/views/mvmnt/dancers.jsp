<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/redmond/jquery-ui.css" rel="stylesheet" />
	<link rel="stylesheet" href="resources/mvmnt/css/dancers.css">
	
	<script src="//code.jquery.com/jquery-1.10.2.js"></script>
	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/async/2.3.0/async.js"></script>
	<script type="text/javascript" src="resources/mvmnt/js/dancers.js"></script>
	<title>JUSTDANCEMVMT</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div id="intro-archive">
		<div>Dancers</div>
		<div>-</div>
	</div>
	
	<ul id="archive-section">
		<c:forEach var="dancer" items="${dancerList}">
			<li class="grid-cell">
				<div class="grid-content">
					<div class="img-div">
						<img alt="grid-pic" class="dancer-img" 
						src="resources/mvmnt/images/dancers/${dancer.bFileName}" name="${dancer.bName}">
					</div>
					
					<div class="grid-title">${dancer.bTitle}</div>
					<div class="grid-description">
						${dancer.bDescription}
					</div>
					<div class="grid-more" onclick="moreDescriptionClick(this);">More ▼</div>
				</div>
			</li>
		</c:forEach>
	</ul>
	
	<div id="layer" onclick="fadeOutClick(this);">
		<div id="layer-container">
			<div>
				<div id="image-section">
					<div id="select-image">
						<img alt="select-image" src="resources/mvmnt/images/dancers/Bboy-Ducky.png">
					</div>
					<div id="title-section">
						<div>Ducky (Founder of JUSTDANCE)</div>
						<div>Organizations representing career </div>
						<div id="education">2013 Graduated from Korean Traditional Percussion at Chung-Ang University</div>
					</div>
				</div>
				<div id="career-section">
					<div>Career</div>
					<ul>
						
					</ul>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
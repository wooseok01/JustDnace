<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="resources/mvmnt/css/dancers.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript" src="resources/mvmnt/js/dancers.js"></script>
	<title>JUSTDANCEMVMNT</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div id="intro-archive">
		<div>Dancers</div>
		<div>-</div>
	</div>
	
	<div id="archive-section">
		<c:forEach var="dancer" items="${dancerList}">
			<div class="grid-cell">
				<div class="grid-content">
					<div class="img-div">
						<img alt="grid-pic" class="dancer-img" 
						src="resources/mvmnt/images/dancers/${dancer.bFileName}" name="${dancer.bName}">
					</div>
					
					<div class="grid-title">${dancer.bTitle}</div>
					<div class="grid-description">
						${dancer.bDescription}
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
	<div>
		
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
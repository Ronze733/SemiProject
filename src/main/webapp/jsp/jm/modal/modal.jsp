<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/jm/modal.css">
</head>
<body>
<div>
이런 저런것
</div>

	<div id="welcomeModal" class="modal">
    	<div class="modal-content">
    		<img alt="" src="./img/jm/modal/welcomemodal.png" class="modal-img">
    	</div>
    	<div style="display: flex; width: 398px">
    		<div style="margin-left: 145px">
		    	<span class="close" id="closeTodayModalButton">오늘 하루 더 이상 열지 않기 &times;</span>
    		</div>
    		<div style="margin-left: 30px">
		      	<span class="close" id="closeModalButton">닫기 &times;</span>	
    		</div>
    	</div>
	</div>
<script src="./js/jm/modal/modal.js"></script>
</body>
</html>
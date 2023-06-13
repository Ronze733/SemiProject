<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/reset.css">
<link rel="stylesheet" href="./css/index.css">
<link rel="stylesheet" href="./css/jm/event.css">
<link rel="stylesheet" href="./css/jh/review.css">
<link rel="stylesheet" href="./css/jy/recommend.css">
<title>South Korea Travel Controller</title>
</head>
<body>
	<div class="container">
		<div class="main-container">
			<div class="main-header">
				<div class="main-header-logo">
					<div>
						<img alt="" src="./img/jy/SKTC.png">
					</div>
					<div>SKTC</div>
				</div>
				<div class="main-header-menu">
					<div>이벤트</div>
					<div>여행 후기</div>
					<div>고객 게시판</div>
				</div>
				<div class="main-header-login">
					회원가입
					<div><jsp:include page="${LoginPage}"></jsp:include></div>
				</div>
			</div>
			<div><jsp:include page="${contentPage}"></jsp:include></div>
			<div class="main-footer">
				<div class="main-footer-box">
					<div>
						<img alt=""	src="./img/jy/SKTC.png">
					</div>
					<div>© 2023 South Korea Travel Controller. All rights
						reserved</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>


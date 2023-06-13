<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<div>룰렛</div>
		<div id="eventRoulette">
			<div class="eventRoulette-roulette-outer">
				<div class="eventRoulette-roulette-pin"></div>
				<div class="eventRoulette-roulette">
					<!-- 값 영역 -->
					<div class="eventRoulette-roulette-item-wrapper">
						<div class="eventRoulette-roulette-item"></div>
					</div>
					
					<!-- 선 영역 -->
					<div class="eventRoulette-roulette-line-wrapper">
						<div class="eventRoulette-roulette-line"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<button onclick="handleButtonClick();">추첨!</button>
	
	<script src="https://unpkg.com/vue@next"></script>
	<script src=""></script>
	
</body>
</html>
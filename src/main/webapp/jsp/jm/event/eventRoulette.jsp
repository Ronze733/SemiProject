<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/jm/roulette.css">
</head>
<body>
	<div>
		<div>룰렛</div>
		<div id="eventRoulette">
			<div class="eventRoulette-roulette-outer">
				<div class="eventRoulette-roulette-pin"></div>
				<div class="eventRoulette-roulette" v-bind:style="rouletteStyle">
					<!-- 값 영역 -->
					<div class="eventRoulette-roulette-item-wrapper">
						<div class="eventRoulette-roulette-item" v-for="(item, index) in items"
                                v-bind:style="itemStyles[index]">{{item.value}}</div>
					</div>
					
					<!-- 선 영역 -->
					<div class="eventRoulette-roulette-line-wrapper">
						<div class="eventRoulette-roulette-line" v-for="(item, index) in items"
                                v-bind:style="lineStyles[index]"></div>
					</div>
				</div>
			</div>
			<button class="eventRoulette-play-btn" v-on:click="play" v-bind:disabled="buttonDisabled">추첨!</button>
			<ul>
				<li v-for="(h,idx) in history">{{h}}</li>
			</ul>
		</div>
	</div>
	
	
	<script src="https://unpkg.com/vue@next"></script>
	<script src="./js/jm/event/roulette.js"></script>
	
</body>
</html>
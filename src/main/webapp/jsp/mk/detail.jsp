<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="C" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/mk/detail.css">

</head>

<body>
	
	<div class="detail-container">
		<div class="detail-main">
		<div class="detail-main-titleline">
		<div class="detail-main-title">불국사</div>
		<div class="detail-main-area">경주</div>
		</div>
		<div class="detail-main-informatoin">
	 		<div class="detail-main-img" >
	 			<img id="detail-place_img" alt="" src="./img/mk/불국사.jpg">
	 		</div>
	 		<div class="detail-main-text">
	 			<h2>상세정보</h2>
	 		</div>
	 		<div class="detail-main-explain">
	 			불국정토를 속세에 건설하겠다는 야심찬 통일신라의 꿈을 드러내는 건축물로, 
	 			이름인 불국사는 불국정토에서 유래한 호국 사찰이다. 
	 			황룡사가 거대한 규모로 유명한 절이라면 불국사는 치밀한 구성의 완성도와 아름다움으로 유명한 절이다. 
	 			다만 불국사도 전성기인 신라~고려시대에는 지금의 8배에 달하는 규모의 대사찰이었으며, 
	 			세월을 거치면서 파괴되고 복원하는 과정에서 규모가 줄어든 것이다. 
	 			오늘날의 불국사는 조선 영조 때 복원된 불국사에 기인한다.
	 		</div>
	 	</div>
 		</div>
 		<div class="detail-weather">
	 		<div class="detail-weather-title">날씨</div>
	 		<div class="detail-wheatehr-week"> 
		 		 <div class="detail-weahter-week_date" >Today</div> 
		 		 <div class="detail-weather-week_date"  >day+1</div> 
		 		 <div class="detail-weather-week_date"  >day+2</div> 
		 		 <div class="detail-weather-week_date">day+3</div> 
		 		 <div class="detail-weather-week_date" >day+4</div> 
	 		</div> 
	 		<div class="detail-weather-weeklyWeather"> 
	 		<div id="detail-weather-dateWeatherDetail">
	 		1맑음
	 		20도
	 		30%
	 		8m/s
	 		</div> 
	 		<div id="detail-weather-dateWeatherDetail">
	 		2
	 		</div> 
	 		<div id="detail-weather-dateWeatherDetail">
	 		3
	 		</div> 
	 		<div id="detail-weather-dateWeatherDetail">
	 		4
	 		</div> 
	 		<div id="detail-weather-dateWeatherDetail">
	 		5
	 		</div> 
	 		</div>
 		</div>
		<div class="detail-place">
			<div class="detail-place-root"> 오시는길</div>
			<div class="detail-place-addr"> 주소: </div>
			<div class="detail-place-map"> 지도

			</div>
		</div>
	</div>
</body>
</html>
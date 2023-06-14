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
		<div class="detail-main-title">명소 이름</div>
		<div class="detail-main-informatoin">
	 		<div class="detail-main-img" > <img id="detail-place_img" alt="" src="./img/mk/불국사.jpg"> </div>
	 		<div class="detail-main-explain">상세 설명</div>
	 	</div>
 		</div>
 		<div class="detail-weather">
	 		<div class="detail-weather-title">날씨</div>
	 		<div class="detail-week"> 
		 		 <div class="detail-week-date">일</div> 
		 		 <div class="detail-week-date">월</div> 
		 		 <div class="detail-week-date">화</div> 
		 		 <div class="detail-week-date">수</div> 
		 		 <div class="detail-week-date">목</div> 
		 		 <div class="detail-week-date">금</div> 
		 		 <div class="detail-week-date">토</div>  
	 		</div> 
	 		<div class="detail-weather-weatherAll">
	 		<div class="detail-weather-currentWeather"> 기상 상황 </div>
	 		<div class="detail-weather-currentWeather">기온</div>
	 		<div class="detail-weather-currentWeather">습도</div>
	 		<div class="detail-weather-currentWeather">풍속</div>
 		</div>
 		</div>
		<div class="detail-place">
			<div class="detail-place-root">오시는길</div>
			<div class="detail-place-addr">주소: </div>
			<div class="detail-place-map">지도

			</div>
		</div>
	</div>
</body>
</html>
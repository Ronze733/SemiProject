<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="C" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/mk/detail.css">
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8f818416cdc1d84e70d4b7d23e7f86e3&libraries=services"></script>
</head>

<body>
	
	<div class="detail-container">
		<div class="detail-main">
			<div class="detail-main-titleline">
			<div class="detail-main-title">${placeInfo.p_name }</div>
			<div class="detail-main-area">${placeInfo.p_category3}</div>
			</div>
			<div class="detail-main-informatoin">
	 			<div class="detail-main-img" >
	 				<C:if test="${placeInfo.p_id < 28 }">
	 					<img id="detail-place_img" alt="" src="./img/mk/${placeInfo.p_pic }">
	 				</C:if>
	 				<C:if test="${placeInfo.p_id >= 28 }">
	 					<img id="detail-place_img" alt="" src="${placeInfo.p_pic }">
	 				</C:if>
	 			</div>
	 			<div class="detail-main-text">
	 				<h2>상세정보</h2>
	 			</div>
	 			<div class="detail-main-explain">
	 				${placeInfo.p_explain}
	 			</div>
	 		</div>
 		</div>
 		<div class="detail-weather-mk">
	 		<div class="detail-weather-title">날씨</div>
	 			<div class="detail-weather-recent">
	 				<div class="detail-weather-option">
	 					<C:forEach items="${weathers }" var="w" varStatus="loop">
	 		 			<div class="detail-weather-optiontext"> 
	 						<C:choose>
	 						<C:when test="${loop.index ==0 }">오늘</C:when>
	 						<C:when test="${loop.index ==1 }">내일</C:when>
	 						<C:when test="${loop.index ==2 }">모레</C:when>
	 						</C:choose>
	 		 			<div id="detail-weather-weatherAll">
	 		 				<img alt="" src="https://openweathermap.org/img/wn/${w.icon }@2x.png"> <br>
	 		 				${w.condition }<br>
	 		 				강수확률 ${w.pop * 100 } %<br>
	 						체감온도 ${w.feelTemp } °C<br>
	 						최저 기온 ${w.minTemp } °C<br>
	 						최고 기온  ${w.maxTemp } °C<br>
	 						습도 ${w.humidity } %<br>
	 						풍속 ${w.windSpeed } m/s
	 		 			</div> 
	 					</div>
	 					</C:forEach>
	 				</div>
	 			</div>
	 		</div>
		<div class="detail-place">
			<div class="detail-place-root"> 오시는길</div>
			<input type="hidden" id="param" value="${placeInfo.p_addr }">
			<div id="map-mk" style="width:90%;height:400px;margin-left: 5%;"></div>
	
				<script type="text/javascript">
					let place = document.getElementById('param')?.value;
					let container = document.getElementById('map-mk');
					let options = {
							center: new kakao.maps.LatLng(35.790402, 129.332103),
							level: 7
					}
		
					let map = new kakao.maps.Map(container, options);
					console.log(place);
		
					let geocoder = new kakao.maps.services.Geocoder();
		
					geocoder.addressSearch(place, function(result, status){
		
						if (status === kakao.maps.services.Status.OK) {
			       			 var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
			       			 var marker = new kakao.maps.Marker({
			         			   map: map,
			          			  position: coords
			       			 });
			       			 var infowindow = new kakao.maps.InfoWindow({
			         			   content: '<div style="width:150px;text-align:center;padding:6px 0;">'+ place +'</div>'
			        			});
			        			infowindow.open(map, marker);
			        			map.setCenter(coords);
			    			} 
					})
				</script>
			<div class="detail-place-addr"> 주소: ${placeInfo.p_addr }</div>
				</div>
	</div>
</body>
</html>
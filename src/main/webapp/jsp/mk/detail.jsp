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
	 	<div class="detail-weather-recent">
	 		<div class="detail-weather-option">
	 		 	<div class="detail-weather-optiontext"> 오늘 날씨</div> 
	 		 		아이콘<br>
	 		 		기상 상태<br>
	 		 		강수확률<br>
	 				체감온도<br>
	 				최저 기온/최고 기온<br>
	 				습도<br>
	 				풍향
	 				풍속
	 			<div class="detail-weather-optiontext"> 내일 날씨</div>
	 				 아이콘<br>
	 				 기상 상태 ${w.condition }<br>
	 				 강수확률<br>
	 				 체감온도<br>
	 				최저 기온${w.mintemp }/최고 기온${w.maxtemp }<br>
	 				습도 ${w.humidity }<br>
	 				풍향
	 				풍속${w.windSpeed }
	 			<div class="detail-weather-optiontext"> 모레 날씨</div>
	 				 아이콘<br>
	 				 기상 상태<br>
	 				 강수확률<br>
	 				 체감온도<br>
	 				최저 기온/최고 기온<br>
	 				습도<br>
	 				풍향
	 				풍속
	 		</div>
	 	</div>
	 </div>
		<div class="detail-place">
			<div class="detail-place-root"> 오시는길</div>
			<div class="detail-place-addr"> 주소: 경상북도 경주시 불국로 385 불국사 </div>
			<input type="hidden" id="param" value="${param.place }">
	<div id="map" style="width:500px;height:400px;"></div>
	
	<script type="text/javascript">
		let place = document.getElementById('param')?.value;
		let container = document.getElementById('map');
		let options = {
				center: new kakao.maps.LatLng(35.790402, 129.332103),
				level: 5
		}
		
		let map = new kakao.maps.Map(container, options);
		console.log(place);
		
		let geocoder = new kakao.maps.services.Geocoder();
		
		geocoder.addressSearch(place, function(result, status){
			 if (status === kakao.maps.services.Status.OK) {

			        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
			     	// 정상적으로 검색이 완료됐으면
			        // 결과값으로 받은 위치를 마커로 표시합니다
			        var marker = new kakao.maps.Marker({
			            map: map,
			            position: coords
			        });

			        // 인포윈도우로 장소에 대한 설명을 표시합니다
			        var infowindow = new kakao.maps.InfoWindow({
			            content: '<div style="width:150px;text-align:center;padding:6px 0;">'+ place +'</div>'
			        });
			        infowindow.open(map, marker);

			        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
			        map.setCenter(coords);
			    } 
		})
		
	</script>
			</div>
			</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="../../../AdminC" method="post" enctype="multipart/form-data">
		<input type="file" name="pic"> 사진<br>
		<input name="placeName"> 장소명<br>
		<input name="placeAddr"> 도로명 주소<br>
		Category1
		<input type="checkbox" id="cotegory1-family" name="category1" value="가족">
			<label for="category1-family">가족</label>
		<input type="checkbox" id="cotegory1-couple" name="category1" value="연인">
			<label for="category1-couple">연인</label>
		<input type="checkbox" id="cotegory1-friend" name="category1" value="친구">
			<label for="category1-friend">친구</label>
		<br>
		Category2
		<input type="checkbox" id="category2-mountain" name="category2" value="산">
			<label for="category2-mountain">산</label>
		<input type="checkbox" id="category2-sea" name="category2" value="바다">
			<label for="category2-sea">바다</label>
		<input type="checkbox" id="category2-valley" name="category2" value="계곡">
			<label for="category2-valley">계곡</label>
		<br>
		Categroy3
		<select name="category3">
			<option value="서울"> 서울
			<option value="부산"> 부산
			<option value="대구"> 대구
			<option value="인천"> 인천
			<option value="광주"> 광주
			<option value="대전"> 대전
			<option value="울산"> 울산
			<option value="경기도"> 경기도
			<option value="충청도"> 충청도
			<option value="경상도"> 경상도
			<option value="전라도"> 전라도
			<option value="강원도"> 강원도
			<option value="제주도"> 제주도
		</select>
		<br>
		<input type="text" name="placeExplain"> 장소 설명 <br>
		<input name="placeAddr2"> 영어 주소(<a href="https://openweathermap.org/weathermap?basemap=map&cities=true&layer=temperature&lat=37.5692&lon=126.9860&zoom=5" target="_blank">여기</a>에서 존재 하는지 확인 후 없으면 근처 위치로)
		<br>
		<button>등록</button>
	</form>
</body>
</html>
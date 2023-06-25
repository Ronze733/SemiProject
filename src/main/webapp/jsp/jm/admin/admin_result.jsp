<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<img alt="" src="${place.placePic }"><br>
	${place.placeName }<br>
	${place.placeAddr }<br>
	${place.placeCategory1 }<br>
	${place.placeCategory2 }<br>
	${place.placeCategory3 }<br>
	${place.placeExplain }<br>
	${place.placeAddr2 }<br>
	<span>사진과 모든 것이 잘 나온다면 등록 성공!</span>
	<button onclick="location.href='../../../AdminC'">돌아가기</button>
</body>
</html>
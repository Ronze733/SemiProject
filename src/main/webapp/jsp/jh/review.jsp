<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">	
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/jh/review.css">
</head>
<body>
	<div class="review-container">
	
		<div class="review-title">
			당신의 이야기를 들려주세요.
		</div>
		<div >
   	 		<form action="ReviewC" method="GET">
   	 			<div>
       				<input class="review-search" type="text" name="keyword" placeholder="검색어를 입력하세요">			
       			 	<button class="review-searchbutton" type="submit">search</button>  		
       			</div>
    		</form>
		</div>
		<div class="review-write">
			<div class="review-write-word">
				<div class="review-write-big">
					후기를 알려주세요.
				</div>
				<div class="review-write-small">
					추첨을 통해 소정의 상품을 증정드립니다.
				</div>
			</div>
			<div class="review-button">
				<div>
					<img alt="" src="">
				</div>
				<div class="review-button-link">
					<a href="ReviewWriteC">후기작성</a>
				</div>
			</div>
		</div>
		<div class="review-img">
		<c:forEach var="r" items="${reviews }">
			<div>
				<img id="reviewImg" src="img/${r.review_pic }">
			</div>
			<div>
				<div>타이틀</div>
				<div>${r.review_title }</div>
			</div>
			<div>
				<div>body</div>
				<div>${r.review_title }</div>
			</div>
		</c:forEach>
			</div>
		<div class="review-img2">
			<div>
				<img id="reviewImg" src="img/${r.review_pic }">
			</div>
			<div>
				<input type="text">
			</div>
		</div>
		<div class="review-img3">
			<div>
				<img id="reviewImg" src="img/${r.review_pic }">
			</div>
			<div>
				<input type="text">
			</div>
		</div>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/jh/review.css">
</head>
<body>
	<div>
	
		<div class="review-title">
			이번 여행은 어떠셨나요? <br>
			다른 분들에게 공유해주세요.
		</div>
		<div >
   	 		<form action="ReviewC" method="GET">
   	 			<div class="review-searcher">
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
		<form action="ReviewInsertC" method="post" enctype="multipart/form-data">
		
		<c:forEach items="${reviews }" var="r">
		<div class="review-write-submit">
			<div class="review-writeimg">
				${r.review_pic}
			</div>
				<div class="review-blank">
					</div>
			<div class="review-write-detail">
				<div class="review-title-text">
					타이틀
				</div>
				<div class="review-title-input">
					${r.review_title}
				</div>
				
				<div class="review-title-text2">
					후기
				</div>
				<div class="review-title-input2">
					${r.review_title}
				</div>
				
				<div class="place">
					<div class="div-button" onclick="ReviewDelC">삭제</div>
					<div class="div-button" onclick="ReviewUpdateC">수정</div>					
				</div>
			</div>
		</div>
	</c:forEach>
		</form>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<div>
			<div class="review-title">
				이번 여행은 어떠셨나요? <br>
				다른 분들에게 공유해주세요.
			</div>
		<div >
    	 	<form onsubmit="handleSearch(); return false;">
   	 			<div class="review-searcher">
       				<input id="keyword" class="review-search" type="text" name="keyword" placeholder="검색어를 입력하세요">			
       			 	<button class="review-searchbutton" type="submit">search</button>  		
       			</div>
    		</form>
		</div>
		<div class="review-write-de">
			<div>
			</div>
			<div class="review-write-word">
				<div class="review-write-big">
					후기를 알려주세요.
				</div>
				<div class="review-write-small">
					추첨을 통해 소정의 상품을 증정드립니다.
				</div>
			</div>
		</div>
			<form action="ReviewInsertC" method="post" enctype="multipart/form-data">    
			    <div class="review-write-submit">
			    	<div class="review-img-time">
			        <div class="review-writeimg">
			            <img class="reviewImg" src="img/jh/${review.review_pic}">
			        </div>
			        <div class="review-date">
			        ${review.review_create_at}
			        </div>
			        <button id="like-${r.review_id}" class="like-button" onclick="toggleLike(${r.review_id})"
					style="margin-left: 10px; background-color: white; border: white;">
						<img class="heart-icon" src="img/jh/heart.png" alt="heart" style="width: 20px; height: 20px; margin-left: 85px;
						">
					</button>
					<span id="like-count-${r.review_id}" class="like-count">${r.review_likes}</span>
			        </div>
			        <div class="review-write-detail">
			            <div class="review-title-text">
			                타이틀    
			            </div>
			            <div class="review-title-input">
			                ${review.review_title}
			            </div>
			            <div class="review-title-text2">
			                후기
			            </div>
			            <div class="review-title-input2">
			                ${review.review_body}
			            </div>
							<div class="place">
								<div class="div-button" onclick="goBack()">뒤로가기</div>						
							  	<div class="div-button" onclick="confirmDelete(${review.review_id})">삭제</div>
								<div class="div-button" onclick="location.href='ReviewUpdateC?id=${review.review_id}'">수정</div>					
							</div>
			        	</div>
			   		 </div>
				</form>
			</div>
</body>
</html>
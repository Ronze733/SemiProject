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
			            <img class="reviewImg2" src="img/jh/${review.review_pic}">
			        </div>
			        <div class="review-date">
			        ${review.review_create_at}
			        </div>
						<div>
							<span class="review_star"> ★★★★★ <span>★★★★★</span>
							 <input type="range" class="s" step="1" min="0" max="10" value="${review.review_likes}"> 
							 <input type="text" class="star_value" name="star_value" value="${review.review_likes}">
							</span>
						</div>			        
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
			            <div class="review-title-input2" style="overflow-y: scroll; ">
			                ${review.review_body}
			            </div>
							<div class="place">
								<div class="div-button" onclick="goBack()">뒤로가기</div>			
							<c:if test="${sessionScope.account.user_id eq review.review_user_id}">
							  	<div class="div-button" onclick="confirmDelete(${review.review_id})">삭제</div>
								<div class="div-button" onclick="location.href='ReviewUpdateC?id=${review.review_id}&body=${review.review_body }'">수정</div>	
							</c:if>				
							</div>
			        	</div>
			   		 </div>
				</form>
			</div>
</body>
<script type="text/javascript">
	drawStar2()
</script>
</html>
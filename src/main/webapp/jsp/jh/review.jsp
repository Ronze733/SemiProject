<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">	
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/jh/review.css">
<script type="text/javascript">
	let result = '${result }';
	if(result != null && result != ""){
		location.href="ReviewC";
	}
	
</script>
</head>
<body>
	<div class="review-container">
	
		<div class="review-title">
			당신의 이야기를 들려주세요.
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
	    <c:forEach var="r" items="${reviews}" varStatus="loop">
	        <c:if test="${loop.index < 3}">
				<div class="review-img">
					<div class="review-con">
						<div class="r-img">
							<img onclick="location.href='ReviewDetailC?id=${r.review_id}'" class="reviewImg" src="img/jh/${r.review_pic }">
						</div>
						<div class="r-text">
							<div onclick="location.href='ReviewDetailC?id=${r.review_id}'" class="r-title">${r.review_title}</div>
							<div onclick="location.href='ReviewDetailC?id=${r.review_id}'" class="r-body">${r.review_body}</div>
						</div>
					</div>
				</div>
				</c:if>
			</c:forEach>
				<div class="r-page" style="display: flex;">
					<select name="selecter" class="selecter-styling" onchange="handleSelectChange(this.value)">
					  <option value="recently">최신순</option>
					  <option value="mostviewed">많이읽은순</option>						
					</select>
					<div onclick="location.href='ReviewPageC?p=1'">[맨처음]</div>
					<c:forEach begin="1" end="${pageCount }" var="i">
					<div onclick="loaction.href='ReviewPageC?p=${i }'">[${i }]</div>
					</c:forEach>
					<div onclick="location.href='ReviewPageC?p=${pageCount }'">[맨끝]</div>
				</div>
			</div>
</body>	
</html>
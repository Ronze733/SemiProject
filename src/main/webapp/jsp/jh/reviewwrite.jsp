<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<div class="review-writeimg">
				<input name="pic" type="file">
			</div>
			<div class="review-blank">
			
			</div>
			
			<div class="review-write-detail">
				<div class="review-title-text">
					타이틀을 적어주세요.
				</div>
				<div class="review-title-input">
					<input class="input-box" type="text" name="title" placeholder="제목을 기입해주세요!">
				</div>
				
				<div class="review-title-text2">
					후기를 적어주세요.
				</div>
				<div class="review-title-input2">
					<textarea class="input-box2" rows="" cols="" name="body" placeholder="여러분의 후기를 적어주세요!"></textarea>
				</div>
				<div class="place">
						<div class="place2">
							<select name="place_name" class="select-styling">
								<option value="seoul">서울</option>
								<option value="busan">부산</option>						
								<option value="daegu">대구</option>
								<option value="incheon">인천</option>
								<option value="gwangju">광주</option>
								<option value="daejeon">대전</option>
								<option value="ulsan">울산</option>																								
								<option value="kyeonggido">경기도</option>
								<option value="chungcheong">충청도</option>
								<option value="gyeongsang ">경상도</option>										
								<option value="jeolla">전라도</option>	
								<option value="gangwon">강원도</option>
								<option value="jeju ">제주도</option>
							</select>
						</div>				
					</div>
				<div class="review-detailbutton" >
					<button class="review-detailbutton">Submit</button>
				</div>
			</div>
		</div>
		</form>
	</div>
</body>
</html>
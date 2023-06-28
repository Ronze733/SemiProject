<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<div class="review-title">
			이번 여행은 어떠셨나요? <br> 다른 분들에게 공유해주세요.
		</div>
		<div>
			<form action="ReviewC" method="GET">
				<div class="review-searcher">
					<input class="review-search" type="text" name="keyword" placeholder="검색어를 입력하세요">
					<button class="review-searchbutton" type="submit">search</button>
				</div>
			</form>
		</div>
		<div class="review-write-de">
			<div></div>
			<div class="review-write-word">
				<div class="review-write-big">후기를 알려주세요.</div>
				<div class="review-write-small">추첨을 통해 소정의 상품을 증정드립니다.</div>
			</div>
		</div>
		<form action="ReviewInsertC" method="post" enctype="multipart/form-data">
			<input type="hidden" name="id" value="${sessionScope.account.user_id}">
			<div class="review-write-submit">
				<div>
					<div class="review-writeimg">
						<img alt="" src="" id="imagePreview" style="width: 100%; height: 100%; display: none;">
					</div>
					<div>
						<input id="uploadInput" name="pic" type="file" style="padding-top: 10px;">
					</div>
					<br>
					<div class="star-rating">
						<div style="font-size: 20px; padding-left: 17px;">
							별점을 지정해주세요.
						</div>
						<div>
							<span class="review_star"> ★★★★★ <span>★★★★★</span> 
								<input type="range" oninput="drawStar(this)" value="1" step="1" min="0" max="10"> 
								<input type="hidden" id="star_value" name="star_value" value="">
							</span>
						</div>
					</div>
				</div>
				<div class="review-blank"></div>
				<div class="review-write-detail">
					<div class="review-title-text">타이틀을 적어주세요.</div>
					<div class="review-title-input">
						<input class="input-box" type="text" name="title" id="titleInput" placeholder="제목을 기입해주세요!">
						<div id="titleError" class="error-message"></div>
					</div>
					<div class="review-title-text2">후기를 적어주세요.</div>
					<div class="review-title-input2">
						<textarea class="input-box2" rows="" cols="" name="body" id="bodyInput" placeholder="여러분의 후기를 적어주세요!"></textarea>
						<div id="bodyError" class="error-message"></div>
					</div>
					<div class="place">
						<div class="place2" style="display: flex; gap: 10px;">
							<select name="place_name" class="select-styling" id="placeSelect">
								<option value="seoul">&nbsp;서울</option>
								<option value="busan">&nbsp;부산</option>
								<option value="daegu">&nbsp;대구</option>
								<option value="incheon">&nbsp;인천</option>
								<option value="gwangju">&nbsp;광주</option>
								<option value="daejeon">&nbsp;대전</option>
								<option value="ulsan">&nbsp;울산</option>
								<option value="kyeonggido">경기도</option>
								<option value="chungcheong">충청도</option>
								<option value="gyeongsang">경상도</option>
								<option value="jeolla">전라도</option>
								<option value="gangwon">강원도</option>
								<option value="jeju">제주도</option>
							</select>
							<div>
								<button class="review-detailbutton" onclick="return validateForm()">&nbsp;&nbsp;Submit</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
	<script>
	const inputElement = document.getElementById("uploadInput");
	const imageElement = document.getElementById("imagePreview");
	const titleInput = document.getElementById("titleInput");
	const bodyInput = document.getElementById("bodyInput");
	const placeSelect = document.getElementById("placeSelect");
	const titleError = document.getElementById("titleError");
	const bodyError = document.getElementById("bodyError");

	function validateForm() {
		  const titleValue = titleInput.value.trim();
		  const bodyValue = bodyInput.value.trim();
		  const placeValue = placeSelect.value;
		  

		  // 제목이 입력되지 않은 경우
		  if (titleValue === "") {
		    alert("제목을 입력해주세요.");
		    return false; // 페이지 전환을 막기 위해 false를 반환
		  } else {
		    titleError.innerText = "";
		  }

		  // 후기 내용이 입력되지 않은 경우
		  if (bodyValue === "") {
		    alert("후기를 입력해주세요.");
		    return false; // 페이지 전환을 막기 위해 false를 반환
		  } else {
		    bodyError.innerText = "";
		  }

		  // 선택한 장소가 없는 경우
		  if (placeValue === "") {
		    alert("장소를 선택해주세요.");
		    return false; // 페이지 전환을 막기 위해 false를 반환
		  }
		  
		  if (inputElement.files.length === 0) {
			  alert("사진을 선택해주세요.");
			  return false; // 페이지 전환을 막기 위해 false를 반환
			}
		  // 모든 입력이 유효한 경우, 폼을 서버로 제출할 수 있습니다.
		  return true;
		}


	inputElement.addEventListener("change", function(event) {
		const file = event.target.files[0];

		if (file && (file.type === "image/jpeg" || file.type === "image/jpg")) {
			const reader = new FileReader();

			reader.onload = function(e) {
				imageElement.style.display = "block";  // 이미지 표시
				imageElement.src = e.target.result;
			};

			reader.readAsDataURL(file);
		}
	});
	
	// JavaScript 코드
	var textarea = document.getElementById("bodyInput");
	var maxLength = 1000; // 최대 글자 수

	textarea.addEventListener("input", function() {
	  if (textarea.value.length > maxLength) {
	    alert("글자 수가 너무 깁니다. " + maxLength + "자 이하로 입력해주세요.");
	    textarea.value = textarea.value.substring(0, maxLength);
	  }
	});


	</script>
</body>
</html>

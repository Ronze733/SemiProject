<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://code.jquery.com/jquery-3.7.0.js"
	integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
	crossorigin="anonymous"></script>
<div class="recommend-container">
	<div class="recommend-banner">
		<img id="recommend-banner-img" alt="" src="./img/jy/main-img.png">
	</div>
	<div class="recommend-banner-copy">너만 오면 GO!</div>
	<div class="recommend-container">
		<div class="recommend-search" style="display: flex;">
			<div>
				검색
				<form action="RecommendC" method="post">
					<div class="recommend-search-themes">
						테마
						<div>
							<label> <input type="checkbox" name="themes" value="가족">가족
							</label>
						</div>
						<div>
							<input type="checkbox" name="themes" value="친구">친구
						</div>
						<div>
							<input type="checkbox" name="themes" value="연인">연인
						</div>
					</div>
					<div class="recommend-search-places">
						장소
						<div>
							<input type="checkbox" name="places" value="산">산
						</div>
						<div>
							<input type="checkbox" name="places" value="바다">바다
						</div>
						<div>
							<input type="checkbox" name="places" value="계곡">계곡
						</div>
					</div>
					<div class="recommend-search-locations">
						지역
						<div>
							<input type="checkbox" name="locations" value="서울">서울
						</div>
						<div>
							<input type="checkbox" name="locations" value="인천">인천
						</div>
						<div>
							<input type="checkbox" name="locations" value="대전">대전
						</div>
						<div>
							<input type="checkbox" name="locations" value="대구">대구
						</div>
						<div>
							<input type="checkbox" name="locations" value="광주">광주
						</div>
						<div>
							<input type="checkbox" name="locations" value="울산">울산
						</div>
						<div>
							<input type="checkbox" name="locations" value="부산">부산
						</div>
						<div>
							<input type="checkbox" name="locations" value="경기도">경기도
						</div>
						<div>
							<input type="checkbox" name="locations" value="강원도">강원도
						</div>
						<div>
							<input type="checkbox" name="locations" value="충청도">충청도
						</div>
						<div>
							<input type="checkbox" name="locations" value="전라도">전라도
						</div>
						<div>
							<input type="checkbox" name="locations" value="경상도">경상도
						</div>
						<div>
							<input type="checkbox" name="locations" value="제주도">제주도
						</div>
					</div>
					<div>
						<button>검색</button>
					</div>
				</form>
			</div>
			<div class="result-div-wrap">

			

			</div>

		</div>
		<div class="recommend-travel-places">
			추천여행지 <br>
			<c:forEach var="p" items="${recommendPlaces}">
					${p.place_name} <br>
			</c:forEach>
			<div class="recommend-travel-locations">
				여행지
				<div class="recommend-travel-location">
					<div>
						<img style="max-width: 100px;" alt="" src="./img/jy/IFCmall.jpg">
					</div>
					<div>IFC몰</div>
				</div>
				<div class="recommend-travel-location">
					<div>
						<img style="max-width: 100px;" alt="" src="./img/jy/IFCmall.jpg">
					</div>
					<div>IFC몰</div>
				</div>
				<div class="recommend-travel-location">
					<div>
						<img style="max-width: 100px;" alt="" src="./img/jy/IFCmall.jpg">
					</div>
					<div>IFC몰</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
	let resultDivWrap = $(".result-div-wrap");
	const resultDiv = `<div class="result-div"
		style="border: 1px solid red; width: 300px; height: 200px; display: flex;">
		<div style="width: 50%;">
			<img alt="" src="" class="result-img">
		</div>
		<div style="text-align: center;" class="result-name"></div>
	</div>
`;
	const resultImg = $(".result-img");
	const resultName = $(".result-name");
	
function setVal(data) {
	console.log(data);
	let dataArray = data.data;
	console.log(data.data[0]);
	
	console.log(dataArray);	
	$.each(dataArray, function(i, el) {
	let resultDiv2 = $(resultDiv).clone();
	
	$(resultDiv2).find('.result-img').attr("src", el.pic);
	$(resultDiv2).find('.result-name').text(el.name);
	$(resultDivWrap).append(resultDiv2);
		
		console.log(el);
	})
	
	
}

	const el = $("input[name='themes']");
	
	// 테마
// 			el 3개   체크 되어있는것들을 theme = 여기다 완성품
// 									param1,param2,   => dao   if 문 거를게
// 									theme => dao chk   getparamvals (배열)
// 	// 장소
// 			el 3개   체크 되어있는것들을 place = 여기다 문자열 완성품
// 	// 지역
// 			el
	
	let query = "";
	$(el).click(function() {
			let themes = $(this).val();
			query += themes + "!";
			console.log(query);
			 $.ajax({
		 	    data : {query}, // 요청 파라미터
		 	    type : "GET", // 요청 타입
	 		    url : "RecommendC", // 호출할 jsp 파일 / 컨트롤러 가도 됨
	 		    contentType : "json",
	 		    success : function(data) {
	 		        setVal(data);
	 		    }
	 		}); 
	});

   
	
</script>
let resultDivWrap = $(".result-div-wrap");

const resultDiv = `<div class="result-div"
		style="border: 1px solid red; width: 500px; height: 500px; display: flex;">
		<div style="width: 50%;">
			<img style="max-width: 150px;" alt="" src="" class="result-img">
		</div>
		<div style="text-align: center;" class="result-name"></div>
		<div style="text-align: center;" class="result-addr"></div>
		<div style="text-align: center;" class="result-category1"></div>
		<div style="text-align: center;" class="result-category2"></div>
		<div style="text-align: center;" class="result-category3"></div>
		<div style="text-align: center;" class="result-explain"></div>
	</div>
	`;

const resultImg = $(".result-img");
const resultName = $(".result-name");

$(document).ready(function(){
	presentAllPlaces();
}); 

function presentAllPlaces(){
	$.ajax({
		type : "POST", // 요청 타입
		url : "RecommendC", // 호출할 jsp 파일 / 컨트롤러 가도 됨
		success : function(data) {
			setVal(data);
		}
	});
}	

function clearResults()	{
	$(resultDivWrap).empty();
	/*themeQuery = "";
	placeQuery = "";
	locationQuery = "";*/
}
	
function setVal(data) {
	clearResults();
	
	console.log(data.data);
	$.each(data.data, function(i, el) {
	let resultDiv2 = $(resultDiv).clone();
	console.log(el.name);
	console.log(el.explain);
	console.log(el.addr);
	$(resultDiv2).find('.result-img').attr("src", "./img/jy/" + el.pic);
	$(resultDiv2).find('.result-name').text(el.name);
	$(resultDiv2).find('.result-category1').text(el.category1);
	$(resultDiv2).find('.result-category2').text(el.category2);
	$(resultDiv2).find('.result-category3').text(el.category3);
	$(resultDiv2).find('.result-explain').text(el.explain);
	$(resultDiv2).find('.result-addr').text(el.addr);
	$(resultDivWrap).append(resultDiv2);
		
		console.log(el);
	})
	
}

const themesEl = $('.recommend-themes');
const placesEl = $('.recommend-places');
const locationsEl = $('.recommend-locations');
	
let themeQuery = "";
let placeQuery = "";
let locationQuery = "";
	
$(themesEl).click(function() {
	let themes = $(this).val();
	themeQuery += themes + "!";
	console.log(themeQuery);
	sendAjaxRequest();
});

$(placesEl).click(function() {
	let places = $(this).val();
	placeQuery += places + "!";
	console.log(placeQuery);
	sendAjaxRequest();
});

$(locationsEl).click(function() {
	let locations = $(this).val();
	locationQuery += locations + "!";
	console.log(locationQuery);
	sendAjaxRequest();
});

function sendAjaxRequest() {
	$.ajax({
		data : {themeQuery : themeQuery,
 				placeQuery : placeQuery,
 				locationQuery : locationQuery
 				}, // 요청 파라미터
		type : "GET", // 요청 타입
		url : "RecommendC", // 호출할 jsp 파일 / 컨트롤러 가도 됨
		success : function(data) {
			setVal(data);
		}
	});
}

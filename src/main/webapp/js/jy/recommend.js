let resultDivWrap = $(".result-div-wrap");

const resultDiv = `<div class="result-div">
		<div>
			<img alt="" src="" class="result-img">
		</div>
		<div class="result-name"></div>
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
}
	
function setVal(data) {
	clearResults();
	
	console.log(data.data);
	$.each(data.data, function(i, el) {
	let resultDiv2 = $(resultDiv).clone();
	console.log(el.name);
	$(resultDiv2).find('.result-img').attr("src", "./img/jy/" + el.pic);
	$(resultDiv2).find('.result-name').text(el.name);
	$(resultDivWrap).append(resultDiv2);
		
//		console.log(el);
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
	if($(this).is(':checked')){
		themeQuery += themes + "!";
	}else{
		 themeQuery = themeQuery.replace($(this).val()+"!", "");		
	}
	console.log(themeQuery);
	sendAjaxRequest();
});

$(placesEl).click(function() {
	let places = $(this).val();
	if($(this).is(':checked')){
		placeQuery += places + "!";
	}else{
		placeQuery = placeQuery.replace($(this).val()+"!", "");
	}
	console.log(placeQuery);
	sendAjaxRequest();
});

$(locationsEl).click(function() {
	let locations = $(this).val();
	if($(this).is(':checked')){
		locationQuery += locations + "!";
	}else{
		locationQuery = locationQuery.replace($(this).val()+"!", "");
	}
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

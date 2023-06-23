let resultDivWrap = $(".recommend-result-div-wrap");

const resultDiv = 	`<div class="recommend-result-div">
						<div>
							<img alt="" src="" class="recommend-result-img" onclick="">
						</div>
						<div class="recommend-result-name"></div>
						<div class="recommend-result-location"></div>
						<div class="recommend-result-location">test</div>
					</div>
					`;

const resultImg = $(".recommend-result-img");
const resultName = $(".recommend-result-name");

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
	
	var length = data.data.length;
	console.log(length);
	
	if(length === 0){
		var message = $('<div class="recommend-result-nothing">').text('해당 정보를 찾을 수 없습니다.');
    	resultDivWrap.append(message);
	} else {
	
		$.each(data.data, function(i, el) {
		let resultDiv2 = $(resultDiv).clone();
		console.log(el.name);
		console.log(el.id);
		$(resultDiv2).find('.recommend-result-img').attr("src", "./img/mk/" + el.pic);
		$(resultDiv2).find('.recommend-result-name').text(el.name);
		$(resultDiv2).find('.recommend-result-location').text(el.category3);
		$(resultDiv2).find('.recommend-result-img').attr("onclick", "sendController(" + el.id + ")");
		$(resultDivWrap).append(resultDiv2);
		
		})
	
	}
}

function sendController(id){
	location.href='PlaceInfoC?pid='+id;
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

$('#recommend-pagination').pagination({
	pageSize: 5,
	callback: function(data, pagination){
		 		setVal(data);
	}	

});






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

function clearResults()	{
	$(resultDivWrap).empty();
	themesEl.prop('checked',false);
	placesEl.prop('checked',false);
	locationsEl.prop('checked',false);
	themeQuery = "";
	placeQuery = "";
	locationQuery = "";
}
	
function setVal(data) {
	
	clearResults();
	
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

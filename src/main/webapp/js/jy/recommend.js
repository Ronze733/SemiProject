let resultDivWrap = $(".recommend-result-div-wrap");
console.log('recommendjs')
const resultDiv = `<div class="recommend-result-div">
						<div class="recommend-result-img" style="" onclick="">
						</div>
						<div class="recommend-result-name"></div>
						<div class="recommend-result-location"></div>
					</div>
					`;

const resultImg = $(".recommend-result-img");
const resultName = $(".recommend-result-name");


function paging(data){
	console.log(data)
	 let container = $('#recommend-result-pagination');
        container.pagination({
            dataSource: data,
            pageSize:6,
            callback: function (data, pagination) {
			console.log(pagination)
			console.log(data);
                var dataHtml = '';
				if(data.length === 0){
					dataHtml +=``;
				}
                $.each(data, function (index, item) {
					console.log(item.pic);
					console.log(item.name);
					console.log(item.category3);
					if(item.id >= 28){
                    	dataHtml += `<div class="recommend-result-div">
							<div class="recommend-result-img" style="background-image:url('${item.pic}')" onclick="sendController(${item.id})">
							</div>
							<div class="recommend-result-name">${item.name}</div>
							<div class="recommend-result-location">${item.category3}</div>
						</div>
						`;
					} else {
                    	dataHtml += `<div class="recommend-result-div">
							<div class="recommend-result-img" style="background-image: url('./img/mk/${item.pic}')" onclick="sendController(${item.id})">
							</div>
							<div class="recommend-result-name">${item.name}</div>
							<div class="recommend-result-location">${item.category3}</div>
						</div>
						`;
					}
                });
                $(".recommend-result-div-wrap").html(dataHtml);
            }
        })
}
$(document).ready(function () {
  presentAllPlaces();

});

function presentAllPlaces() {
  $.ajax({
    type: "POST", // 요청 타입
    url: "RecommendC", // 호출할 jsp 파일 / 컨트롤러 가도 됨
    success: function (data) {
      setVal(data);
      paging(data.data);
      
    }
  });
}

function clearResults() {
  $(resultDivWrap).empty();
}

function setVal(data) {
  clearResults();

  console.log(data.data);

  var length = data.data.length;
  console.log(length);

  if (length === 0) {
    var message = $('<div class="recommend-result-nothing">').text(
      "해당 정보를 찾을 수 없습니다."
    );
    resultDivWrap.append(message);
  } else {
    $.each(data.data, function (i, el) {
      let resultDiv2 = $(resultDiv).clone();
      console.log(el.name);
      console.log(el.id);
      if(el.id >=28){
		$(resultDiv2).find(".recommend-result-img").attr("style", "background-image: url('"+ el.pic +"');");
		} else{
	      $(resultDiv2).find(".recommend-result-img").attr("style", "background-image: url('./img/mk/" + el.pic +"');");
		}
      $(resultDiv2).find(".recommend-result-name").text(el.name);
      $(resultDiv2).find(".recommend-result-location").text(el.category3);
      $(resultDiv2).find(".recommend-result-img").attr("onclick", "sendController(" + el.id + ")");
      $(resultDivWrap).append(resultDiv2);
    });
  }
}

function sendController(id) {
  location.href = "PlaceInfoC?pid=" + id;
}

const themesEl = $(".recommend-themes");
const placesEl = $(".recommend-places");
const locationsEl = $(".recommend-locations");

let themeQuery = "";
let placeQuery = "";
let locationQuery = "";

$(themesEl).click(function () {
	let themes = $(this).val();
	if ($(this).is(":checked")) {
    themeQuery += themes + "!";
    } else {
    themeQuery = themeQuery.replace($(this).val() + "!", "");
  }
  console.log(themeQuery);
  sendAjaxRequest();
});

$(placesEl).click(function () {
  let places = $(this).val();
  if ($(this).is(":checked")) {
    placeQuery += places + "!";
  } else {
    placeQuery = placeQuery.replace($(this).val() + "!", "");
  }
  console.log(placeQuery);
  sendAjaxRequest();
});

$(locationsEl).click(function () {
  let locations = $(this).val();
  if ($(this).is(":checked")) {
    locationQuery += locations + "!";
  } else {
    locationQuery = locationQuery.replace($(this).val() + "!", "");
  }
  console.log(locationQuery);
  sendAjaxRequest();
});

function sendAjaxRequest() {
  $.ajax({
    data: {
      themeQuery: themeQuery,
      placeQuery: placeQuery,
      locationQuery: locationQuery,
    }, // 요청 파라미터
    type: "GET", // 요청 타입
    url: "RecommendC", // 호출할 jsp 파일 / 컨트롤러 가도 됨
    success: function (data) {
      setVal(data);
      paging(data.data);
    },
  });
}









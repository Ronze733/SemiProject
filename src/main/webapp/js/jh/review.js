function handleSelectChange(value) {
      if (value === 'recently') {
        // 최신순일 때 reviewC 페이지로 이동
        window.location.href = 'ReviewC?p=1';
      }else{
	    window.location.href = 'ReviewSRC?p=1';	
	}
    }
    
function confirmDelete(reviewId) {
	if (confirm("삭제하시겠습니까?")) {
		location.href = 'ReviewDelC?id=' + reviewId;
	} else {

	}
}


function goBack() {
	window.history.back();
}

function handleSearch() {
	var keyword = document.getElementById("keyword").value;
	var pageNumber = 1; // 초기 페이지 번호 설정
	location.href = "ReviewSearchC?keyword=" + keyword + "&p=" + pageNumber;
}

function handlePageClick(pageNumber) {
	var keyword = document.getElementById("keyword").value;
	location.href = "ReviewSearchC?keyword=" + keyword + "&p=" + pageNumber;
}


function handleClick() {
	location.href = 'ReviewSearch'; // ReviewSearch로 이동하는 동작 수행
	// 추가적인 동작 수행
}

function handlePageClick(page) {
	location.href = `ReviewPageC?p=${page}`; // ReviewPageC로 이동하는 동작 수행
	// 추가적인 동작 수행
}


function drawStar(target) {
  const starSpan = document.querySelector('.review_star span');
  if (starSpan) {
    const width = target.value * 10 + '%';
    starSpan.style.width = width;
    console.log(target.value);
    document.querySelector("#star_value").value = target.value;
  }
}



function drawStar2() {
	let starEls = document.querySelectorAll('.star_value');
//	console.log(starEls);
	starEls.forEach(function(e) {
		console.log(e.value);
		console.log(e.previousSibling.previousSibling)	
		let psEl = e.previousSibling.previousSibling;
		let parentSpan = psEl.previousSibling.previousSibling;
		console.log(parentSpan);
		const width = e.value * 10 + '%';
		console.log(width);
		parentSpan.style.width = width;	
	});

}

function ReviewloginCheck(id){
	let loginCheck = id;
	console.log(loginCheck);
	if(loginCheck == ''){
		alert('로그인 후 이용해주세요.');
		location.href='AccountC';
	} else{
		location.href='ReviewWriteC?id=' + id;
	}
}

function updateImage(input) {
  if (input.files && input.files[0]) {
    var reader = new FileReader();
    reader.onload = function(e) {
      document.getElementById('previewImage').src = e.target.result;
    };
    reader.readAsDataURL(input.files[0]);
  }
}

  
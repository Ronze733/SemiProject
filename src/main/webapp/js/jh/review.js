function handleSelectChange(value) {
    if (value === 'mostviewed') {
      sortReviewsByMostViewed();
      console.log(value);
    } else {
      const url = `ReviewPageC?p=1&sort=${value}`;
      location.href = url;
    }
  }
  

function sortByMostViewed() {
    const url = 'ReviewPageC?p=1&sort=mostviewed';
    location.href = url;
}

function handleSelectChange(value) {
    if (value === 'mostviewed') {
      sortByMostViewed();
    } else {
      // 다른 정렬 옵션에 대한 처리
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

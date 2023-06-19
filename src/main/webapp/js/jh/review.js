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
 
function handleSearch() {
  var keyword = document.getElementById("keyword").value;
  var pageNumber = 1; // 초기 페이지 번호 설정
  location.href = "ReviewSearchC?keyword=" + keyword + "&p=" + pageNumber;
}

function handlePageClick(pageNumber) {
    var keyword = document.getElementById("keyword").value;
    location.href = "ReviewSearchC?keyword=" + keyword + "&p=" + pageNumber;
}


  const likeStatus = {};

  // 좋아요 토글 함수
  function toggleLike(reviewId) {
    const likeButton = document.getElementById(`like-${reviewId}`);
    const likeCountElement = document.getElementById(`like-count-${reviewId}`);

    if (likeStatus[reviewId]) {
      // 이미 좋아요를 누른 상태인 경우
      likeStatus[reviewId] = false;
      likeButton.classList.remove("liked");
      likeCountElement.textContent = parseInt(likeCountElement.textContent) - 1;
    } else {
      // 좋아요를 누르지 않은 상태인 경우
      likeStatus[reviewId] = true;
      likeButton.classList.add("liked");
      likeCountElement.textContent = parseInt(likeCountElement.textContent) + 1;
    }
    // TODO: 좋아요 상태를 서버에 저장하는 로직 추가
  }

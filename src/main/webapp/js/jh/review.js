function handleSelectChange(value) {
    if (value === 'mostviewed') {
      sortReviewsByMostViewed();
    } else {
      const url = `ReviewPageC?p=1&sort=${value}`;
      location.href = url;
    }
  }
  const reviews = JSON.parse('<%= new Gson().toJson(reviews) %>');

  function sortReviews(option) {
    const sortedReviews = reviews.slice();

    if (option === 'recently') {
      sortedReviews.sort((a, b) => new Date(b.date) - new Date(a.date));
    } else if (option === 'mostviewed') {
      sortedReviews.sort((a, b) => b.clickCount - a.clickCount);
    }

    let output = '';

    for (const review of sortedReviews) {
      output += `
        <div class="review-img">
          <div class="review-con">
            <div class="r-img">
              <img onclick="location.href='ReviewDetailC?id=${review.review_id}'" class="reviewImg" src="img/jh/${review.review_pic}">
            </div>
            <div class="r-text">
              <div onclick="location.href='ReviewDetailC?id=${review.review_id}'" class="r-title">${review.review_title}</div>
              <div onclick="location.href='ReviewDetailC?id=${review.review_id}'" class="r-body">${review.review_body}</div>
            </div>
          </div>
        </div>
      `;
    }

    const reviewContainer = document.querySelector('.review-container');
    reviewContainer.innerHTML = output;
  }
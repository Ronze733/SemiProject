function handleSelectChange(value) {
    if (value === 'mostviewed') {
      sortReviewsByMostViewed();
      console.log(value);
    } else {
      const url = `ReviewPageC?p=1&sort=${value}`;
      location.href = url;
    }
  }

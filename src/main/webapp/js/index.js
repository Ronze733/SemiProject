/**
 * 
 */
 
window.addEventListener('scroll', function() {
  var scrollPosition = window.pageYOffset || document.documentElement.scrollTop;
  var header = document.querySelector('.main-header');

  if (scrollPosition >= 1) {
    header.classList.add('scroll-active');
  } else {
    header.classList.remove('scroll-active');
  }
});
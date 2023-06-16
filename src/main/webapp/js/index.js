/**
 * 
 */

let contentPage = document.querySelector('#main-header-contentPage').value;
console.log(contentPage);
var header = document.querySelector('.main-header');
var login = document.querySelector('#Navbar-login');

if (contentPage === "./jsp/jy/recommend/recommend.jsp") {
	window.addEventListener('scroll', function() {

		var scrollPosition = window.pageYOffset || document.documentElement.scrollTop;

		if (scrollPosition >= 1) {
			header.classList.add('scroll-active');
			login.classList.add('scroll-active');
		} else {
			header.classList.remove('scroll-active');
			login.classList.remove('scroll-active');
		}
	});
} else {
	header.classList.add('scroll-active');
	login.classList.add('scroll-active');
}
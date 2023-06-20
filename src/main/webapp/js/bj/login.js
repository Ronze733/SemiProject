function changePlaceholder(element, message) {
	element.placeholder = message;
};

function restorePlaceholder(element, message) {
	element.placeholder = message;
};

function openPopup() {
	window.open("jsp/bj/login/pwRecovery.jsp", "Password Recovery", "width=400,height=500");
}

function handlePopupClosed() {
	// 팝업창이 닫힌 후 수행할 동작
	alert('로그인이 완료되었습니다.');
	// 추가 동작 수행 또는 페이지 새로고침 등
	window.location.href = "LoginC";
}
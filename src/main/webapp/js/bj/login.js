function changePlaceholder(element, message) {
	element.placeholder = message;
};

function restorePlaceholder(element, message) {
	element.placeholder = message;
};

$(document).ready(function() {
	// 로그인 양식 제출 이벤트 핸들러
	$('form').submit(function(e) {
		e.preventDefault();

		// 로그인 작업 처리 (AJAX 또는 서버 요청)
		// 성공 시
		let email = $("input[name=email]").val();
		let pw = $("input[name=password]").val();
		
		$.ajax({
			type: "post",
			async: false,
			url: "LoginC",
			dataType: 'text',
			data: {
				"user_email": email,
				"user_pw": pw

			},
			success: function(res) {
				console.log(res)
				window.location.href = "HC";
			},
			error: function(xhr, status, error) {
				console.log(xhr);
				console.log(status);
				console.log(error);
				alert("아이디나 비밀번호가 맞지 않습니다");
				window.location.href = "LoginC";
			}
		});


		// 실패 시
		// 적절한 오류 처리
	});
});




function openPopup() {
	window.open("jsp/bj/login/pwRecovery.jsp", "Password Recovery", "width=400,height=500");
}

function handlePopupClosed() {
	// 팝업창이 닫힌 후 수행할 동작
	alert('새 비밀번호가 생성되었습니다');
	// 추가 동작 수행 또는 페이지 새로고침 등
	window.location.href = "../../../LoginC";
}
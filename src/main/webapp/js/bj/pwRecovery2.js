$(document).ready(function() {
	//아이디 정규식
	var idJ = /^[a-z0-9]{5,20}$/;

	$("#member_id").focusout(function() {
		if ($('#member_id').val() == "") {
			$('#checks').text('아이디를 입력해주세요.');
			$('#checks').css('color', 'red');
		}
	});

	$("#member_id").focusout(function() {
		if (!idJ.test($(this).val())) {
			$('#checks').text('5~20자의 영문 소문자, 숫자만 사용가능합니다');
			$('#checks').css('color', 'red');
		}
	});

	$("#name").focusout(function() {
		if ($('#name').val() == "") {
			$('#checks').text('이름을 입력해주세요.');
			$('#checks').css('color', 'red');
		}
	});

	$("#email").focusout(function() {
		if ($('#email').val() == "") {
			$('#checks').text('이메일을 입력해주세요');
			$('#checks').css('color', 'red');
		}
	});
});

window.addEventListener('load', () => {
	const forms = document.getElementsByClassName('validation-form');

	Array.prototype.filter.call(forms, (form) => {
		form.addEventListener('submit', function(event) {
			if (form.checkValidity() === false) {
				event.preventDefault();
				event.stopPropagation();
			}

			form.classList.add('was-validated');
		}, false);
	});
}, false);

function changePlaceholder(element, message) {
	element.placeholder = message;
};

function restorePlaceholder(element, message) {
	element.placeholder = message;
};

$("#duplicate-check").change(function(e) {
	console.log($(this).is(":checked"))

	if (!$(this).is(":checked")) {
		return;
	}
	let id = $("input[name=email]").val();
	$.ajax({
		type: "get",
		async: false,
		url: "../../../AccountRegC",
		dataType: 'json',
		data: {
			"actionType": "isDuplicated",
			"user_id": id

		},
		success: function(res) {
			console.log(res)
			alert("등록되지 않는 회원입니다");
		},
		error: function(error) {
			console.log(error)
			alert("등록된 회원 정보가 있습니다");
		}
	});

});

$("#email-check").focus(function() {
	$("#duplicate-check").prop("checked", false);
});

$(document).ready(function() {
	// 로그인 양식 제출 이벤트 핸들러
	$('form').submit(function(e) {
		e.preventDefault();

		// 로그인 작업 처리 (AJAX 또는 서버 요청)
		// 성공 시
		let pw = $("input[name=password]").val();
		$.ajax({
			type: "post",
			async: false,
			url: "../../../AccountUpdateC2",
			dataType: 'text',
			data: {
				"actionType": "pwRecovery",
				"user_pw": pw

			},
			success: function(res) {
				console.log(res)
				alert("새 비밀번호가 등록되었습니다");
			},
			error: function(xhr, status, error) {
				console.log(xhr);
				console.log(status);
				console.log(error);
				alert("오류가 발생했습니다. 관리자에게 문의하세요.");

			}
		});

		window.opener.handlePopupClosed(); // 부모 창의 함수 호출
		window.close(); // 팝업창 닫기

		// 실패 시
		// 적절한 오류 처리
	});
});

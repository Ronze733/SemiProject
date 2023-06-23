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
			alert("존재하는 회원입니다");
		}
	});

});

$("#email-check").focus(function() {
	$("#duplicate-check").prop("checked", false);
});


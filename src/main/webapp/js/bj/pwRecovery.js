
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

$(document).ready(function() {
	// 로그인 양식 제출 이벤트 핸들러
	$('form').submit(function(e) {
		e.preventDefault();

		// 로그인 작업 처리 (AJAX 또는 서버 요청)
		// 성공 시
		let email = $("input[name=email]").val();
		let question = $("select[name=question]").val();
		let answer = $("input[name=answer]").val();
		
		$.ajax({
			type: "post",
			async: false,
			url: "../../../AccountUpdateC",
			dataType: 'text',
			data: {
				"user_email": email,
				"user_question": question,
				"user_answer": answer

			},
			success: function(res) {
				console.log(res)
				window.location.href = "pwRecovery2.jsp";
			},
			error: function(xhr, status, error) {
				console.log(xhr);
				console.log(status);
				console.log(error);
				alert("질문에 답이 일치하지 않습니다");
			}
		});


		// 실패 시
		// 적절한 오류 처리
	});
});


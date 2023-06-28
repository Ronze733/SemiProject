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

	// 이메일 유효성 검사
	const emailInput = document.getElementById('email-check');
	emailInput.addEventListener('input', function() {
		const emailValue = emailInput.value.trim();
		const emailRegex = /^[a-zA-Z0-9+-\_.]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/;
		const emailErrorMessage = document.getElementById('email-error-message');

		if (!emailRegex.test(emailValue)) {
			emailInput.setCustomValidity('이메일 형식이 올바르지 않습니다.');
			emailErrorMessage.textContent = '이메일 형식이 올바르지 않습니다.';
		} else {
			emailInput.setCustomValidity('');
			emailErrorMessage.textContent = '';
		}
	});

	// 닉네임 유효성 검사
	const nicknameInput = document.getElementById('nickname');
	nicknameInput.addEventListener('input', function() {
		const nicknameValue = nicknameInput.value.trim();
		const nicknameRegex = /^[a-zA-Z가-힣]{3,12}$/;
		const nicknameErrorMessage = document.getElementById('nickname-error-message');

		if (!nicknameRegex.test(nicknameValue)) {
			nicknameInput.setCustomValidity('닉네임은 한글과 영문만 허용되며 3~12자로 입력해야 합니다.');
			nicknameErrorMessage.textContent = '닉네임은 한글과 영문만 허용되며 3~12자로 입력해야 합니다.';
		} else {
			nicknameInput.setCustomValidity('');
			nicknameErrorMessage.textContent = '';
		}
	});

	// 비밀번호 유효성 검사
	const passwordInput = document.getElementById('password');
	const passwordConfirmInput = document.getElementById('password-confirm');
	passwordInput.addEventListener('input', function() {
		const passwordValue = passwordInput.value;
		const passwordConfirmValue = passwordConfirmInput.value;
		const passwordRegex = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,16}$/;
		const passwordErrorMessage = document.getElementById('password-error-message');

		if (!passwordRegex.test(passwordValue)) {
			passwordInput.setCustomValidity('비밀번호는 영문, 숫자, 특수문자를 최소 한가지씩 조합하고 8~16자로 입력해야 합니다.');
			passwordErrorMessage.textContent = '비밀번호는 영문, 숫자, 특수문자를 최소 한가지씩 조합하고 8~16자로 입력해야 합니다.';
		} else {
			passwordInput.setCustomValidity('');
			passwordErrorMessage.textContent = '';
		}

		if (passwordValue !== passwordConfirmValue) {
			passwordConfirmInput.setCustomValidity('비밀번호와 비밀번호 확인 값이 일치하지 않습니다.');
		} else {
			passwordConfirmInput.setCustomValidity('');
		}
	});

	passwordConfirmInput.addEventListener('input', function() {
		const passwordValue = passwordInput.value;
		const passwordConfirmValue = passwordConfirmInput.value;

		if (passwordValue !== passwordConfirmValue) {
			passwordConfirmInput.setCustomValidity('비밀번호와 비밀번호 확인 값이 일치하지 않습니다.');
		} else {
			passwordConfirmInput.setCustomValidity('');
		}
	});
}, false);


function changePlaceholder(element, message) {
	element.placeholder = message;
};

function restorePlaceholder(element, message) {
	element.placeholder = message;
};

/*$("#check").click(function(e) {
	console.log($(this).is(":checked"))
	if (!$(this).is(":checked")) {
		alert("체크를 풀었구나")
		return;
	}
	// if 문에 걸리면 ajax 실행 안됨
	alert("ajax 실행")

});*/


$("#duplicate-check").change(function(e) {
	console.log($(this).is(":checked"))

	if (!$(this).is(":checked")) {
		return;
	}

	let id = $("input[name=email]").val();

	$.ajax({
		type: "GET",
		async: false,
		url: "AccountRegC",
		dataType: 'json',
		data: {
			"actionType": "isDuplicated",
			"user_id": id

		},
		success: function(res) {
			console.log(res)
			Swal.fire({
				icon: 'success',
				title: '멋진 이메일이네요!',
				text: '사용 가능한 이메일입니다!',
			});
		},
		error: function(error) {
			console.log(error)
			Swal.fire({
				icon: 'error',
				title: 'Oops...',
				text: '이미 등록된 이메일입니다.',
			});
		}
	});

});

$("#email-check").focus(function() {
	$("#duplicate-check").prop("checked", false);
});










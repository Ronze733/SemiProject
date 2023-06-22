
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
			url: "AccountUpdateC2",
			dataType: 'text',
			data: {
				"actionType": "pwRecovery",
				"user_pw": pw

			},
			success: function(res) {
				console.log(res)
				alert("새 비밀번호가 등록되었습니다");
				window.opener.handlePopupClosed(); // 부모 창의 함수 호출
				window.close(); // 팝업창 닫기
			},
			error: function(xhr, status, error) {
				console.log(xhr);
				console.log(status);
				console.log(error);
				alert("오류가 발생했습니다. 관리자에게 문의하세요.");
				window.location.href = "LoginC";
			}
		});



		// 실패 시
		// 적절한 오류 처리
	});
});

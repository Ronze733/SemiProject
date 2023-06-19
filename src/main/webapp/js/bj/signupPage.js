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
		alert("체크를 풀었구나")
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
			alert("사용 가능한 이메일입니다!");
		},
		error: function(error) {
			console.log(error)
			alert("이미 등록된 이메일입니다");
		}
	});

});

$("#email-check").focus(function() {
    $("#duplicate-check").prop("checked", false);
});













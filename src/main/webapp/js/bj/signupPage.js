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

function test(){
$.ajax({
            type: "GET",
            url: "/AccountRegC",
            dataType: 'json',
            data: {
              "testParam":"안녕하세요"
            }, 
            
            success: function (res) {
                console.log(res)
            },
            error: function (error) {
              console.log(error)
              alert("서버 통신 실패");
            }
          });
}
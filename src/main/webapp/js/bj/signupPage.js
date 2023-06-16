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

let id = ( $("input[name=email]").val() );	
alert(id);

$.ajax({
            type: "GET",
            async: false,
            url: "AccountRegC",
            dataType: 'json',
            data: {
				"actionType" : "isDuplicated",
				"user_id" : id
	
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
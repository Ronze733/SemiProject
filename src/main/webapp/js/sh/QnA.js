function deleteQnA(no){
	let ok = confirm('삭제하시겠습니까?')
	
	if (ok) {
		location.href= 'QnADelC?pkno=' + no;
	}
}

function QnAloginCheck(id){
	let loginCheck = id;
	console.log(loginCheck);
	if(loginCheck == ''){
		alert('로그인 후 이용해주세요.');
		location.href='AccountC';
	} else{
		location.href='QnAInsertC?id=' + id;
	}
}
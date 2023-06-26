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

function QnADetail(encoding, sessionId, inquiryId, no){
	let ok = encoding;
	let id = sessionId;
	let id2 = inquiryId;
	console.log(ok);
	console.log(id);
	console.log(id2);
	
	if (ok == '비공개'){
		if (id == id2 || id == 'lhgsky100@naver.com'){
		location.href='QnADetailC?no=' + no
		} else{
			alert("비공개 게시물 입니다");
		}
		
	} else {
		location.href='QnADetailC?no=' + no
	}
	
	
}


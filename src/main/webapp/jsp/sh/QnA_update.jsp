<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="QnAUpdateC" method="post">
		<div class="QnA-insert-container">
			<div class="QnA-insert-content">
				<div class="QnA-insert-header">
					<div>
						<span style="font-weight: 600;">제목</span>&nbsp;&nbsp; <input name="title" value="${QnA.inquiry_title }"> 
					</div>
				</div>
				<div class="QnA-insert-header">
					<div>
						<span style="font-weight: 600;">카테고리</span>&nbsp;&nbsp; 
							<input type="hidden" id="inquiry_category" value="${QnA.inquiry_category }">
							<select name="inquiry_category">
								<option value="공지사항">공지사항</option>
								<option value="이벤트">이벤트</option>
								<option value="문의하기">문의하기</option>
							</select>
					</div>
					<div><span style="font-weight: 600;">작성자</span>&nbsp;&nbsp; ${QnA.inquiry_user_name }</div>
				</div>
				<div class="QnA-insert-body">
					<div style="font-weight: 600; margin-bottom: 15px;">내용</div>
					<div>
						<textarea rows="10" cols="100" name="inquiry_body">${QnA.inquiry_body }</textarea>
					</div>
				</div>
				<div class="QnA-insert-button">
					<div><button onclick="history.back()">취소</button></div>
					<div><button onclick=>수정하기</button></div>
				</div>
			</div>
		</div>
	</form>
</body>
<script type="text/javascript">
	let select = document.querySelector('select[name="inquiry_category"]');
	let addrVal = document.querySelector('#inquiry_category').value;
	for (let i = 0; i < select.options.length; i++) {
		if (select.options[i].value == addrVal) {
			select.options[i].selected = true;
		}
	}
</script>
</html>
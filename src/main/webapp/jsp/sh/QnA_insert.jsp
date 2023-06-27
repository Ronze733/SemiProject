<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="QnAInsertC" method="post" class="QnA-form" onsubmit="return call()">
		<div class="QnA-insert-container">
			<div class="QnA-insert-content">
				<div class="QnA-insert-header">
					<input type="hidden" name="inquiry_user_name" value="${sessionScope.account.user_name }"> 
					<div>
						<span style="font-weight: 600;">제목</span>&nbsp;&nbsp;<input name="inquiry_title" placeholder="제목을 입력해주세요."> 
					</div>
					<div>
						<label><input type="radio" name="inquiry_encoding" value="공개" checked="checked">공개</label>
						<label><input type="radio" name="inquiry_encoding" value="비공개">비공개</label>
					</div>
				</div>
				<div class="QnA-insert-header">
					<div>
						<span style="font-weight: 600;">카테고리</span> <span>&nbsp;&nbsp;문의하기</span>
					</div>
						<input type="hidden" name="inquiry_category" value="문의하기">
					<div><span style="font-weight: 600;">작성자</span> <span>&nbsp;&nbsp; ${sessionScope.account.user_name }</span></div>
				</div>
				<div class="QnA-insert-body">
					<div style="font-weight: 600; margin-bottom: 15px;">내용</div>
					<div>
						<textarea rows="10" cols="100" name="inquiry_body"></textarea>
					</div>
				</div>
				<div class="QnA-insert-button">
					<div><button name="inquiry_user_id" value="${sessionScope.account.user_id }">완료</button></div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>
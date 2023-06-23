<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="QnAInsertC" method="post">
		<div class="QnA-insert-container">
			<div class="QnA-insert-content">
				<div class="QnA-insert-header">
					<input type="hidden" name="inquiry_user_name" value="${sessionScope.account.user_name }"> 
					<div>
						<span style="font-weight: 600;">제목</span>&nbsp;&nbsp;<input name="inquiry_title" placeholder="제목을 입력해주세요."> 
					</div>
				</div>
				<div class="QnA-insert-header">
					<div>
						<span style="font-weight: 600;">카테고리</span>&nbsp;&nbsp;
						<select name="inquiry_category">
							<option disabled selected value="">--카테고리를 선택해주세요--</option>
							<option value="공지사항">공지사항</option>
							<option value="문의하기">문의하기</option>
						</select>
					</div>
					<div><span style="font-weight: 600;">작성자</span> <span> ${sessionScope.account.user_name }</span></div>
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
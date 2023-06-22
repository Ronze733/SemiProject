<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="QnA-insert-container">
		<div class="QnA-insert-content">
			<div class="QnA-insert-header">
				<div>
					<span style="font-weight: 600;">제목</span>&nbsp;&nbsp; ${QnA.inquiry_title } 
				</div>
			</div>
			<div class="QnA-insert-header">
				<div>
					<span style="font-weight: 600;">카테고리</span>&nbsp;&nbsp; ${QnA.inquiry_category }
				</div>
				<div><span style="font-weight: 600;">작성자</span>&nbsp;&nbsp; ${QnA.inquiry_user_name }</div>
			</div>
			<div class="QnA-insert-body">
				<div style="font-weight: 600; margin-bottom: 15px;">내용</div>
				<div class="QnA-insert-bodytxt">${QnA.inquiry_body }</div>
			</div>
			<div class="QnA-insert-button">
				<div class="QnA-insert-answer">
					<div>답변</div>
					<div>
						<textarea rows="10" cols="100" name="inquiry_answer"></textarea>
					</div>
				</div>
			</div>
			<div><button onclick="">작성완료</button></div>
			<div><button onclick="location.href='QnAC'">취소</button></div>
		</div>
	</div>
</body>
</html>
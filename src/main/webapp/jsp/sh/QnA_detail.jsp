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
				<div><span style="font-weight: 600;">작성자</span> <span> ${QnA.inquiry_user_id }</span></div>
			</div>
			<div class="QnA-insert-body">
				<div style="font-weight: 600; margin-bottom: 15px;">내용</div>
				<div class="QnA-insert-bodytxt">${QnA.inquiry_body }</div>
			</div>
			<div class="QnA-insert-button">
				<div><button onclick="history.back()">목록으로</button></div>
				<div><button onclick="deleteQnA(${param.no})">삭제</button></div>
				<div><button onclick="location.href='QnAUpdate?no=${QnA.inquiry_no}'">수정</button></div>
			</div>
		</div>
	</div>
</body>
</html>
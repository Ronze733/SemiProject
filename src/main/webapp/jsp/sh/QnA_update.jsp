<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="QnAUpdateC?no=${QnA.inquiry_no }" method="post" class="QnA-form">
		<div class="QnA-insert-container">
			<div class="QnA-insert-content">
				<div class="QnA-insert-header">
					<div>
						<span style="font-weight: 600;">제목</span>&nbsp;&nbsp; <input class="QnA-search" name="inquiry_title" value="${QnA.inquiry_title }"> 
					</div>
					<div>
					<input type="hidden" id="inquiry_encoding" value="${QnA.inquiry_encoding }">
						<label><input type="radio" name="inquiry_encoding" value="공개">공개</label>
						<label><input type="radio" name="inquiry_encoding" value="비공개">비공개</label>
					</div>
				</div>
				<div class="QnA-insert-header">
					<div>
						<span style="font-weight: 600;">카테고리</span> <span>&nbsp;&nbsp;문의하기</span>
					</div>
						<input type="hidden" name="inquiry_category" value="문의하기">
					<div><span style="font-weight: 600;">작성자</span>&nbsp;&nbsp; ${QnA.inquiry_user_name }</div>
				</div>
				<div class="QnA-insert-body">
					<div style="font-weight: 600; margin-bottom: 15px;">내용</div>
					<div>
						<textarea rows="10" cols="100" name="inquiry_body">${QnA.inquiry_body }</textarea>
					</div>
				</div>
				<div class="QnA-insert-button">
					<div><button class="QnA-searchbutton">수정하기</button></div>
					<div><button class="QnA-searchbutton" type="button" onclick="history.back()">취소</button></div>
				</div>
			</div>
		</div>
	</form>
</body>
<script type="text/javascript">
var inquiryEncoding = document.getElementById("inquiry_encoding").value;

if (inquiryEncoding === "공개") {
    document.querySelector('input[name="inquiry_encoding"][value="공개"]').checked = true;
} else if (inquiryEncoding === "비공개") {
    document.querySelector('input[name="inquiry_encoding"][value="비공개"]').checked = true;
}
</script>
</html>
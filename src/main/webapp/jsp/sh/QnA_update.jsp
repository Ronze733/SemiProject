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
					<span style="font-weight: 600;">제목</span>&nbsp;&nbsp; <input name="title" value="${QnA.inquiry_title }"> 
				</div>
			</div>
			<div class="QnA-insert-header">
				<div>
					<span style="font-weight: 600;">카테고리</span>&nbsp;&nbsp; ${QnA.inquiry_category }
						<select name="inquiry_category">
							<option disabled selected value="">--카테고리를 선택해주세요--</option>
							<option value="공지사항">공지사항</option>
							<option value="이벤트">이벤트</option>
							<option value="문의하기">문의하기</option>
						</select>
				</div>
				<div><span style="font-weight: 600;">작성자</span> <span> ${QnA.inquiry_user_id }</span></div>
			</div>
			<div class="QnA-insert-body">
				<div style="font-weight: 600; margin-bottom: 15px;">내용</div>
				<div>
					<textarea rows="10" cols="100" name="inquiry_body"></textarea>
				</div>
			</div>
			<div class="QnA-insert-button">
				<div><button onclick="history.back()">취소</button></div>
				<div><button onclick="deleteQnA(${param.no})">수정하기</button></div>
			</div>
		</div>
	</div>
</body>
</html>
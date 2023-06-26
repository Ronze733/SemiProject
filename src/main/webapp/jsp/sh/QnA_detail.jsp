<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
			<c:if test="${QnA.inquiry_answer ne '.'}">
				<div>
					<div>답변</div>
					<div>${QnA.inquiry_answer_day }</div>
				</div>
				<div class="QnA-insert-bodytxt">${QnA.inquiry_answer }</div>
			</c:if>			
			<div class="QnA-insert-button">
				<div><button onclick="location.href='QnAC'">목록으로</button></div>
				<c:if test="${sessionScope.account.user_id eq QnA.inquiry_user_id}">
					<div><button onclick="deleteQnA(${param.no})" style="margin-left: 15px;">삭제</button></div>
					<div><button onclick="location.href='QnAUpdateC?no=${QnA.inquiry_no}'" style="margin-left: 15px;">수정</button></div>
				</c:if>
				<c:if test="${sessionScope.account.user_id eq 'lhgsky100@naver.com' }">
					<div><button onclick="location.href='QnAAnswerC?no=${QnA.inquiry_no}'" style="margin-left: 15px;">답변하기</button></div>
				</c:if>
			</div>
		</div>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
					<span style="font-weight: 600;">제목</span>&nbsp;&nbsp;
					${QnA.inquiry_title }
				</div>
			</div>
			<div class="QnA-insert-header">
				<div>
					<span style="font-weight: 600;">카테고리</span>&nbsp;&nbsp;
					${QnA.inquiry_category }
				</div>
				<div>
					<span style="font-weight: 600;">작성자</span>&nbsp;&nbsp;
					${QnA.inquiry_user_name }
				</div>
			</div>
			<div class="QnA-insert-body">
				<div style="font-weight: 600; margin-bottom: 15px;">내용</div>
				<div class="QnA-insert-bodytxt">${QnA.inquiry_body }</div>
			</div>
			<div>
				<c:if test="${QnA.inquiry_answer ne '.' }">
				<div>
				<b>운영자 답변 : 
				${QnA.inquiry_answer }  </b>
				</div>			
				</c:if>
			</div>
			<c:if test="${sessionScope.account.user_id == 'test@naver.com'}">
				<form action="QnAAnswerC">
				<div>
					<textarea rows="8" cols="100" style="resize: none;" name="txt"></textarea>
					<button style="position: relative; right: -659px; top: -40px;" name="no" value="${QnA.inquiry_no }">등록</button>
					<button style="position: relative; right: -658px; top: -40px;" name="no" value="${QnA.inquiry_no }" onclick="location.href='QnAAnswerC?no=${QnA.inquiry_no }&txt=.'">삭제</button>
				</div>
				</form>
			</c:if>
			<div class="QnA-insert-button">
				<div>
					<button onclick="location.href='QnAC'">목록으로</button>
				</div>
				<c:if test="${sessionScope.account.user_id eq QnA.inquiry_user_id}">
					<div>
						<button onclick="deleteQnA(${param.no})">삭제</button>
					</div>
					<div>
						<button onclick="location.href='QnAUpdateC?no=${QnA.inquiry_no}'">수정</button>
					</div>
				</c:if>
			</div>
		</div>
	</div>
</body>
</html>
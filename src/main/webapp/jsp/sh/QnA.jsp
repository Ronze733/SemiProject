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
	<div class="QnA-container">
		<div class="QnA-content">
			<div class="QnA-list-title">
				<div>고객 게시판</div>
				<div>a</div>
				<div>b</div>
				<div>c</div>
			</div>
			<div class="QnA-body">
				<div class="QnA-body-title">
					<div>aaa</div>
					<div>
						<input class="QnA-search" placeholder="검색어를 입력해주세요.">
						<button class="QnA-searchbutton">검색</button>
					</div>
					<div>
						<button>작성</button>
					</div>
				</div>
				<div class="QnA-lists">
					<div class="QnA-list-title">
						<div>번호</div>
						<div>제목</div>
						<div>아이디</div>
						<div>날짜</div>
					</div>
					<c:forEach items="${QnAs }" var="QnA">
						<div class="QnA-list">
							<div>${QnA.inquiry_no }</div>
							<div onclick="location.href='QnADetailC?no=${QnA.inquiry_no}'">${QnA.inquiry_title }</div>
							<div>${QnA.inquiry_user_id }</div>
							<div>${QnA.inquiry_question_day }</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
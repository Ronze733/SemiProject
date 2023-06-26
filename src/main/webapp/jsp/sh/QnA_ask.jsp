<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/sh/QnA.css">
</head>

<body>
	<div class="QnA-container">
		<div class="QnA-content">
			<div class="QnA-title-left">
				<div class="QnA-header">고객 게시판</div>
				<div class="QnA-left-lists">
					<div class="QnA-left-list" onclick="location.href='QnAC'">공지사항</div>
					<div class="QnA-left-list" onclick="location.href='QnAAskC'">문의하기</div>
					<div class="QnA-left-list" onclick="location.href='QnAFAQC'">자주 묻는 질문</div>
				</div>
			</div>
			<div class="QnA-body">
				<div class="QnA-body-title">
					<div class="QnA-header">문의하기</div>
					<div>
						<input class="QnA-search" placeholder="검색어를 입력해주세요.">
						<button class="QnA-searchbutton">검색</button>
					</div>
					<div>
						<button onclick="QnAloginCheck('${sessionScope.account.user_id}')">작성</button>
					</div>
				</div>
				<div class="QnA-body-list">
					<div class="QnA-list-titles">
						<div class="QnA-list-title1">카테고리</div>
						<div class="QnA-list-title2">제목</div>
						<div class="QnA-list-title3">아이디</div>
						<div class="QnA-list-title4">날짜</div>
						<div class="QnA-list-title5">상태</div>
					</div>
					<c:forEach items="${QnAs }" var="QnA">
					<c:if test="${QnA.inquiry_category eq '문의하기'}">
						<div class="QnA-lists">
							<div class="QnA-list1">${QnA.inquiry_category }</div>
							<c:if test="${QnA.inquiry_title ne '' }">
							<div class="QnA-list2" onclick="location.href='QnADetailC?no=${QnA.inquiry_no}'"> <span class="leftToRight">${QnA.inquiry_title }</span></div>
							</c:if>
							<c:if test="${QnA.inquiry_title eq '' }">
							<div class="QnA-list2"></div>
							</c:if>
							<div class="QnA-list3">${QnA.inquiry_user_name }</div>
							<div class="QnA-list4">${QnA.inquiry_question_day }</div>
							<c:if test="${QnA.inquiry_answer eq '.' }">
							<div class="QnA-list5">미답변</div>
							</c:if>
							<c:if test="${QnA.inquiry_answer ne '.' }">
							<div class="QnA-list5">답변완료</div>
							</c:if>
						</div>
					</c:if>
					</c:forEach>
				</div>
				<div class="QnA-page-number">
					<div onclick="location.href='QnAPageC?p=1'">[맨처음]</div>
						<c:if test="${curPageNo > 1}">
      			  			<div onclick="location.href='QnAPageC?p=${curPageNo - 1}'">&nbsp;[이전]&nbsp;</div>
 					   	</c:if>
						<c:forEach begin="1" end="${pageCount }" var="i">
							<div onclick="location.href='QnAPageC?p=${i }'">&nbsp;${i }&nbsp; </div>
						</c:forEach>
						<c:if test="${curPageNo < pageCount}">
      					  <div onclick="location.href='QnAPageC?p=${curPageNo + 1}'">&nbsp;[다음]&nbsp;</div>
   						</c:if>
					<div onclick="location.href='QnAPageC?p=${pageCount }'">[맨끝]</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
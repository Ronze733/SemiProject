<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="QnA-container">
		<div class="QnA-content">
			<div class="QnA-title-left">
				<div class="QnA-header">고객 게시판</div>
				<div class="QnA-left-lists">
					<div class="QnA-left-list" onclick="location.href='QnAC?category=1'">공지사항</div>
					<div class="QnA-left-list" onclick="location.href='QnAC?category=2'">문의하기</div>
					<div class="QnA-left-list" onclick="location.href='QnAC?category=3'">자주 묻는 질문</div>
				</div>
			</div>
			<div class="QnA-body">
				<div class="QnA-body-title">
					<div>검색결과</div>
					<form action="QnASearchC">
						<div>
							<input class="QnA-search" type="text" name="keyword" value="${keyword }" placeholder="검색어를 입력해주세요.">
							<input type="hidden" name="p" value="1">
							<button class="QnA-searchbutton" type="submit">검색</button>
						</div>
					</form>
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
					</div>
					<c:forEach items="${QnAs}" var="QnA">
						<div class="QnA-lists">
							<div class="QnA-list1">${QnA.inquiry_category }</div>
							<c:if test="${QnA.inquiry_title ne '' }">
							<div class="QnA-list2" onclick="QnADetail('${QnA.inquiry_encoding}', '${sessionScope.account.user_id }', '${QnA.inquiry_user_id }', '${QnA.inquiry_no }')">
								<span class="leftToRight">${QnA.inquiry_title }</span>
							</div>
							</c:if>
							 <c:if test="${QnA.inquiry_title eq '' }">
							<div class="QnA-list2"></div>
							</c:if>
							<div class="QnA-list3">${QnA.inquiry_user_name }</div>
							<div class="QnA-list4">${QnA.inquiry_question_day }</div>
						</div>
					</c:forEach>
				</div>
				<div class="row mt-5">
					<div class="col text-center">
						<div class="block-27">
							<ul>
								<li><a href="QnAPageC?category=${param.category}&p=1">&lt;&lt;</a></li>
								<c:if test="${curPageNo > 1}">
									<li><a href="QnAPageC?category=${param.category}&p=${curPageNo - 1}">&lt;</a></li>
								</c:if>
								<c:forEach begin="1" end="${pageCount }" var="i">
									<li><a href="QnAPageC?category=${param.category}&p=${i }">${i }</a></li>
								</c:forEach>
								<c:if test="${curPageNo < pageCount}">
									<li><a href="QnAPageC?category=${param.category}&p=${curPageNo + 1}">&gt;</a></li>
								</c:if>
								<li><a href="QnAPageC?category=${param.category}&p=${pageCount }">&gt;&gt;</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
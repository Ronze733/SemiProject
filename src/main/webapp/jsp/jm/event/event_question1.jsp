<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="./js/jm/event/event.js"></script>
</head>
<body>
	<div class="event-container">
		<div class="event-content">
			<div class="event-score">
				score = ${score };
			</div>
			<div class="event-quiz-name">
				<h1>Question</h1>
			</div>
			<div class="event-ProblemContent">
				<img alt="" src="${answer_pic }">
				<h2>위 사진은 어느 여행지의 사진일까요?</h2>
				<h3>${explain }</h3>
			</div>
			<c:forEach items="${answers }" var="answer" varStatus="status">
				<div>
					<button onclick="checkAnswer('${answer.spaceNum}');">${status.index + 1 }.  ${answer.spaceName }</button>
				</div>
			</c:forEach>
		</div>
	</div>
</body>
</html>
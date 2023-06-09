<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 화면 샘플</title>
<link href="css/bj/signupPage.css" rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script type="text/javascript" src="js/bj/myPage.js"></script>
</head>
<body>
	<div class="signup-container"
		style="background-image: url('css/bj/images/bg_whale.jpg');">
		<div class="input-form-backgroud row">
			<div class="signup-input-form col-md-12 mx-auto">
				<h4 class="mb-3">마이페이지</h4>
				<form class="validation-form" action="AccountRegC" method="post">
					<div class="row"></div>
					<div class="mb-3">
						<label for="nickname">닉네임</label> <input name="nickname"
							type="text" class="form-control" id="nickname"
							placeholder="이메일을 입력해주세요"
							onFocus="changePlaceholder(this, 'example@gmail.com');"
							onBlur="restorePlaceholder(this, '이메일을 입력해주세요');"
							value="${sessionScope.account.user_name }" required disabled>
						<div class="invalid-feedback">이메일을 입력해주세요.</div>
					</div>

					<div class="mb-3">
						<label for="email">이메일</label> <input name="email" type="email"
							class="form-control" id="email" placeholder="이메일을 입력해주세요"
							onFocus="changePlaceholder(this, 'example@gmail.com');"
							onBlur="restorePlaceholder(this, '이메일을 입력해주세요');"
							value="${sessionScope.account.user_id }" required disabled>
						<div class="invalid-feedback">이메일을 입력해주세요.</div>
					</div>

					<div class="mb-3">
						<label for="question">비밀번호 찾기 질문</label> <input name="question"
							type="text" class="form-control" id="question"
							value="${sessionScope.account.user_question }" required disabled>
					</div>
					<div class="mb-3">
						<label for="answer">비밀번호 찾기 답</label> <input name="answer"
							type="text" class="form-control" id="answer"
							value="${sessionScope.account.user_answer }" required disabled>
					</div>

					<div class="row">
						<div class="col-md-8 mb-3">
							<label for="gender">성별</label> <input name="email" type="email"
								class="form-control" id="email"
								value="${sessionScope.account.user_gender }" required disabled>
							<div class="invalid-feedback">성별을 선택해주세요.</div>
						</div>
						<div class="col-md-4 mb-3">
							<label for="code">추천인 코드</label> <input type="text"
								class="form-control" id="code" placeholder="필수 x">
							<div class="invalid-feedback">추천인 코드를 입력해주세요.</div>
						</div>
					</div>
					<hr class="mb-4">
					<div class="mb-4"></div>
					<button class="btn btn-primary btn-lg btn-block" 
						onclick="location.href='AccountUpdateC'" type="button">회원정보
						수정</button>
					<div class="mb-4"></div>
					<button class="btn btn-primary btn-lg btn-block"
					id="confirmStart" type="button">회원 탈퇴</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
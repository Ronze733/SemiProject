<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 재생성</title>
<link href="css/bj/signupPage.css" rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="js/bj/pwRecovery2.js" defer="defer"></script>
</head>
<body>

	<div class="signup-container">
		<div class="input-form-backgroud row">
			<div class="signup-input-form col-md-12 mx-auto">
					<div class="mb-3">
						<label for="email">이메일</label> <input name="email" type="email"
							class="form-control" id="email" placeholder="이메일을 입력해주세요"
							onFocus="changePlaceholder(this, 'example@gmail.com');"
							onBlur="restorePlaceholder(this, '이메일을 입력해주세요');"
							value="${sessionScope.account.user_id }" required disabled>
						<div class="invalid-feedback">이메일을 입력해주세요.</div>
					</div>
				<h4 class="mb-3">새 비밀번호 생성</h4>
				<form class="validation-form" action="AccountUpdateC2" method="post">
					<div class="mb-3">
						<label for="password">새 비밀번호</label> <input name="password"
							type="password" class="form-control" id="password"
							placeholder="비밀번호를 입력해주세요"
							onFocus="changePlaceholder(this, '숫자포함, 4~18자');"
							onBlur="restorePlaceholder(this, '비밀번호를 입력해주세요');" required>
					</div>
					<div class="mb-3">
						<label for="password-confirm">비밀번호 확인</label> <input
							name="passwordConfirm" type="password" class="form-control"
							id="password-confirm" placeholder="위에 비밀번호를 다시 입력해주세요" required>
					</div>
					<hr class="mb-4">
					<div class="mb-4"></div>
					<button class="btn btn-primary btn-lg btn-block" type="submit">등록</button>
				</form>
			</div>
		</div>
	</div>
</body>

</html>
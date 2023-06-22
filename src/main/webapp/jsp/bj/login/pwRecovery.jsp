<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 화면 샘플</title>
<link href="../../../css/bj/signupPage.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="../../../js/bj/pwRecovery.js"
	defer="defer"></script>
</head>
<body>

	<div class="signup-container">
		<div class="input-form-backgroud row">
			<div class="signup-input-form col-md-12 mx-auto">
				<h4 class="mb-3">본인인증</h4>
				<form>
					<div class="mb-3">
						<label for="email">이메일</label> <input name="email" type="email"
							class="form-control" id="email-check" placeholder="이메일을 입력해주세요"
							onFocus="changePlaceholder(this, 'example@gmail.com');"
							onBlur="restorePlaceholder(this, '이메일을 입력해주세요');" required>
						<div class="invalid-feedback">이메일을 입력해주세요.</div>
					</div>
					<div class="mb-4">
						<div class="custom-control custom-checkbox">
							<input type="checkbox" class="custom-control-input"
								id="duplicate-check" required> <label
								class="custom-control-label" for="duplicate-check">이메일
								등록 여부 확인</label>
						</div>
					</div>
					<div class="mb-3">
						<label for="question">비밀번호 찾기 질문</label> <select name="question"
							class="custom-select d-block w-100" id="question" required>
							<option value="birthPlace">출생지는 어디인가요?</option>
							<option value="favoriteAnimal">가장 좋아하는 동물은 무엇인가요?</option>
							<option value="favoriteMovie">가장 좋아하는 영화는 무엇인가요?</option>
							<option value="firstSchool">첫 번째 학교 이름은 무엇인가요?</option>
							<option value="bestPlace">가장 기억에 남는 여행지는 어디인가요?</option>
						</select>
					</div>
					<div class="mb-3">
						<label for="answer">답</label> <input name="answer" type="text"
							class="form-control" id="answer"
							placeholder="비밀번호를 잊어버렸을 때 질문의 답"
							onFocus="changePlaceholder(this, '최대 12자, 띄어쓰기 대소문자 확인');"
							onBlur="restorePlaceholder(this, '비밀번호를 잊어버렸을 때 질문의 답');"
							required>
					</div>
					<hr class="mb-4">
					<div class="mb-4"></div>
					<button class="btn btn-primary btn-lg btn-block" type="submit">본인
						인증</button>
				</form>
			</div>
		</div>
	</div>
</body>

</html>
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="js/bj/signupPage.js" defer="defer"></script>
</head>
<body>

	<div class="signup-container" style="background-image: url('css/bj/images/bg_1.jpg');">
		<div class="input-form-backgroud row">
			<div class="signup-input-form col-md-12 mx-auto">
				<h4 class="mb-3">회원가입</h4>
				<form class="validation-form" action="AccountRegC" method="post">
					<div class="row">
						<div class="col md-6 mb-3">
							<label for="nickname">닉네임</label> <input name="nickname"
								type="text" class="form-control" id="nickname" placeholder="닉네임"
								onFocus="changePlaceholder(this, 'ex)바다가고싶다');"
								onBlur="restorePlaceholder(this, '닉네임');" value="" required>
							<div class="invalid-feedback">별명을 입력해주세요.</div>
						</div>
						<div class="col-md-6 mb-3">
							<label for="gender">성별</label> <select name="gender"
								class="custom-select d-block w-100" id="gender" required>
								<option>남자</option>
								<option>여자</option>
							</select>
							<div class="invalid-feedback">성별을 선택해주세요.</div>
						</div>
					</div>
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
								중복 검사</label>
						</div>
					</div>

					<div class="mb-3">
						<label for="password">비밀번호</label> <input name="password"
							type="password" class="form-control" id="password"
							placeholder="숫자, 영어, 특수문자 포함, 8~16자"
							onFocus="changePlaceholder(this, '비밀번호를 입력해주세요');"
							onBlur="restorePlaceholder(this, '숫자, 영어, 특수문자 포함, 8~16자');" required>
					</div>
					<div class="mb-3">
						<label for="password-confirm">비밀번호 확인</label> <input
							name="passwordConfirm" type="password" class="form-control"
							id="password-confirm" placeholder="위에 비밀번호를 다시 입력해주세요" required>
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
							onFocus="changePlaceholder(this, '최대 12자');"
							onBlur="restorePlaceholder(this, '비밀번호를 잊어버렸을 때 질문의 답');"
							required>
					</div>
					<hr class="mb-4">
					<div class="custom-control custom-checkbox">
						<input type="checkbox" class="custom-control-input" id="aggrement"
							required> <label class="custom-control-label"
							for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
					</div>
					<div class="mb-4"></div>
					<button class="btn btn-primary btn-lg btn-block" type="submit">가입
						완료</button>
					<button class="btn btn-primary btn-lg btn-block"
						onclick="location.href='HC'" type="button">메인 페이지</button>
				</form>
			</div>
		</div>
	</div>
</body>

</html>
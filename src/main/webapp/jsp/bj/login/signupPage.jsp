<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 화면 샘플</title>
<link href="css/bj/signupPage.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/bj/signupPage.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<div class="signup-container">
		<div class="input-form-backgroud row">
			<div class="signup-input-form col-md-12 mx-auto">
				<h4 class="mb-3">회원가입</h4>
				<form class="validation-form" action="AccountRegC" method="post" enctype="multipart/form-data">
					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="name">이름</label> <input type="text"
								class="form-control" id="name" placeholder="이름"
								onFocus="changePlaceholder(this, '홍길동');"
								onBlur="restorePlaceholder(this, '이름');" value="" required>
							<div class="invalid-feedback">이름을 입력해주세요.</div>
						</div>
						<div class="col-md-6 mb-3">
							<label for="nickname">닉네임</label> <input type="text"
								class="form-control" id="nickname" placeholder="닉네임"
								onFocus="changePlaceholder(this, 'ex)바다가고싶다');"
								onBlur="restorePlaceholder(this, '닉네임');" value="" required>
							<div class="invalid-feedback">별명을 입력해주세요.</div>
						</div>
					</div>

					<div class="mb-3">
						<label for="email">이메일</label> <input type="email"
							class="form-control" id="email" placeholder="이메일을 입력해주세요"
							onFocus="changePlaceholder(this, 'example@gmail.com');"
							onBlur="restorePlaceholder(this, '이메일을 입력해주세요');" required>
						<div class="invalid-feedback">이메일을 입력해주세요.</div>
					</div>

					<div class="mb-3">
						<label for="password">비밀번호</label> <input type="password"
							class="form-control" id="password" placeholder="비밀번호를 입력해주세요"
							onFocus="changePlaceholder(this, '숫자포함, 4~18자');"
							onBlur="restorePlaceholder(this, '비밀번호를 입력해주세요');" required>
					</div>
					<div class="mb-3">
						<label for="password-confirm">비밀번호 확인</label> <input type="password"
							class="form-control" id="password-confirm"
							placeholder="위에 비밀번호를 다시 입력해주세요" required>
					</div>
					<div class="row">
						<div class="col-md-8 mb-3">
							<label for="gender">성별</label> <select
								class="custom-select d-block w-100" id="gender" required>
								<option value="gender"></option>
								<option>남자</option>
								<option>여자</option>
							</select>
							<div class="invalid-feedback">성별을 선택해주세요.</div>
						</div>
						<div class="col-md-4 mb-3">
							<label for="code">추천인 코드</label> <input type="text"
								class="form-control" id="code" placeholder="필수 x">
							<div class="invalid-feedback">추천인 코드를 입력해주세요.</div>
						</div>
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
				</form>
			</div>
		</div>
	</div>
</body>
</html>
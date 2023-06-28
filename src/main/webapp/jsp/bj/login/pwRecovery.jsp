<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<link href="../../../css/bj/loginPage.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="../../../js/bj/pwRecovery.js"
	defer="defer"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<style>
	label {
		text-align: left;
		font-weight: bold;
		display: block;
		color: white;
	}
</style>

</head>
<body>
	<div class="bg-img"
		style="background-image: url('../../../img/bj/main-img2.jpg');">
		<div class="content">
			<header>본인 인증</header>
			<form>
				<div class="field">
					<span class="fa fa-user"></span> <input name="email" type="email"
						class="form-control" id="email-check" placeholder="이메일"
						onFocus="changePlaceholder(this, 'example@gmail.com');"
						onBlur="restorePlaceholder(this, '이메일을 입력해주세요');" required>
					<div class="invalid-feedback">이메일을 입력해주세요.</div>
				</div>
				<br>
				<div class="custom-control custom-checkbox">
					<input type="checkbox" class="custom-control-input"
						id="duplicate-check" required> <label
						class="custom-control-label" for="duplicate-check"
						style="font-weight: bold; text-align: left;">이메일 등록 여부 확인</label>
				</div>
				<div class="question">
					<select name="question" class="custom-select d-block w-100"
						id="question" required>
						<option value="birthPlace">출생지는 어디인가요?</option>
						<option value="favoriteAnimal">가장 좋아하는 동물은 무엇인가요?</option>
						<option value="favoriteMovie">가장 좋아하는 영화는 무엇인가요?</option>
						<option value="firstSchool">첫 번째 학교 이름은 무엇인가요?</option>
						<option value="bestPlace">가장 기억에 남는 여행지는 어디인가요?</option>
					</select>
				</div>
				<label for="answer">비밀번호 찾기 답</label>
				<div class="field">
					<input name="answer" type="text" class="form-control" id="answer"
						placeholder="비밀번호 찾기 질문의 답"
						onFocus="changePlaceholder(this, '최대 12자, 띄어쓰기 대소문자 확인');"
						onBlur="restorePlaceholder(this, '비밀번호 찾기 질문의 답');" required>
				</div>
				<br>
				<div class="field">
					<input type="submit" value="본인 인증">
				</div>
			</form>
		</div>
	</div>

</body>

</html>
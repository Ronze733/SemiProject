<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 재생성</title>
<link href="../../../css/bj/loginPage.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="../../../js/bj/pwUpdate.js"
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
			<header>새 비밀번호 생성</header>
			<form>
				<div class="mb-3">
					<label for="email">이메일</label> <input name="email" type="email"
						class="form-control" id="email" placeholder="이메일을 입력해주세요"
						onFocus="changePlaceholder(this, 'example@gmail.com');"
						onBlur="restorePlaceholder(this, '이메일을 입력해주세요');"
						value="${sessionScope.account.user_id }" required disabled>
					<div class="invalid-feedback">이메일을 입력해주세요.</div>
				</div>
				<div class="mb-3">
					<label for="password">새 비밀번호</label> <input name="password"
						type="password" class="form-control" id="password"
						placeholder="숫자, 영어, 특수문자 포함, 8~16자"
						onFocus="changePlaceholder(this, '비밀번호를 입력해주세요');"
						onBlur="restorePlaceholder(this, '숫자, 영어, 특수문자 포함, 8~16자');"
						required>
				</div>
				<div class="mb-3">
					<label for="password-confirm">비밀번호 확인</label> <input
						name="passwordConfirm" type="password" class="form-control"
						id="password-confirm" placeholder="위에 비밀번호를 다시 입력해주세요" required>
				</div>
				<br>
				<div class="field">
					<input type="submit" value="새 비밀번호 생성">
				</div>
			</form>
		</div>
	</div>
</body>

</html>
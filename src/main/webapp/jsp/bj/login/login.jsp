<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<link href="css/bj/login.css" rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="js/bj/login.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body class="text-center">
	<main class="form-signin w-100 m-auto">
		<form>
			<img class="mb-8" src="./img/jy/SKTC.png" alt="" width="150"
				height="118" onclick="location.href='HC'">
			<h1 class="h3 mb-3 fw-normal">Please sign in</h1>

			<div class="form-floating">
				<input name="email" type="email" class="form-control"
					id="floatingInput" placeholder="이메일"
					onFocus="changePlaceholder(this, 'name@example.com');"
					onBlur="restorePlaceholder(this, '이메일');">
			</div>
			<div class="form-floating">
				<input name="password" type="password" class="form-control"
					id="floatingPassword" placeholder="비밀번호">
			</div>

			<div class="signup mb-3">
				<a href="javascript:void(0);" onclick="openPopup();">비밀번호를
					잊어버리셨나요?</a>
			</div>
			<button class="w-100 btn btn-lg btn-primary" type="submit">로그인</button>
			<p class="mt-5 mb-3 text-muted">© 2023~</p>
		</form>
	</main>
</body>
</html>
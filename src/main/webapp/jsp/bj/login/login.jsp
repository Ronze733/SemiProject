<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<link rel="icon" type="image/png" href="./img/jy/sktc-favicon.png" />
<title>로그인</title>
<link href="css/bj/loginPage.css" rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
	<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script type="text/javascript" src="js/bj/login.js"></script>
</head>
<body>
	<div class="bg-img" style="background-image: url('img/bj/main-img2.jpg');">
		<div class="content">
			<header>Login</header>
			<form>
				<div class="field">
					<span class="fa fa-user"></span> <input name="email" type="email"
						class="form-control" id="floatingInput" placeholder="이메일"
						onFocus="changePlaceholder(this, 'name@example.com');"
						onBlur="restorePlaceholder(this, '이메일');">
				</div>
				<div class="field space">
					<span class="fa fa-lock"></span> <input name="password"
						type="password" class="form-control" id="floatingPassword"
						placeholder="비밀번호"> <span class="show">SHOW</span>
				</div>
				<div class="signup">
					<br> <a href="javascript:void(0);" onclick="openPopup();">비밀번호를
						잊어버리셨나요?</a>
				</div>
				<br>
				<div class="field">
					<input type="submit" value="로그인">
				</div>
			</form>
			<div class="signup">
				아직 회원이 아니신가요? <a href="AccountRegC">회원가입</a>
			</div>
		</div>
	</div>
	<script>
		const pass_field = document.querySelector('.pass-key');
		const showBtn = document.querySelector('.show');
		showBtn.addEventListener('click', function() {
			if (pass_field.type === "password") {
				pass_field.type = "text";
				showBtn.textContent = "HIDE";
				showBtn.style.color = "#3498db";
			} else {
				pass_field.type = "password";
				showBtn.textContent = "SHOW";
				showBtn.style.color = "#222";
			}
		});
	</script>
</body>
</html>
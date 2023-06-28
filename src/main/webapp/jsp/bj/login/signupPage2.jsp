<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="./img/jy/sktc-favicon.png" />
<title>회원가입</title>
<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
	rel="stylesheet" />
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet" />
<!-- MDB -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.0/mdb.min.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="js/bj/signupPage.js" defer="defer"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
</head>
<body style="background-image: url('img/bj/main-img2.jpg');">
	<section class="vh-100">
		<div class="container h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-lg-12 col-xl-11">
					<div class="card text-black" style="border-radius: 25px;">
						<div class="card-body p-md-5">
							<div class="row justify-content-center">
								<div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

									<p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">회원가입</p>

									<form class="mx-1 mx-md-4" action="AccountRegC" method="post">

										<div class="d-flex flex-row align-items-center mb-4">
											<i class="fas fa-user fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<input name="nickname" type="text" class="form-control"
													id="nickname" placeholder="닉네임"
													onFocus="changePlaceholder(this, 'ex)바다가고싶다');"
													onBlur="restorePlaceholder(this, '닉네임');" value="" required>
												<label class="form-label" for="nickname">닉네임</label>
											</div>
											<div class="col-md-6 mb-3">
												<select name="gender"
													class="custom-select custom-select-small d-block"
													id="gender" required>
													<option disabled selected>성별</option>
													<option>남자</option>
													<option>여자</option>
												</select>
												<div class="invalid-feedback">성별을 선택해주세요.</div>
											</div>
										</div>

										<div class="d-flex flex-row align-items-center mb-4">
											<i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<input name="email" type="email" class="form-control"
													id="email-check" placeholder="이메일을 입력해주세요"
													onFocus="changePlaceholder(this, 'example@gmail.com');"
													onBlur="restorePlaceholder(this, '이메일을 입력해주세요');" required>
												<div class="invalid-feedback">이메일을 입력해주세요.</div>
												<label class="form-label" for="email-check">이메일</label>
											</div>
										</div>


										<div class="d-flex flex-row align-items-center mb-4">
											<i class="fas fa-lock fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<input name="password" type="password" class="form-control"
													id="password" placeholder="숫자, 영어, 특수문자 포함, 8~16자"
													onFocus="changePlaceholder(this, '숫자, 영어, 특수문자 포함, 8~16자');"
													onBlur="restorePlaceholder(this, '숫자, 영어, 특수문자 포함, 8~16자');"
													required> <label class="form-label"
													for="form3Example4c">비밀번호</label>
											</div>
										</div>

										<div class="d-flex flex-row align-items-center mb-4">
											<i class="fas fa-key fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<input name="passwordConfirm" type="password"
													class="form-control" id="password-confirm"
													placeholder="위에 비밀번호를 다시 입력해주세요" required> <label
													class="form-label" for="form3Example4cd">비밀번호 재입력</label>
											</div>
										</div>
										<div class="mb-3">
											<label for="question">비밀번호 찾기 질문</label> <select
												name="question" class="custom-select d-block w-100"
												id="question" required>
												<option value="birthPlace">출생지는 어디인가요?</option>
												<option value="favoriteAnimal">가장 좋아하는 동물은 무엇인가요?</option>
												<option value="favoriteMovie">가장 좋아하는 영화는 무엇인가요?</option>
												<option value="firstSchool">첫 번째 학교 이름은 무엇인가요?</option>
												<option value="bestPlace">가장 기억에 남는 여행지는 어디인가요?</option>
											</select>
										</div>
										<div class="mb-3">
											<label for="answer">답</label> <input name="answer"
												type="text" class="form-control" id="answer"
												placeholder="비밀번호를 잊어버렸을 때 질문의 답"
												onFocus="changePlaceholder(this, '최대 12자');"
												onBlur="restorePlaceholder(this, '비밀번호를 잊어버렸을 때 질문의 답');"
												required>
										</div>
										<div class="mb-4">
											<div class="custom-control custom-checkbox">
												<input type="checkbox" class="custom-control-input"
													id="duplicate-check" required> <label
													class="custom-control-label" for="duplicate-check">이메일
													중복 검사</label>
											</div>
										</div>
										<div class="custom-control custom-checkbox">
											<input type="checkbox" class="custom-control-input"
												id="aggrement" required> <label
												class="custom-control-label" for="aggrement">개인정보 수집
												및 이용에 동의합니다.</label>
										</div>
										<br>

										<div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
											<button type="submit" class="btn btn-primary btn-lg">회원등록</button>
										</div>

									</form>

								</div>
								<div
									class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

									<img src="img/jy/SKTC.png" class="img-fluid" alt="Sample image">

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- MDB -->
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.0/mdb.min.js"></script>
</html>
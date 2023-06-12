<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="AccountRegC" method="post" enctype="multipart/form-data">

        		<div class="login-container-reg">
			<div class="items">
				<div class="item1">닉네임</div>
				<div class="item2">
					<input name="name" type="text" class="textInput"
					placeholder="닉네임" 
					onFocus="changePlaceholder(this, 'ex)바다가고싶다');"
					onBlur="restorePlaceholder(this, '닉네임');">
				</div>
			</div>
			
			<div class="items">
				<div class="item1">아이디</div>
				<div class="item2">
					<input name="id" type="text" class="textInput" 
					placeholder="이메일을 입력해주세요"
					onFocus="changePlaceholder(this, 'example@naver.com');"
					onBlur="restorePlaceholder(this, '이메일을 입력해주세요');">
				</div>
			</div>
			
			<div class="items">
				<div class="item1">비밀번호</div>
				<div class="item2">
					<input name="id" type="password" class="textInput" 
					placeholder="비밀번호"
					onFocus="changePlaceholder(this, '대문자와 숫자를 포함해주세요');"
					onBlur="restorePlaceholder(this, '비밀번호');">
				</div>
			</div>
			
			<div class="items">
				<div class="item1">PW</div>
				<div class="item2">
					<input name="pw" class="textInput" placeholder="비밀번호" >
				</div>
			</div>
			
			<div class="items">
				<div class="item1">PW confirm</div>
				<div class="item2">
					<input name="pw2" placeholder="비밀번호 확인" class="textInput">
				</div>
			</div>
			<div class="items">
				<div class="item1">Gender</div>
				<div class="item2">
				<label>	<input type="radio" name="gender" value="남" checked="checked"> 남자</label>
				<label>		<input type="radio" name="gender" value="여"> 여자</label>	
				</div>
			</div>
			
			<div class="items">
				<div class="item1">User Birth</div>
				<div class="item2">
					<input name="birth" placeholder="생년월일" class="textInput">
				</div>
			</div>

			<div class="items item3">
				<div class="button">
					<button>sign up</button>
				</div>
			</div>
		</div>
	</form>
</body>
</html>
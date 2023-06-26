<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- MDB icon -->
<link rel="icon" href="img/mdb-favicon.ico" type="image/x-icon" />
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
<!-- Google Fonts Roboto -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" />
<!-- MDB -->
<link rel="stylesheet" href="css/bj/SKTCMain/mdb.min.css" />
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Arizonia&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="css/bj/SKTCMain/animate.css">

<link rel="stylesheet" href="css/bj/SKTCMain/owl.carousel.min.css">
<link rel="stylesheet" href="css/bj/SKTCMain/owl.theme.default.min.css">
<link rel="stylesheet" href="css/bj/SKTCMain/magnific-popup.css">

<link rel="stylesheet" href="css/bj/SKTCMain/bootstrap-datepicker.css">
<link rel="stylesheet" href="css/bj/SKTCMain/jquery.timepicker.css">


<link rel="stylesheet" href="css/bj/SKTCMain/flaticon.css">
<link rel="stylesheet" href="css/bj/SKTCMain/style.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
</head>
<li class="nav-item dropdown"><a
	class="nav-link dropdown-toggle text-white" href="#"
	id="navbarDropdown" role="button" data-mdb-toggle="dropdown"
	aria-expanded="false"> <i class="fas fa-user mx-1"></i>
		${sessionScope.account.user_name }
</a> <!-- Dropdown menu -->
	<ul class="dropdown-menu dropdown-menu-end"
		aria-labelledby="navbarDropdown">
		<li><a class="dropdown-item" href="AccountDetailC">계정 정보</a></li>

		<li><a class="dropdown-item" href="LoginC">로그아웃</a></li>
	</ul></li>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYo2RpRf5/6R6K+vTj0Xn2qcGy2q3Uinay4lOyMO6O"
	crossorigin="anonymous"></script>
</body>
</html>
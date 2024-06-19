<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>홈페이지</title>
<link rel="stylesheet" href="css/homepage.css">
<link rel="stylesheet" href="css/login.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

	<%@include file="/WEB-INF/views/menu/header.jsp"%>
	
	<main class="container">
		<div class="login-wrapper">
			<h2>Login</h2>
			<form action="./login.do" method="post" class="login-form">
				<input type="text" name="user_id" placeholder="ID 입력">
				<input type="password" name="password" placeholder="PASSWORD 입력">
<!-- 				<label for="remember-check"> -->
<!-- 					<input type="checkbox" id="remember-check"> 아이디 저장하기 -->
<!-- 				</label> -->
				<input type="submit" value="Login">
			</form>
		</div>
	</main>
	
	<%@include file="/WEB-INF/views/menu/footer.jsp" %>

</body>
<script src="js/home.js"></script>
</html>
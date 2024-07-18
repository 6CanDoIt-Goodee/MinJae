<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 성공</title>
<link href='../../resources/css/user/create_success.css'
	rel="stylesheet" type="text/css">
</head>
<body>
	<section class="main_header">
		<header>
			<div id="header_div">
				<a href="#" class="main_logo" style="margin-left: 100px;">Knock Book</a>
			</div>
		</header>
		<main>
			<div style="font-size: 40px;">환영합니다</div>
			<div style="font-size: 40px;">회원가입이 완료되었습니다.</div>
			<div style="font-size: 20px;">로그인 후 모든 서비스를 이용할 수 있습니다.</div>
		</main>
		<footer>
			<a href="/views/user/login.jsp"> 
			<input class="btn" type="button" value="로그인" style="margin-right: 20px;">
			</a> 
			<a href="/"> 
			<input class="btn" type="button" value="홈으로" style="margin-left: 20px;">
			</a>
		</footer>
	</section>
</body>
</html>
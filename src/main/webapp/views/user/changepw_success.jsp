<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 변경 성공</title>
<link href='../../resources/css/user/changepw_success.css'
	rel="stylesheet" type="text/css">
</head>
<body>
	<section class="main_header">
        <header>
            <div id="header_div">
                <a href="/" class="main_logo" style="margin-left: 100px;">Knock Book</a>
            </div>
        </header>
        <main>
        <div style="font-size: 40px;">변경이 완료되었습니다.</div>
        <div style="font-size: 40px;">로그인을 진행해 주세요.</div>
        </main>
        <footer>
            <input class="btn" type="button" value="로그인" style="margin-right: 20px;"onclick="location.href='/user/login'">
            <input class="btn" type="button" value="홈으로" style="margin-left: 20px;"onclick="location.href='/'">
        </footer>
    </section> 
</body>
</html>
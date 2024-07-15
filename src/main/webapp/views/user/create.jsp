<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link href="../../resources/css/user/create.css" rel="stylesheet">
</head>
<body>
	<header>
            <nav id="header_nav">
                <a href="#" id="main_logo">회원 가입</a>
            </nav>
        </header>

        <main>
             <section id="right">
            <div id="main_div">
                <form name="create_account_form" action="/user/createEnd" method="post">
                    <label for="name">이름</label>
                    <input type="text" name="name" style="width: 500px;"><br>
                    <label for="id">아이디</label>
                    <input type="text" name="id" style="width: 500px;"><br>
                    <label for="pw">비밀번호</label>
                    <input type="password" name="pw" style="width: 500px;"><br>
                    <label for="chpw">비밀번호 확인</label>
                    <input type="password" name="chpw" style="width: 500px;"><br>
                    <label for="email_prefix">이메일</label>
                    <input type="text" name="email_prefix" style="width: 210px;"> @ 
                    <input type="text" name="email_domain" style="width: 200px;">
                    <select id="email_select" name="email_select">
                        <option value="0">직접입력</option>
                        <option value="1">네이버</option>
                        <option value="2">다음</option>
                        <option value="3">네이트</option>
                    </select>
                    <button type="button">인증번호 받기</button><br>
                    <input type="text" id="email_number" maxlength="6" placeholder="인증 코드 6자리를 입력해주세요." style="width: 500px; margin-left: 125px;">
                    <button type="button">인증번호 확인</button><br>
                    <label for="nickname">닉네임</label>
                    <input type="text" name="nickname" style="width: 500px;">
                    <button type="button">닉네임 랜덤 생성</button><br>
                
                    <button type="button" style="width: 100px; margin-left: 265px;" onclick="submit_button();">확인</button>
                    <button type="button" style="width: 100px; margin-left: 50px;">취소</button>
                   
                </form>
                    
            </div>
        </section>
    </main>

    <script>
        function submit_button() {
            const form = document.create_account_form;
            if (!form.id.value) {
                alert("아이디를 입력하세요.");
                form.id.focus();
            } else if (!form.pw.value) {
                alert("비밀번호를 입력하세요.");
                form.pw.focus();
            } else if (!form.chpw.value) {
                alert("비밀번호 확인을 입력하세요.");
                form.chpw.focus();
            } else if (form.pw.value !== form.chpw.value) {
                alert("비밀번호가 일치하는지 확인해주세요.");
                form.pw.focus();
            } else if (!form.name.value) {
                alert("이름을 입력하세요.");
                form.name.focus();
            } else if (!form.email_prefix.value || !form.email_domain.value) {
                alert("이메일을 입력하세요.");
                form.email_prefix.focus();
            } else if (!form.nickname.value) {
                alert("닉네임을 입력하세요.");
                form.nickname.focus();
            } else {
                form.submit();
            }
        }
    </script>
</body>
</html>
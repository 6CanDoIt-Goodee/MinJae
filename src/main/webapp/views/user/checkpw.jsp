<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.book.member.user.vo.User" %>
<!DOCTYPE html>
<html> 
<head>
<meta charset="UTF-8">
<title>정보수정/비밀번호 확인</title>
<link href='../../resources/css/user/checkpw.css' rel="stylesheet" type="text/css">

</head>
<body>
    <div class="container">
        <form name="checkpw_form" action="/user/checkpwEnd" method="post">
            <div class="text-center">
                <span style="font-size: 30px;">회원 정보 수정시, 개인 정보 보호를 위해</span><br>
                <span style="font-size: 30px;">본인확인을 진행합니다.</span><br>
                <input type="password" placeholder="비밀번호를 입력해 주세요" name="pw" style="margin-top: 20px; padding: 10px; font-size: 16px; border: 1px solid #ccc; border-radius: 5px; width: 80%; max-width: 400px;">
            </div>
            <div class="button-group">
                <button type="button" class="btn" onclick="checkpw();">확인</button>
                <button type="button" class="btn btn-secondary"onclick="location.href='/'">취소</button>
            </div>
        </form>
    </div>
    
    <script type="text/javascript">
		function checkpw() {
			let form = document.checkpw_form;
			if (form.pw.value == '') {
				alert('비밀번호를 입력하세요.');
				form.pw.focus();	
			} else {
				form.submit();
			}
		}
	</script>
</body>
</html>
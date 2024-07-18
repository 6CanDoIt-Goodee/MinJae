<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.book.member.user.vo.User" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html> 
<head>
<meta charset="UTF-8">
<title>아이디 목록</title>
<link href='../../resources/css/user/findid_success.css' rel="stylesheet" type="text/css">
</head>
<body>
	 <div class="container">
        <nav id="header_nav">
            <a href="#" id="main_logo">Knock Book</a>
        </nav>
        <div class="text-center" >
            <h2>아이디 찾기</h2>
            <hr>
            <p>고객님의 정보와 일치하는 아이디 목록입니다.</p>
            <br><br>
        </div>
        <div class="input-group" >
        
            <ol>
 		       <%
                    List<User> users = (List<User>)session.getAttribute("user");  
                    for (User user : users) {
                %>
                        <li>
                            <%= user.getUser_id() %>  
                        </li>
                <%
                    }
                %>
            </ol>
        </div>
        <div class="button-group">
            <button type="button" class="btn">다음</button>
            <button type="button" class="btn btn-secondary">취소</button>
        </div>
    </div>
</body>
</html>
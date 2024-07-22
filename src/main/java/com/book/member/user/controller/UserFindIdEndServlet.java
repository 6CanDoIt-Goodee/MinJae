package com.book.member.user.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.book.member.user.dao.UserDao;
import com.book.member.user.vo.User;

@WebServlet("/user/findidend")
public class UserFindIdEndServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/user/findid.jsp");
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        System.out.println(name);
        System.out.println(email);
        // 세션에서 인증 코드 가져오기
        HttpSession session = request.getSession();
        String sessionCode = (String) session.getAttribute("verificationCode");
        String inputCode = request.getParameter("email_number");
        response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer = response.getWriter();

        if (sessionCode != null && sessionCode.equals(inputCode)) {
            List<User> user = new UserDao().findid(name,email);
            
            if (user != null && !user.isEmpty()) {
            	session.setAttribute("user", user);
            	response.sendRedirect("/views/user/findid_success.jsp");
            } else {
            	writer.println("<script>alert('이름 또는 이메일이 잘못 되었습니다.                                         아이디와 이메일을 정확히 입력해 주세요.');location.href='/views/user/findid.jsp';</script>");
    	        writer.flush(); 
    	        return;
            }
        } else {
        	writer.println("<script>alert('이름 또는 이메일이 잘못 되었습니다.                                        아이디와 이메일을 정확히 입력해 주세요.');location.href='/views/user/findpw.jsp';</script>");
	        writer.flush(); 
	        return;
        }
    }
}
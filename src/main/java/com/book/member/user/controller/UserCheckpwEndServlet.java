package com.book.member.user.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.book.member.user.dao.UserDao;
import com.book.member.user.vo.User;

@WebServlet(name="userCheckpwEnd",urlPatterns="/user/checkpwEnd")
public class UserCheckpwEndServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public UserCheckpwEndServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 로그인 -> 비밀번호 확인(사용자 입력 == 회원가입)
		// 회원가입 비밀번호 암호화 == 사용자 입력 암호화
		String pw = request.getParameter("pw");
		
		User u = new UserDao().checkpw(pw);
		HttpSession session = request.getSession(false);
		User sessionUser = (User) session.getAttribute("user");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer = response.getWriter();
		
		if(u != null && sessionUser.getUser_pw().equals(pw)) {
			if(session.isNew() || session.getAttribute("user")==null) {
				session.setAttribute("user", u);
				session.setMaxInactiveInterval(60*30);
			}
			response.sendRedirect("/views/user/edit.jsp");
		}else {
			writer.println("<script>alert('비밀번호가 틀립니다. 다시 입력해주세요.');location.href='/views/user/checkpw.jsp';</script>");
	        writer.flush(); 
	        return;
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}

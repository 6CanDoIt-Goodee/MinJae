package com.gn.common.user.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gn.common.user.dao.UserDao;
import com.gn.common.user.vo.User;



@WebServlet(name="usercreateEnd",urlPatterns="/user/createEnd")
public class UserCreateEndServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public UserCreateEndServlet() {
        super();
    }

	
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String name =request.getParameter("name");
    	String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String emailPrefix = request.getParameter("email_prefix");
        String emailDomain = request.getParameter("email_domain");
		String email = emailPrefix + "@" + emailDomain;
		String nickname = request.getParameter("nickname");
		
		User u = new User();
		u.setUser_name(name);
		u.setUser_id(id);
		u.setUser_pw(pw);
		u.setUser_email(email);
		u.setUser_nickname(nickname);
		
		System.out.println(name);
        System.out.println(id);
        System.out.println(pw);
        System.out.println(email);
        System.out.println(nickname);
        
		int result = new UserDao().createUser(u);
		if(result >0) {
			System.out.println("성공");
		}else {
			System.out.println("실패");
		}
		
		
//		RequestDispatcher view = request.getRequestDispatcher("/views/user/create_success.jsp");
//		if(result > 0) {
//			view = request.getRequestDispatcher("/views/user/create_success.jsp");
//		}
//		view.forward(request, response);
////		if(result >0) System.out.println("성공");
////		else System.out.println("실패");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
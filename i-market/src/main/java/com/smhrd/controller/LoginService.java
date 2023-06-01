package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;
import com.smhrd.model.user.t_userinfoDAO;
import com.smhrd.model.user.t_userinfoDTO;

public class LoginService implements Command{

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");

		t_userinfoDTO user = new t_userinfoDTO(user_id, user_pw);
		t_userinfoDAO dao = new t_userinfoDAO();
		t_userinfoDTO loginUser = dao.selectUser(user);

		if (loginUser != null) {
			// 2-1. 회원이 존재할 경우 세션 영역에 저장하고 main.jsp로 이동
			System.out.println("로그인 성공");
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", loginUser);
			session.setAttribute("user_id", user_id);
			
		} else {
			System.out.println("로그인실패");
		}
		
		return "main.jsp";
	}
}

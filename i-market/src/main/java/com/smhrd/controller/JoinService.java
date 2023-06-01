package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;
import com.smhrd.model.user.t_userinfoDAO;
import com.smhrd.model.user.t_userinfoDTO;

public class JoinService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// [회원가입기능]
		// 1. 입력받은 회원정보(이메일, 비밀번호, 전화번호, 주소) 가져오기

		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		String user_nick = request.getParameter("user_nick");
		String user_phone = request.getParameter("user_phone");
		String user_addr = request.getParameter("user_addr");

		// 2. 가져온 정보를 데이터베이스에 저장하기
		// * WebMemberDAO 객체 활용
		// * WebMemberMapper.xmldp <insert> 태그 정의

		t_userinfoDTO dto = new t_userinfoDTO(user_id, user_pw, user_nick, user_phone, user_addr);
		t_userinfoDAO dao = new t_userinfoDAO();
		int cnt = dao.insertUser(dto);

		String moveURL = null;
		// 3.저장완료 시, joinSuccess.jsp로 이동하기
		// 저장실패 시, main.jsp로 이동하기
		// * mavensample 참고

		if (cnt > 0) {
			HttpSession session = request.getSession();
			session.setAttribute("user_id", user_id);
			moveURL = "joinSuccess.jsp";
		} else {
			moveURL = "main.jsp";
		}
		return moveURL;
	}
}

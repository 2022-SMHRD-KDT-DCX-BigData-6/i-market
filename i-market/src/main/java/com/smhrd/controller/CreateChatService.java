package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;
import com.smhrd.model.chat.t_chatroominfoDAO;
import com.smhrd.model.chat.t_chatroominfoDTO;

public class CreateChatService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String user_id = (String)session.getAttribute("user_id");
		String croom_title = (String)session.getAttribute("croom_title");
		String croom_content = (String)session.getAttribute("croom_content");
		String to_id = "222";
		System.out.println(croom_title);
		
		t_chatroominfoDTO dto = new t_chatroominfoDTO(croom_title, croom_content, user_id, to_id);
		t_chatroominfoDAO dao = new t_chatroominfoDAO();
		int cnt = dao.createChat(dto);

		String moveURL = null;
		

		if (cnt > 0) {
			session.setAttribute("user_id", user_id);
			session.setAttribute("croom_title", croom_title);
			session.setAttribute("croom_content", croom_content);
			session.setAttribute("to_id", to_id);
		} else {
		}
		session.setAttribute("chatroom", dto);
		int croom_idx = (int)session.getAttribute("chatroom");
		moveURL = "Chat02.jsp?croom_idx="+croom_idx;
		return moveURL;
	}

}

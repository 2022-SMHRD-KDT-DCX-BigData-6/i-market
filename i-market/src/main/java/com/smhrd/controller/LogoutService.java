package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;

public class LogoutService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse responce) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "main.jsp";
	}

}

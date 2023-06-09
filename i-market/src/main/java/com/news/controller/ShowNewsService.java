package com.news.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.news.NewsInfoDAO;
import com.smhrd.model.news.NewsInfoDTO;


public class ShowNewsService extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		NewsInfoDAO dao = new NewsInfoDAO();
		ArrayList<NewsInfoDTO> news_list = (ArrayList<NewsInfoDTO>) dao.showNews();
		request.setAttribute("news_list", news_list);
		
		System.out.println(news_list);
		
		RequestDispatcher rd = request.getRequestDispatcher("news.jsp");
		rd.forward(request, response);
		
	}

}

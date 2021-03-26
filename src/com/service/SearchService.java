package com.service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.FrontCommand;
import com.model.Main_filterDAO;
import com.model.Main_filterDTO;

public class SearchService implements FrontCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");
		String search = request.getParameter("search");		
		
		
		Main_filterDAO dao = new Main_filterDAO();
		ArrayList<Main_filterDTO> searchlist = dao.search(search);
		
		if(searchlist != null) {
			System.out.println("검색 성공");
			
			HttpSession session = request.getSession();
			session.setAttribute("aptinfo", searchlist);
			System.out.println(session.getAttribute("aptinfo").getClass().getName());
			
		}
		else {
			System.out.println("검색 실패");
		}
		
		response.sendRedirect("index.jsp");
	}

}

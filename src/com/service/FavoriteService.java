package com.service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.FrontCommand;
import com.model.FavoriteDAO;
import com.model.MemberDTO;

public class FavoriteService implements FrontCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		response.setCharacterEncoding("EUC-KR");
		
		String num = request.getParameter("maemae_insert");
		String select = request.getParameter("select");
		MemberDTO info = (MemberDTO)session.getAttribute("info");
		System.out.print(info.getId());
		
		FavoriteDAO dao = new FavoriteDAO();
		dao.insert(select, num, info.getId());
		
		
		response.sendRedirect("index_main.jsp");
	}

}

package com.service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.FrontCommand;
import com.model.FavoriteDAO;
import com.model.Main_filterDTO;
import com.model.MemberDTO;

public class FavoriteService2 implements FrontCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		response.setCharacterEncoding("EUC-KR");

		String select = request.getParameter("select");

		System.out.println("select: "+select);

		MemberDTO info = (MemberDTO) session.getAttribute("info");
		System.out.print("id : " + info.getId());

		FavoriteDAO dao = new FavoriteDAO();
		ArrayList<String> sel = dao.sel(select, info.getId());

		ArrayList<Main_filterDTO> list = dao.list(select, sel);

		session.setAttribute("list", list);

		response.sendRedirect("favorite.jsp");

	}
}

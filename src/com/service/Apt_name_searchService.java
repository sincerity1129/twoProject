package com.service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.FrontCommand;
import com.model.Apt_name_searchDAO;
import com.model.Apt_name_searchDTO;
import com.model.Main_filterDAO;
import com.model.Main_filterDTO;

public class Apt_name_searchService implements FrontCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");
		String search = request.getParameter("search");		
		String apt_name = request.getParameter("apt_name");		
		
		Apt_name_searchDAO dao = new Apt_name_searchDAO();
		Apt_name_searchDTO dto = new Apt_name_searchDTO(search, apt_name);
		ArrayList<Main_filterDTO> AptSearchList = dao.search(dto);
		
		if(AptSearchList != null) {
			System.out.println("검색 성공");
			HttpSession session = request.getSession();
			session.setAttribute("AptSearchList",AptSearchList);
		}
		else {
			System.out.println("검색 실패");
		}
		response.sendRedirect("index.jsp");	
	}

}

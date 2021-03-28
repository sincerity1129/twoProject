package com.service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.FrontCommand;
import com.model.Main_filterDTO;
import com.model.Mat_search_DAO;

public class MatSearchService implements FrontCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");
		
		String mat_search = request.getParameter("mat_search");	
		String mat_select = request.getParameter("mat_select");
		
			
			System.out.println("mat_select = "+mat_select);
			System.out.println("mat_search = "+mat_search);
	
			Mat_search_DAO dao = new Mat_search_DAO();
			
			ArrayList<Main_filterDTO> MatSearchList = dao.search2(mat_search);
			
			HttpSession session = request.getSession();
			session.setAttribute("mat_search",MatSearchList);
			
			HttpSession session2 = request.getSession();
			session2.setAttribute("mat_select",mat_select);

			response.sendRedirect("index.jsp");	
		
	}
}

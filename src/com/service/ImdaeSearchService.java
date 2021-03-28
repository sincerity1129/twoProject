package com.service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.FrontCommand;
import com.model.Mat_search_DAO;

public class MatSearchService implements FrontCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");
		
		String imdae_search = request.getParameter("mat_search");	
		
		
			
			System.out.println("imdae_search = "+imdae_search);
	
			ImdaeSearchDAO dao = new Mat_search_DAO();
			
			ArrayList<ImdaeSearchDTO> MatSearchList = dao.search2(imdae_search);
			
			HttpSession session = request.getSession();
			session.setAttribute("mat_search",MatSearchList);
			
			HttpSession session2 = request.getSession();
			session2.setAttribute("mat_select",mat_select);

			response.sendRedirect("index.jsp");	
		
	}
}

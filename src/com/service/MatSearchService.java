package com.service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.FrontCommand;
import com.model.FacilityDTO;
import com.model.LibDTO;
import com.model.Main_filterDTO;
import com.model.Mat_search_DAO;
import com.model.ParkDTO;
import com.model.SchoolDTO;

public class MatSearchService implements FrontCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("EUC-KR");
		
		String mat_search = request.getParameter("mat_search");	
		String mat_select = request.getParameter("mat_select");
		
			
			
			System.out.println("mat_select = "+mat_select);
			System.out.println("mat_search = "+mat_search);
	
			Mat_search_DAO dao = new Mat_search_DAO();
			
			HttpSession session = request.getSession();
			
			ArrayList<Main_filterDTO> MatSearchList = dao.search2(mat_search);
			ArrayList<SchoolDTO> SchoolList = dao.schSearch(mat_search);
			ArrayList<ParkDTO> ParkList = dao.parkSearch(mat_search);
			ArrayList<FacilityDTO> FacList = dao.facSearch(mat_search);
			ArrayList<LibDTO> LibList = dao.libSearch(mat_search);
			
			if(mat_select.equals("school")) {
			session.setAttribute("mat_search",SchoolList);
			}
			else if(mat_select.equals("fac")) {
				session.setAttribute("mat_search",FacList);
			}
			else if(mat_select.equals("park")) {
				session.setAttribute("mat_search",ParkList);
			}
			else if(mat_select.equals("lib")) {
				session.setAttribute("mat_search",LibList);
			}
			else{
				session.setAttribute("mat_search",MatSearchList);
			}
			
			
			HttpSession session2 = request.getSession();
			session2.setAttribute("mat_select",mat_select);

			response.sendRedirect("index_mat.jsp");	
		
	}
}

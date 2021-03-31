package com.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.FrontCommand;
import com.model.MemberDAO;

public class CheckService implements FrontCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		MemberDAO dao = new MemberDAO();
		
		boolean check = dao.check(id);
		
		response.sendRedirect("join.jsp");
	}

}

package com.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.FrontCommand;
import com.model.MemberDAO;
import com.model.MemberDTO;

public class JoinService implements FrontCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.setCharacterEncoding("EUC-KR");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");

		MemberDTO dto = new MemberDTO(id,pw,name);
		MemberDAO dao = new MemberDAO();
		
		int cnt = dao.join(dto);
		
		if(cnt>0) {
			System.out.println("회원가입 성공");
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			response.sendRedirect("ex01.jsp");
		}
		else {
			System.out.println("회원가입 실패");
		}

	}

}

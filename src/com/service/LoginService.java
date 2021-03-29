package com.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.FrontCommand;
import com.model.MemberDAO;
import com.model.MemberDTO;

public class LoginService implements FrontCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		MemberDTO dto = new MemberDTO(id,pw);
		MemberDAO dao = new MemberDAO();
		MemberDTO loginDTO = dao.login(dto);
		
		if(loginDTO != null) {
			System.out.println("로그인 성공");
			
			HttpSession session = request.getSession();
			session.setAttribute("info", loginDTO);
		}
		else {
			System.out.println("로그인 실패");
		}
		
		response.sendRedirect("index_main.jsp");
	}

}

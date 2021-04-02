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
		
		HttpSession session = request.getSession();
		request.setCharacterEncoding("EUC-KR");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String birth = request.getParameter("birth");
		String addr = request.getParameter("addr");

		MemberDTO dto = new MemberDTO(id,pw,name,tel,birth,addr);
		MemberDAO dao = new MemberDAO();
		int cnt = dao.join(dto);
		
		session.setAttribute("check", id);
		response.sendRedirect("join.jsp");
		
		if(cnt>0) {
			System.out.println("ȸ������ ����");

			session.setAttribute("id", id);
		}
		else {
			System.out.println("ȸ������ ����");
			
		}
		response.sendRedirect("index_main.jsp");

	}

}

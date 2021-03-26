package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class MemberDAO {

	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	ResultSet rs = null;
	MemberDTO loginDto = null;
	MemberDTO info = null;
	ArrayList<MemberDTO> list = null;

	public void conn() { // DB 연결

	
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
			
			
			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "hr";
			String db_pw = "hr";

			conn = DriverManager.getConnection(db_url, db_id, db_pw);
	} catch (Exception e) {
		e.printStackTrace();
	}

	}

	public void close() { // DB 연결 해제

		try {
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
public int  join(MemberDTO dto) { //회원가입
		
		conn();
		try {
			String sql = "insert into budong_member values (?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			psmt.setString(3, dto.getName());
			cnt = psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("확인2");
		}finally {
			close();
		}
		
		return cnt;
	}

public MemberDTO login(MemberDTO dto) { //로그인
	conn();
	
	try {
		String sql = "select * from budong_member where id = ? and pw = ?";
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, dto.getId());
		psmt.setString(2, dto.getPw());
		rs = psmt.executeQuery();
		
		if(rs.next()) {
			String id = rs.getString(1);
			String pw = rs.getString(2);
			String name = rs.getString(3);
			loginDto = new MemberDTO(id, pw, name);
			
		}
		
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		close();
	}
	
	return loginDto;
	
}

public int update(MemberDTO dto) { //정보수정
	
	conn();
	try {
		String sql = "update budong_member set pw = ?, name = ? where id = ?";
		
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, dto.getPw());
		psmt.setString(2, dto.getName());
		psmt.setString(3, dto.getId());
		cnt = psmt.executeUpdate();
		
	} catch (SQLException e) {
		e.printStackTrace();
	}
	
	close();
	
	return cnt;
}



}

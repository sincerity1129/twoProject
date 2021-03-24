package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberDAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;
	
	MemberDTO loginDTO = null; // 로그인 정보 담길 DTO
	
	public void conn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "hr";
			String db_pw = "hr";
			conn = DriverManager.getConnection(db_url, db_id, db_pw);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public void close() {
		try {
			if(rs != null) {
				rs.close();
			}
			if(psmt != null) {
				psmt.close();
			}
			if(conn != null) {
				conn.close();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int join(MemberDTO dto) {
		conn();
		try {
			String sql = "INSERT INTO (회원테이블) VALUES(?, ?, ?, ?, ?)";
			// id, pw, name, tel 차후 수정
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			psmt.setString(3, dto.getName());
			psmt.setString(4, dto.getTel());
			psmt.setString(5, dto.getAddr());
			
			cnt = psmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return cnt;
	}
	
	public MemberDTO login(MemberDTO dto) {
		conn();
		try {
			String sql = "SELECT * FROM (회원테이블) WHERE id = ? AND pw = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				String id = rs.getString("id");
				String pw = rs.getString("pw");
				String name = rs.getString("name");
				String tel = rs.getString("tel");
				String addr = rs.getString("addr");
				
				loginDTO = new MemberDTO(id, pw, name, tel, addr);
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return loginDTO;
	}
	
	public int update(MemberDTO dto) {
		conn();
		try {
			String sql = "UPDATE (회원테이블) SET pw = ?, name = ?, tel = ?, addr = ? WHERE id = ?";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getPw());
			psmt.setString(2, dto.getName());
			psmt.setString(3, dto.getTel());
			psmt.setString(4, dto.getAddr());
			psmt.setString(5, dto.getId());
			cnt = psmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return cnt;
	}
	
	
}

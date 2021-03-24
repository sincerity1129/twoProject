package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ContractDAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;
	
	ContractDTO info = null;
	ArrayList<ContractDTO> list = null;
	
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
	
	//매물 추가
	public int join(ContractDTO cDto) {
		conn();
		try {
			String sql = "INSERT INTO (매물테이블) VALUES(?, ?, ?, ?)";
			// id, pw, name, tel 차후 수정
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, cDto.getApt());
			psmt.setString(2, cDto.getGu());
			psmt.setString(3, cDto.getDong());
			psmt.setString(4, cDto.getPrice());
			
			cnt = psmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return cnt;
	}
	
	//매물 리스트? 기본 검색?
	public ArrayList<ContractDTO> select_default() {
		list = new ArrayList<ContractDTO>();
		conn();
		
		try {
			
			String sql = "SELECT apt, gu, dong, price FROM (매물테이블)";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				String apt = rs.getString("apt");
				String gu = rs.getString("gu");
				String dong = rs.getString("dong");
				String price = rs.getString("price");
				
				info = new ContractDTO(apt, gu, dong);
				list.add(info);
				
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return list;
		
	}
	
}

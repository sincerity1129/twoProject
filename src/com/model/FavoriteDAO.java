package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class FavoriteDAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	ResultSet rs = null;
	Main_filterDTO dto = null;
	ArrayList<Main_filterDTO> favorite_list = null;
	String sql = null;

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
	
public int  insert(String type, String obj, String id) { //즐겨찾기 추가
		
		conn();
		try {
			if(type.equals("maemae")) {
			sql = "insert into MY_maemae values (?,?)";
			}
			else if(type.equals("rent")) {
				sql = "insert into MY_rent values (?,?)";
			}
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, obj);
			psmt.setString(2, id);
			
			cnt = psmt.executeUpdate();
			
			if(cnt!=0) {
				System.out.println("추가 성공");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return cnt;
	}

}

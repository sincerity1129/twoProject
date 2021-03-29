package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Mat_search_DAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	int cnt = 0;
	ResultSet rs = null;
	Main_filterDTO dto = null;
	ArrayList<Main_filterDTO> mat_list = null;
	
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
/*
public ArrayList<Main_filterDTO> search(String input,String search) {
	
	mat_list = new ArrayList<Main_filterDTO>(); // 기본 필터 검색
	
	conn();
	
	System.out.println(input);
	
	try {
		if(search.equals("crime")) {
			String sql = "select crime,maemae_num,dong,price,build_year,apt_name,year,month,day,"
					+ "apt_size,floor,charge,starbucks,subway,movie from maemae where dong = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, input);
		}
		else if(search.equals("charge")) {
			String sql = "select charge,maemae_num,dong,price,build_year,apt_name,year,month,day,"
					+ "apt_size,floor,crime,starbucks,subway,movie from maemae where dong = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, input);
		}
		else if(search.equals("subway")) {
			String sql = "select subway,maemae_num,dong,price,build_year,apt_name,year,month,day,"
					+ "apt_size,floor,crime,charge,starbucks,movie from maemae where dong = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, input);
		}
		else if(search.equals("coffee")) {
			String sql = "select starbucks,maemae_num,dong,price,build_year,apt_name,year,month,day,"
					+ "apt_size,floor,crime,charge,subway,movie from maemae where dong = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, input);
		}
		else if(search.equals("movie")) {
			String sql = "select movie,maemae_num,dong,price,build_year,apt_name,year,month,day,"
					+ "apt_size,floor,crime,charge,starbucks,subway from maemae where dong = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, input);
		}
		rs = psmt.executeQuery();
		
		System.out.println("re.next = "+rs.next());
		
		while(rs.next()) {
			
			int rent_num = rs.getInt(1);
			String dong = rs.getString(2);
			int build_year = rs.getInt(3);
			String deposit= rs.getString(4);
			String loyer= rs.getString(5);
			String apt_name= rs.getString(6);
			int year = rs.getInt(7);
			int month = rs.getInt(8);
			int day = rs.getInt(9);
			int apt_size = rs.getInt(10);
			int floor = rs.getInt(11);
			int crime = rs.getInt(12);
			int charge = rs.getInt(13);
			int starbucks = rs.getInt(14);
			
			
			
			dto = new Main_filterDTO();
			mat_list.add(dto);
			
		}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return mat_list;
}
*/
public ArrayList<Main_filterDTO> search2(String input) {
	
	mat_list = new ArrayList<Main_filterDTO>(); // 기본 필터 검색
	
	conn();
	
	
	try {
		String sql = "select * from maemae where dong like ";	
		psmt = conn.prepareStatement(sql+"\'%"+input+"%\'");
		rs = psmt.executeQuery();

		System.out.println("re.next = " + rs.next());

		while (rs.next()) {

			int rent_num = rs.getInt(1);
			String dong = rs.getString(2);
			String price = rs.getString(3);
			int build_year = rs.getInt(4);
			String apt_name = rs.getString(5);
			int year = rs.getInt(6);
			int month = rs.getInt(7);
			int day = rs.getInt(8);
			int apt_size = rs.getInt(9);
			int floor = rs.getInt(10);
			int crime = rs.getInt(11);
			int charge = rs.getInt(12);
			int starbucks = rs.getInt(13);
			String subway = rs.getString(14);
			String movie = rs.getString(15);
			
			
			
			dto = new Main_filterDTO(rent_num,dong,price,build_year,apt_name,year,month,day,apt_size,floor,crime,charge,starbucks,subway,movie);
			mat_list.add(dto);
			
		}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return mat_list;
}

}

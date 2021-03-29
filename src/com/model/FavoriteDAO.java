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
	ArrayList<String> sel_list = null;
	String num = null;

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

	public int insert(String type, String obj, String id) { // 즐겨찾기 추가

		conn();
		try {
			if (type.equals("maemae")) {
				sql = "insert into MY_maemae values (?,?)";
			} else if (type.equals("rent")) {
				sql = "insert into MY_rent values (?,?)";
			}
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, obj);
			psmt.setString(2, id);

			cnt = psmt.executeUpdate();

			if (cnt != 0) {
				System.out.println("추가 성공");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return cnt;
	}

	public ArrayList<String> sel(String type, String input) {

		sel_list = new ArrayList<String>();
		
		conn();
		
		System.out.println("type : "+type);
		System.out.println("input : "+input);
		

		try {
			if (type.equals("maemae")) {
				sql = "select * from my_maemae where  MAEMAE_MEM_ID = ?";
			} else if (type.equals("rent")) {
				sql = "select * from my_rent where  MAEMAE_MEM_ID = ?";
			}
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, input);
			rs = psmt.executeQuery();

			System.out.println("rs.next = " + rs.next());

			while (rs.next()) {
				num = rs.getString("1");
				sel_list.add(num);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		System.out.println(sel_list.get(1));

		return sel_list;
	}



	public ArrayList<Main_filterDTO> list(String type, ArrayList<String> sel_list) {

		favorite_list = new ArrayList<Main_filterDTO>(); // 기본 필터 검색

		conn();

		try {
			if (type.equals("maemae")) {
				for (int i = 0; i < sel_list.size(); i++) {

					sql = "select * from a_maemae where maemae_num = ?";
					psmt = conn.prepareStatement(sql);
					psmt.setString(1, sel_list.get(i));

					rs = psmt.executeQuery();

					int maemae_num = rs.getInt(1);
					String dong = rs.getString(2);
					String price = rs.getString(3);
					int build_year = rs.getInt(4);
					String apt_name = rs.getString(5);
					int year = rs.getInt(6);
					int month = rs.getInt(7);
					int day = rs.getInt(8);
					int apt_size = rs.getInt(9);
					int floor = rs.getInt(10);

					dto = Main_filterDTO(maemae_num, dong, price, build_year, apt_name, year, month, day, apt_size,
							floor);

					while (rs.next()) {
						favorite_list.add(dto);
					}

				}
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return favorite_list;
	}

	private Main_filterDTO Main_filterDTO(int maemae_num, String dong, String price, int build_year, String apt_name,
			int year, int month, int day, int apt_size, int floor) {
		// TODO Auto-generated method stub
		return null;
	}

}

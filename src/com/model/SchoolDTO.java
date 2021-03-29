package com.model;

public class SchoolDTO {
	
	private String school_name;
	private String scool_addr;
	private String dong;
	private String apt_name;
	private String price;
	private int build_year;
	private int year;
	private int month;
	private int day;
	private int apt_size;
	private int floor;
	
	
	public SchoolDTO(String school_name, String scool_addr, String dong, String apt_name, String price, int build_year,
			int year, int month, int day, int apt_size, int floor) {
		super();
		this.school_name = school_name;
		this.scool_addr = scool_addr;
		this.dong = dong;
		this.apt_name = apt_name;
		this.price = price;
		this.build_year = build_year;
		this.year = year;
		this.month = month;
		this.day = day;
		this.apt_size = apt_size;
		this.floor = floor;
	}
	

	public SchoolDTO(String school_name, String scool_addr, String dong) {
		super();
		this.school_name = school_name;
		this.scool_addr = scool_addr;
		this.dong = dong;
	}
	
	public String getDong() {
		return dong;
	}
	public void setDong(String dong) {
		this.dong = dong;
	}
	public String getSchool_name() {
		return school_name;
	}
	public void setSchool_name(String school_name) {
		this.school_name = school_name;
	}
	public String getScool_addr() {
		return scool_addr;
	}
	public void setScool_addr(String scool_addr) {
		this.scool_addr = scool_addr;
	}
	
	

}

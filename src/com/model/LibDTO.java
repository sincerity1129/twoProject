package com.model;

public class LibDTO {
	
	private String dong;
	private String lib_name;
	private String close;
	private String apt_name;
	private String price;
	private int build_year;
	private int year;
	private int month;
	private int day;
	private int apt_size;
	private int floor;
	
	
	
	
	public LibDTO(String dong, String lib_name, String close, String apt_name, String price, int build_year, int year,
			int month, int day, int apt_size, int floor) {
		super();
		this.dong = dong;
		this.lib_name = lib_name;
		this.close = close;
		this.apt_name = apt_name;
		this.price = price;
		this.build_year = build_year;
		this.year = year;
		this.month = month;
		this.day = day;
		this.apt_size = apt_size;
		this.floor = floor;
	}


	public LibDTO(String dong, String lib_name, String close) {
		super();
		this.dong = dong;
		this.lib_name = lib_name;
		this.close = close;
	}
	
	
	public String getDong() {
		return dong;
	}
	public void setDong(String dong) {
		this.dong = dong;
	}
	public String getLib_name() {
		return lib_name;
	}
	public void setLib_name(String lib_name) {
		this.lib_name = lib_name;
	}
	public String getClose() {
		return close;
	}
	public void setClose(String close) {
		this.close = close;
	}
	
	
	

}

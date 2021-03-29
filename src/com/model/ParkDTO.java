package com.model;

public class ParkDTO {
	private String dong;
	private String park_div;
	private String park_size;
	private String apt_name;
	private String price;
	private int build_year;
	private int year;
	private int month;
	private int day;
	private int apt_size;
	private int floor;
	
	
	
	
	
	
	public ParkDTO(String dong, String park_div, String park_size, String apt_name, String price, int build_year,int year,
			int month, int day, int apt_size, int floor) {
		super();
		this.dong = dong;
		this.park_div = park_div;
		this.park_size = park_size;
		this.apt_name = apt_name;
		this.price = price;
		this.build_year = build_year;
		this.year = year;
		this.month = month;
		this.day = day;
		this.apt_size = apt_size;
		this.floor = floor;
	}


	public ParkDTO(String dong, String park_div, String park_size) {
		super();
		this.dong = dong;
		this.park_div = park_div;
		this.park_size = park_size;
	}
	
	
	public String getDong() {
		return dong;
	}
	public void setDong(String dong) {
		this.dong = dong;
	}
	public String getPark_div() {
		return park_div;
	}
	public void setPark_div(String park_div) {
		this.park_div = park_div;
	}
	public String getPark_size() {
		return park_size;
	}
	public void setPark_size(String park_size) {
		this.park_size = park_size;
	}
	
	

}

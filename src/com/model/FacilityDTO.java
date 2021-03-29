package com.model;

public class FacilityDTO {
	
	private String dong;
	private String apt_name;
	private String facility;
	private String price;
	private int build_year;
	private int year;
	private int month;
	private int day;
	private int apt_size;
	private int floor;
	
	
	
	
	
	
	
	public FacilityDTO(String dong, String apt_name, String facility, String price, int build_year, int year, int month,
			int day, int apt_size, int floor) {
		super();
		this.dong = dong;
		this.apt_name = apt_name;
		this.facility = facility;
		this.price = price;
		this.build_year = build_year;
		this.year = year;
		this.month = month;
		this.day = day;
		this.apt_size = apt_size;
		this.floor = floor;
	}
	public FacilityDTO(String dong, String apt_name, String facility) {
		super();
		this.dong = dong;
		this.apt_name = apt_name;
		this.facility = facility;
	}
	public String getDong() {
		return dong;
	}
	public void setDong(String dong) {
		this.dong = dong;
	}
	public String getApt_name() {
		return apt_name;
	}
	public void setApt_name(String apt_name) {
		this.apt_name = apt_name;
	}
	public String getFacility() {
		return facility;
	}
	public void setFacility(String facility) {
		this.facility = facility;
	}
	
	
	

}

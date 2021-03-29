package com.model;

public class FavoriteDTO {
	private String id;
	private String type;
	private String num;
	
	
	public FavoriteDTO(String id, String type, String num) {	
		this.id = id;
		this.type = type;
		this.num = num;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getType() {
		return type;
	}


	public void setType(String type) {
		this.type = type;
	}


	public String getNum() {
		return num;
	}


	public void setNum(String num) {
		this.num = num;
	}
	
}

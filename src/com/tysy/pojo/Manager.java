package com.tysy.pojo;

public class Manager {
	private String username;
	private String password;
	private Integer level;
	public Manager() {
		super();
	}
	
	public Manager(String username, String password, Integer level) {
		super();
		this.username = username;
		this.password = password;
		this.level = level;
	}

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getLevel() {
		return level;
	}

	public void setLevel(Integer level) {
		this.level = level;
	}
	
}

package com.tysy.pojo;


public class Member extends Page{
	private Integer id;
	private String name;
	private String birth;
	private String sex;
	private String graschool;
	private String username;
	private String password;
	private Integer level;
	public Member() {
		
	}

	public Member(String name, String birth, String sex, String graschool, String username, String password,
			Integer level) {
		super();
		this.name = name;
		this.birth = birth;
		this.sex = sex;
		this.graschool = graschool;
		this.username = username;
		this.password = password;
		this.level = level;
	}


	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getBirth() {
		return birth;
	}


	public void setBirth(String birth) {
		this.birth = birth;
	}


	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getGraschool() {
		return graschool;
	}
	public void setGraschool(String graschool) {
		this.graschool = graschool;
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

	@Override
	public String toString() {
		return "Member [id=" + id + ", name=" + name + ", birth=" + birth + ", sex=" + sex + ", graschool=" + graschool
				+ ", username=" + username + ", password=" + password + ", level=" + level + "]";
	}

	
}

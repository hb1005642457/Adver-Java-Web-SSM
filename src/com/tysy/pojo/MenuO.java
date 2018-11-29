package com.tysy.pojo;

public class MenuO {
	private Integer id;
	private String name;
	public MenuO(Integer id, String name) {
		super();
		this.id = id;
		this.name = name;
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
	@Override
	public String toString() {
		return "MenuO [id=" + id + ", name=" + name + "]";
	}
	
}

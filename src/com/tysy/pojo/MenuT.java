package com.tysy.pojo;

public class MenuT {
	private Integer id;
	private String name;
	private Integer Oid;
	public MenuT(Integer id, String name, Integer oid) {
		super();
		this.id = id;
		this.name = name;
		Oid = oid;
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
	public Integer getOid() {
		return Oid;
	}
	public void setOid(Integer oid) {
		Oid = oid;
	}
	@Override
	public String toString() {
		return "MenuT [id=" + id + ", name=" + name + ", Oid=" + Oid + "]";
	}
	
}

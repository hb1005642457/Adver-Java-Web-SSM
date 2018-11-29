package com.tysy.pojo;

public class ComState {
	private Company com;
	private Integer state;
	public ComState() {
		super();
	}
	public ComState(Company com, Integer state) {
		super();
		this.com = com;
		this.state = state;
	}
	public Company getCom() {
		return com;
	}
	public void setCom(Company com) {
		this.com = com;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	
}

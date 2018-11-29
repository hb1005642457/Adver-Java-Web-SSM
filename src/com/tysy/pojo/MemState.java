package com.tysy.pojo;

public class MemState {
	private Member mem;
	private Integer state;
	public MemState() {
		super();
	}
	
	public MemState(Member mem, Integer state) {
		super();
		this.mem = mem;
		this.state = state;
	}

	public Member getMem() {
		return mem;
	}
	public void setMem(Member mem) {
		this.mem = mem;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}

	
}

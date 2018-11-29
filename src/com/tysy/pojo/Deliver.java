package com.tysy.pojo;

public class Deliver {
	private Integer memberid;
	private Integer companyid;
	private Integer state;
	public Deliver() {
		super();
	}
	public Deliver(Integer memberid, Integer companyid, Integer state) {
		super();
		this.memberid = memberid;
		this.companyid = companyid;
		this.state = state;
	}
	public Integer getMemberid() {
		return memberid;
	}
	public void setMemberid(Integer memberid) {
		this.memberid = memberid;
	}
	public Integer getCompanyid() {
		return companyid;
	}
	public void setCompanyid(Integer companyid) {
		this.companyid = companyid;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "Deliver [memberid=" + memberid + ", companyid=" + companyid + ", state=" + state + "]";
	}
	
}

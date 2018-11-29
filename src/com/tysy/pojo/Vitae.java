package com.tysy.pojo;

public class Vitae {
	private Integer id;
	private String name;
	private String country;
	private String professional;
	private String address;
	private String jiguan;
	private String record;
	private String tel;
	private String email;
	private String edu1;
	private String edu2;
	private String jobback;
	private String self;
	private Integer memid;
	public Vitae() {
		super();
	}
	

	public Vitae(String name, String country, String professional, String address, String jiguan,
			String record, String tel, String email, String edu1, String edu2, String jobback,
		 String self, Integer memid) {
		super();
		this.name = name;
		this.country = country;
		this.professional = professional;
		this.address = address;
		this.jiguan = jiguan;
		this.record = record;
		this.tel = tel;
		this.email = email;
		this.edu1 = edu1;
		this.edu2 = edu2;
		this.jobback = jobback;
		this.self = self;
		this.memid = memid;
	}


	public String getJiguan() {
		return jiguan;
	}

	public void setJiguan(String jiguan) {
		this.jiguan = jiguan;
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
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getProfessional() {
		return professional;
	}
	public void setProfessional(String professional) {
		this.professional = professional;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getRecord() {
		return record;
	}
	public void setRecord(String record) {
		this.record = record;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getEdu1() {
		return edu1;
	}
	public void setEdu1(String edu1) {
		this.edu1 = edu1;
	}
	public String getEdu2() {
		return edu2;
	}
	public void setEdu2(String edu2) {
		this.edu2 = edu2;
	}
	public String getJobback() {
		return jobback;
	}
	public void setJobback(String jobback) {
		this.jobback = jobback;
	}
	public String getSelf() {
		return self;
	}
	public void setSelf(String self) {
		this.self = self;
	}
	public Integer getMemid() {
		return memid;
	}
	public void setMemid(Integer memid) {
		this.memid = memid;
	}


	@Override
	public String toString() {
		return "Vitae [id=" + id + ", name=" + name + ", country=" + country + ", professional=" + professional
				+ ", address=" + address + ", jiguan=" + jiguan + ", record=" + record + ", tel=" + tel + ", email="
				+ email + ", edu1=" + edu1 + ", edu2=" + edu2 + ", jobback=" + jobback + ", self=" + self + ", memid="
				+ memid + "]";
	}


	
}

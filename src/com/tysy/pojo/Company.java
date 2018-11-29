package com.tysy.pojo;

public class Company extends Page{
	private Integer id;
	private String cname;
	private String address;
	private String tel;
	private String job;
	private String boss;
	private String message;
	private String username;
	private String password;
	private Integer level;
	private String jobdescribe;
	private String moneycondition;
	private String weal;
	public Company() {
		super();
	}

	public Company( String cname, String address, String tel, String job, String boss, String message,
			String username, String password, Integer level, String jobdescribe, String moneycondition, String weal) {
		super();
		
		this.cname = cname;
		this.address = address;
		this.tel = tel;
		this.job = job;
		this.boss = boss;
		this.message = message;
		this.username = username;
		this.password = password;
		this.level = level;
		this.jobdescribe = jobdescribe;
		this.moneycondition = moneycondition;
		this.weal = weal;
	}


	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getTel() {
		return tel;
	}


	public void setTel(String tel) {
		this.tel = tel;
	}


	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getBoss() {
		return boss;
	}
	public void setBoss(String boss) {
		this.boss = boss;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
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


	public String getJobdescribe() {
		return jobdescribe;
	}


	public void setJobdescribe(String jobdescribe) {
		this.jobdescribe = jobdescribe;
	}


	public String getMoneycondition() {
		return moneycondition;
	}


	public void setMoneycondition(String moneycondition) {
		this.moneycondition = moneycondition;
	}


	public String getWeal() {
		return weal;
	}


	public void setWeal(String weal) {
		this.weal = weal;
	}


	@Override
	public String toString() {
		return "Company [id=" + id + ", cname=" + cname + ", address=" + address + ", tel=" + tel + ", job=" + job
				+ ", boss=" + boss + ", message=" + message + ", username=" + username + ", password=" + password
				+ ", level=" + level + ", jobdescribe=" + jobdescribe + ", moneycondition=" + moneycondition + ", weal="
				+ weal + "]";
	}


	
}
